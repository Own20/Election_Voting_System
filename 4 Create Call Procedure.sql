-- ====================================================================================
-- SQL Queries - Procedure
-- Description: DDL script to retrieve and manipulate data for intended report
-- ====================================================================================

-- This stored procedure is used to execute Step 1: Count of first preferences of the preferential voting system.
-- It takes an Election ID and Division Name, filters the BallotPreferences for votes marked as preference 1,
-- aggregates these votes per candidate, and stores the totals in the PreferenceTallyPerRoundPerCandidate table under Round 1.
-- It also logs the completion of the round in the PrefCountRound table.





-- CREATE PROCEDURE primaryVoteCount
--     @ElectionEventID BIGINT,
--     @DivisionName VARCHAR(255)
-- AS
-- BEGIN
--     -- Declare a variable for the round number
--     DECLARE @RoundNo INT = 1;

--     -- Check if the DivisionName exists for the given ElectionEventID
--     IF NOT EXISTS (
--         SELECT 1
--         FROM Ballot B
--         JOIN ElectionEvent EE ON B.ElectionEventID = EE.ElectionEventID
--         WHERE EE.DivisionName = @DivisionName
--         AND B.ElectionEventID = @ElectionEventID
--     )
--     BEGIN
--         RAISERROR('The specified DivisionName does not match the ElectionEventID.', 16, 1);
--         RETURN;
--     END

--     -- Step 1: Delete existing results for this round (if any) for all tables to avoid duplicates
--     DELETE FROM PreferenceTallyPerRoundPerCandidate WHERE RoundNo = @RoundNo;
--     DELETE FROM PrefCountRound WHERE RoundNo = @RoundNo;

--     -- Create a temporary table to hold counts
--     CREATE TABLE #TempCounts (
--         CandidateID INT,
--         FirstPreferences INT
--     );

--     -- Insert first preference counts into the temporary table, count only first preferences
--     INSERT INTO #TempCounts (CandidateID, FirstPreferences)
--     SELECT 
--         bp.CandidateID,
--         COUNT(*) AS FirstPreferences
--     FROM 
--         Ballot b
--         INNER JOIN BallotPreferences bp ON b.BallotID = bp.BallotID
--     WHERE 
--         b.ElectionEventID = @ElectionEventID
--         AND bp.PreferenceNumber = 1
--     GROUP BY 
--         bp.CandidateID;

--     -- Insert results into PrefCountRecord table
--     INSERT INTO PrefCountRound (ElectionEventID, RoundNo, CountStatus)
--     VALUES 
--         (@ElectionEventID, @RoundNo, 'Completed');

--     -- Insert results into PreferenceTallyPerRoundPerCandidate table
--     INSERT INTO PreferenceTallyPerRoundPerCandidate (ElectionEventID, RoundNo, CandidateID, PreferenceTally)
--     SELECT
--         @ElectionEventID,
--         @RoundNo,
--         CandidateID,
--         FirstPreferences
--     FROM
--         #TempCounts;

--     -- Drop the temporary table
--     DROP TABLE #TempCounts;
-- END;
-- GO





-- TESTING THE primaryVoteCount() STORED PROCEDURE

-- Check the source data
SELECT * FROM BallotPreferences;

-- Declare test parameters matching a valid election and division
DECLARE @ElectionEventID BIGINT = 20220521245;
DECLARE @DivisionName VARCHAR(255) = 'Perth';

-- Execute the stored procedure to run the Round 1 count
EXEC primaryVoteCount @ElectionEventID, @DivisionName;

-- Verify the results were correctly inserted into the Tally table
SELECT * FROM PreferenceTallyPerRoundPerCandidate
WHERE ElectionEventID = @TestElectionEventID 
AND RoundNo = 1
ORDER BY PreferenceTally DESC;

-- Verify the round status was correctly logged
SELECT * FROM PrefCountRound
WHERE ElectionEventID = @TestElectionEventID;
GO





-- Commands used:
-- FUNCTION
-- RETURNS
-- AS
-- BEGIN
-- DECLARE
-- NOT
-- RAISERROR
-- RETURN
-- END
-- SET
-- ELSE
-- INSERT
-- GO
-- BIT
-- NULL