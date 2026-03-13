-- ====================================================================================
-- SQL Queries - Partitioning
-- Description: DDL script to retrieve and manipulate data for intended report
-- ====================================================================================

-- Identified extremely large tables that can be partitioned
-- Partition Pruning: Queries targeting a specific electorate instantly discard ~95% of the table data, vastly reducing I/O operations.
-- Partition Joins: When joining against other tables on the same key, SQL Server can match data partition-by-partition.
-- Parallel SQL: Calculating statistics across multiple sections allows the engine to aggregate data from different alphabetical partitions concurrently.





-- Partitioning VoterRegistry by DivisionName

-- Drop existing partition scheme and function (if necessary)
DROP PARTITION SCHEME psVoterRegistryDivisionNameRange;
DROP PARTITION FUNCTION pfVoterRegistryDivisionName;

-- Partition function based on the first character of DivisionName (range-partitioning)
CREATE PARTITION FUNCTION pfVoterRegistryDivisionName (VARCHAR(100))
AS RANGE LEFT FOR VALUES ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'R', 'S', 'T', 'W');

-- Partition scheme that distributes the partitions into filegroups (in this case all into PRIMARY)
CREATE PARTITION SCHEME psVoterRegistryDivisionNameRange
AS PARTITION pfVoterRegistryDivisionName
TO ([PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], 
    [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY],
    [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], 
    [PRIMARY], [PRIMARY], [PRIMARY]);

-- Create a non-clustered index on DivisionName using the partition scheme
CREATE INDEX NCIX_VoterRegistry_DivisionName
ON VoterRegistry (DivisionName)
ON psVoterRegistryDivisionNameRange (DivisionName);

-- Use partition pruning to ignore all partitions except the one holding 'F' values, turning a massive table scan into smaller and highly targeted read.
SELECT VoterID, FirstName, LastName 
FROM VoterRegistry 
WHERE DivisionName = 'Fitzroy';

-- Use partition join to join the table while also prune all partitions down to the 'B' partition before attempting the join
SELECT VR.VoterID, VR.FirstName, VR.LastName, ED.DivisionName 
FROM VoterRegistry VR
JOIN ElectoralDivision ED ON VR.DivisionName = ED.DivisionName 
WHERE VR.DivisionName = 'Brunswick';

-- Use parallel SQL to assign one CPU thread to scan the 'B' partition and a separate thread to scan the 'F' partition simultaneously, merging the results at the end.
SELECT * FROM VoterRegistry 
WHERE DivisionName IN ('B%', 'F%');





-- Parititioning BallotPreferences by BallotID ranges

-- Drop existing partition scheme and function (if necessary)
DROP PARTITION SCHEME psBallotPreferencesBallotIDRange;
DROP PARTITION FUNCTION pfBallotPreferencesBallotIDRange;

-- Create a partition function based on BallotID ranges (range-partitioning)
CREATE PARTITION FUNCTION pfBallotPreferencesBallotIDRange (INT)
AS RANGE LEFT FOR VALUES (500, 1000, 1500);

-- Create a partition scheme that distributes the partitions into filegroups (in this case all into PRIMARY)
CREATE PARTITION SCHEME psBallotPreferencesBallotIDRange
AS PARTITION pfBallotPreferencesBallotIDRange TO ([PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY]);

-- Create a non-clustered index on BallotPreferences using the partition scheme
CREATE INDEX NCIX_BallotPreferences_BallotID
ON BallotPreferences (BallotID)
ON psBallotPreferencesBallotIDRange (BallotID);

-- Use partition pruning to ignore all partitions except the for IDs greater than 1000, ignores the first two partitions
SELECT * FROM BallotPreferences 
WHERE BallotID > 1000;

-- Use partition join to join the table while also prune all partitions down to solely the 1000-1500 partition before attempting the partition-wise join
SELECT BP.BallotID, BP.CandidateID, B.ElectionEventID 
FROM BallotPreferences BP
JOIN Ballot B ON BP.BallotID = B.BallotID 
WHERE BP.BallotID = 1200;

-- Use parallel SQL to aggregate the counts in partition 1 and partition 2 simultaneously before rolling them up into the final result set.
SELECT BallotID, COUNT(*) 
FROM BallotPreferences
WHERE BallotID BETWEEN 100 AND 900 
GROUP BY BallotID;





-- Partitioning IssuanceRecord by ElectionEventID years

-- Drop existing partition scheme and function (if necessary)
DROP PARTITION SCHEME psIssuanceRecordYearRange;
DROP PARTITION FUNCTION pfIssuanceRecordYearRange;

-- Create a partition function based on ElectionEventID years (range-partitioning)
CREATE PARTITION FUNCTION pfIssuanceRecordElectionEventID (BIGINT)
AS RANGE RIGHT FOR VALUES (20220000000, 20250000000, 20280000000, 20310000000, 20340000000);

-- Create a partition scheme that distributes the partitions into filegroups (in this case all into PRIMARY)
CREATE PARTITION SCHEME psIssuanceRecordElectionEventIDRange
AS PARTITION pfIssuanceRecordElectionEventID TO ([PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY], [PRIMARY]);

-- Create a non-clustered index on the IssuanceRecord table using the partition scheme
CREATE INDEX NCIX_IssuanceRecord_ElectionEventID
ON IssuanceRecord (ElectionEventID)
ON psIssuanceRecordElectionEventIDRange (ElectionEventID);

-- Use partition pruning to avoids scanning any partitions from 2025 onwards
SELECT VoterID, PollingStation 
FROM IssuanceRecord
WHERE ElectionEventID = (
    SELECT MAX(ElectionEventID) 
    FROM IssuanceRecord
    WHERE ElectionEventID < 20250000000
);

-- Use partition join to join the table while also prune all partitions down to strictly to the 2022 partition, drastically reducing memory overhead.
SELECT IR.VoterID, IR.IssueDate, VR.FirstName, VR.LastName 
FROM IssuanceRecord IR
JOIN VoterRegistry VR ON IR.VoterID = VR.VoterID 
WHERE IR.ElectionEventID = 20220521;

-- Use parallel SQL to dedicate separate processors to scan the 2019 partition and the 2022 partition at the exact same time, returning the combined dataset much faster than a sequential scan.
SELECT VoterID, IssueDate, PollingStation 
FROM IssuanceRecord
WHERE ElectionEventID BETWEEN 20190000000 AND 20220000000;





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