-- ====================================================================================
-- SQL Queries - Function
-- Description: DDL script to retrieve and manipulate data for intended report
-- ====================================================================================

-- This stored function is used to enforce the integrity of the election system by preventing double-voting (check if the voter had voted before).
-- It takes three inputs (ElectionEventID, DivisionName, and VoterID) and returns a Boolean value (BIT in SQL Server): 
-- 1 (True) if a ballot has already been issued to that voter for that specific election, and 0 (False) if they have not yet voted.
-- Additionally, there is extensive validation logic, returning NULL if the voter, election, or division does not exist or if the voter is registered in the wrong division.





-- CREATE FUNCTION previouslyVoted(
--     @ElectionEventID BIGINT,
--     @DivisionName VARCHAR(255),
--     @VoterID INT
-- )
-- RETURNS BIT
-- AS
-- BEGIN
--     DECLARE @Voted BIT;

--     -- Validate ElectionEventID exists in ElectionEvent table
--     IF NOT EXISTS (
--         SELECT 1
--         FROM ElectionEvent
--         WHERE ElectionEventID = @ElectionEventID
--     )
--     BEGIN
--         RETURN NULL;
--     END

--     -- Validate DivisionName in ElectoralDivision table
--     IF NOT EXISTS (
--         SELECT 1
--         FROM ElectoralDivision
--         WHERE DivisionName = @DivisionName
--     )
--     BEGIN
--         RETURN NULL;
--     END

--     -- Validate VoterID in VoterRegistry table
--     IF NOT EXISTS (
--         SELECT 1
--         FROM VoterRegistry
--         WHERE VoterID = @VoterID
--     )
--     BEGIN
--         RETURN NULL;
--     END

--     -- Check if the voter exists in the VoterRegistry for the specified ElectionEventID and DivisionName
--     IF NOT EXISTS (
--         SELECT 1
--         FROM VoterRegistry
--         WHERE 
--             VoterID = @VoterID
--             AND ElectionEventID = @ElectionEventID
--             AND DivisionName = @DivisionName
--     )
--     BEGIN
--         RETURN NULL; -- Indicates the voter is not registered for this ElectionEventID and DivisionName
--     END

--     -- Check if the voter has issued a vote in the specified election
--     IF EXISTS (
--         SELECT 1
--         FROM IssuanceRecord
--         WHERE 
--             ElectionEventID = @ElectionEventID
--             AND VoterID = @VoterID
--     )
--     BEGIN
--         SET @Voted = 1;
--     END
--     ELSE
--     BEGIN
--         SET @Voted = 0;
--     END

--     RETURN @Voted;
-- END;





-- TESTING THE previouslyVoted() FUNCTION

-- Check the tables before running the test
SELECT * FROM VoterRegistry;
SELECT * FROM IssuanceRecord;

-- Declare a variable to hold the Boolean result returned by the function
DECLARE @Voted BIT;

-- Execute the function by passing in test parameters: 
SET @Voted = dbo.previouslyVoted(20220521170, 'Ryan', 1000);

-- Evaluate the returned result to check for errors
IF @Voted IS NULL
BEGIN
    -- Handles edge cases if your function returns NULL for invalid inputs
    SELECT 'Validation error occurred.';
END
ELSE IF @Voted = 1
BEGIN
    -- Result is True: The IssuanceRecord exists
    SELECT 'ALREADY voted';
END
ELSE
BEGIN
    -- Result is False: No IssuanceRecord exists
    SELECT 'NOT voted';
END





-- Commands used:
-- PARTITION
-- SCHEME
-- FUNCTION
-- AS
-- RANGE
-- FOR
-- VALUES
-- PRIMARY
-- MAX