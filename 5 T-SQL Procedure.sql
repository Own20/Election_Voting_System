-- BONUS TASK : Write a T-SQL stored procedure – distributePreferences(), to implement the
-- preference redistribution stage of the counting process. This stored procedure requires election code
-- and electoral division name as inputs.
-- It will extract relevant Computerised Ballot Papers for the chosen election and electoral division and will
-- go through the redistribution passes until a winner is chosen. At the end of each redistribution pass, it
-- will update Election Results table with preference votes received by each candidate at the completion of
-- the pass. The eliminated candidates’ tally can be denoted by a 0.


-- ====================================================================================
-- SQL Queries - Procedure Advanced
-- Description: DDL script to retrieve and manipulate data for intended report
-- ====================================================================================

-- Iteratively eliminates the lowest candidate and redistributes preferences until an absolute majority is reached.

CREATE PROCEDURE dbo.distributePreferences (
    @ElectionEventID BIGINT,
    @DivisionName VARCHAR(100)
)
AS
BEGIN
    SET NOCOUNT ON;

    -- 1. Variables to track the loop state
    DECLARE @CurrentRound INT = 1;
    DECLARE @TotalValidVotes INT;
    DECLARE @WinningThreshold INT;
    DECLARE @WinnerID INT = NULL;
    DECLARE @EliminatedCandidateID INT;

    -- 2. Validate Inputs
    IF NOT EXISTS (
        SELECT 1 FROM ElectionEvent 
        WHERE ElectionEventID = @ElectionEventID AND DivisionName = @DivisionName
    )
    BEGIN
        RAISERROR('Validation Failed: Election Code and Division Name do not match.', 16, 1);
        RETURN;
    END

    -- 3. Calculate Absolute Majority (> 50%)
    -- Based on the formal votes counted in Round 1
    SELECT @TotalValidVotes = SUM(PreferenceTally)
    FROM PreferenceTallyPerRoundPerCandidate
    WHERE ElectionEventID = @ElectionEventID AND RoundNo = 1;

    SET @WinningThreshold = (@TotalValidVotes / 2) + 1;

    -- Create a temporary table to track who has been eliminated across loops
    CREATE TABLE #EliminatedCandidates (CandidateID INT);

    -- THE COUNTING LOOP: Continues until a winner is found
    WHILE @WinnerID IS NULL
    BEGIN

        -- STEP A: Check if someone has reached the Absolute Majority in the current round
        SELECT TOP 1 @WinnerID = CandidateID
        FROM PreferenceTallyPerRoundPerCandidate
        WHERE ElectionEventID = @ElectionEventID 
          AND RoundNo = @CurrentRound
          AND PreferenceTally >= @WinningThreshold
          AND CandidateID NOT IN (SELECT CandidateID FROM #EliminatedCandidates)
        ORDER BY PreferenceTally DESC;

        -- If a winner is found, exit the loop!
        IF @WinnerID IS NOT NULL
            BREAK;

        -- STEP B: No winner. Find the active candidate with the fewest votes to eliminate
        SELECT TOP 1 @EliminatedCandidateID = CandidateID
        FROM PreferenceTallyPerRoundPerCandidate
        WHERE ElectionEventID = @ElectionEventID 
          AND RoundNo = @CurrentRound
          AND CandidateID NOT IN (SELECT CandidateID FROM #EliminatedCandidates)
        ORDER BY PreferenceTally ASC;

        -- Add the loser to the eliminated list
        INSERT INTO #EliminatedCandidates (CandidateID) VALUES (@EliminatedCandidateID);

        -- STEP C: Prepare for the next round
        DECLARE @NextRound INT = @CurrentRound + 1;

        -- Log the ongoing round status
        INSERT INTO PrefCountRound (ElectionEventID, RoundNo, EliminatedCandidateID, CountStatus)
        VALUES (@ElectionEventID, @NextRound, @EliminatedCandidateID, 'Ongoing');

        -- STEP D: Distribute Preferences and Calculate New Tallies
        -- Using a CTE and ROW_NUMBER to rank preferences ONLY among STILL ACTIVE candidates
        WITH ActiveBallotPreferences AS (
            SELECT 
                BP.BallotID, 
                BP.CandidateID,
                ROW_NUMBER() OVER(PARTITION BY BP.BallotID ORDER BY BP.Preference ASC) as ActiveRank
            FROM Ballot B
            JOIN BallotPreferences BP ON B.BallotID = BP.BallotID
            WHERE B.ElectionEventID = @ElectionEventID
              AND BP.CandidateID NOT IN (SELECT CandidateID FROM #EliminatedCandidates)
        )

        -- Insert the recalculated tallies into the next round
        INSERT INTO PreferenceTallyPerRoundPerCandidate (ElectionEventID, RoundNo, CandidateID, PreferenceTally)
        SELECT 
            @ElectionEventID, 
            @NextRound, 
            C.CandidateID, 
            ISNULL(V.Votes, 0) -- Denotes eliminated candidates' tally as 0
        FROM Contests C
        LEFT JOIN (

            -- Count ballots where this candidate is currently the #1 ACTIVE preference
            SELECT CandidateID, COUNT(BallotID) as Votes
            FROM ActiveBallotPreferences
            WHERE ActiveRank = 1
            GROUP BY CandidateID
        ) V ON C.CandidateID = V.CandidateID
        WHERE C.ElectionEventID = @ElectionEventID;

        -- Move to the next round for the next loop iteration
        SET @CurrentRound = @NextRound;
    END

    -- POST-LOOP WRAP UP
    
    -- Clean up temp table
    DROP TABLE #EliminatedCandidates;

    -- Update final round status to 'Winner Declared'
    UPDATE PrefCountRound
    SET CountStatus = 'Winner Declared'
    WHERE ElectionEventID = @ElectionEventID AND RoundNo = @CurrentRound;

    -- Update the main ElectionEvent table with the final result
    UPDATE ElectionEvent
    SET Two_Candidate_PrefWinnerCandidateID = @WinnerID,
        WinnerTally = (SELECT PreferenceTally FROM PreferenceTallyPerRoundPerCandidate WHERE ElectionEventID = @ElectionEventID AND RoundNo = @CurrentRound AND CandidateID = @WinnerID)
    WHERE ElectionEventID = @ElectionEventID;

END;
GO



-- TESTING THE distributePreferences() STORED PROCEDURE

-- Declare test parameters matching a valid election and division
DECLARE @TestElectionEventID BIGINT = 20220521245;
DECLARE @TestDivisionName VARCHAR(100) = 'Perth';

-- Execute the stored procedure to count the tallies
EXEC dbo.distributePreferences 
    @ElectionEventID = @TestElectionEventID, 
    @DivisionName = @TestDivisionName;

-- Verify the round-by-round results was correctly logged
SELECT * FROM PreferenceTallyPerRoundPerCandidate
WHERE ElectionEventID = @TestElectionEventID
ORDER BY RoundNo ASC, PreferenceTally DESC;