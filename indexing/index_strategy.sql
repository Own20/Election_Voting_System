-- ====================================================================================
-- SQL Queries - Indexing
-- Description: DDL script to retrieve and manipulate data for intended report
-- ====================================================================================





-- Generate a report showing the total number of voters registered in each of the electoral division, aggregated from the VoterRegistry, sorted in the descending order of the total number of voters

-- INDEX is used to help JOIN operation to perform an Index Seek instead of a full Table Scan on the extremely large VoterRegistry table.
CREATE INDEX idx_VoterRegistry_DivisionName 
ON VoterRegistry(DivisionName);

-- Query to display the total number of voters registered in each of the electoral division
-- LEFT JOIN is used to list every division, even those with a count of 0
SELECT 
    ED.DivisionName, 
    COUNT(VR.VoterID) AS TotalVoters
FROM ElectoralDivision ED
JOIN VoterRegistry VR 
    ON ED.DivisionName = VR.DivisionName
GROUP BY ED.DivisionName
ORDER BY TotalVoters DESC;





-- Produce a candidate list for the 2022 federal election (ID: 20220521) that displays the division name, candidate name, and party, sorted alphabetically by electoral division name but with candidates appearing in a completely randomized order within each division.

-- INDEX is used to help JOIN, WHERE, and ORDER BY operation to instantly isolate only the 2022 candidates before joining to the PoliticalParty table and sorting them
CREATE INDEX idx_Candidate_PartyCode
ON Candidate(PartyCode);
CREATE INDEX idx_Candidate_DivisionName 
ON Candidate(DivisionName);

-- Query to produce candidate lists for all electoral divisions for the 2022 federal election
SELECT 
    C.DivisionName, 
    C.Name AS CandidateName, 
    PP.PartyName
FROM Candidate C
JOIN PoliticalParty PP
    ON C.PartyCode = PP.PartyCode
WHERE C.ElectionEventID BETWEEN 20220521000 AND 20220521999
ORDER BY C.DivisionName, NEWID();





-- Using an IN or NOT IN clause, list the names and addresses of all registered voters who have no record of voting in either the 2022 general election (ID: 20220521) or the 2019 general election (ID: 20190518).

-- INDEX is used to help JOIN and WHERE operation to allow for an Index-Only Scan to get all the answers from this index without ever touching the table
CREATE INDEX idx_VoterRegistry_ElectionEventID
ON VoterRegistry(ElectionEventID);
CREATE INDEX idx_IssuanceRecord_VoterID
ON IssuanceRecord(VoterID);
CREATE INDEX idx_IssuanceRecord_ElectionEventID
ON IssuanceRecord(ElectionEventID);
CREATE INDEX idx_IssuanceRecord_VoterID_ElectionEventID 
ON IssuanceRecord(VoterID, ElectionEventID);

-- Query to generate a report that lists the names and addresses of registered voters who did not vote in 2022-05-20 general election and also not voted in 2019-05-18 general election
SELECT VR.VoterID, 
       VR.FirstName, 
       VR.LastName, 
       VR.Address, 
       VR.PostalAddress, 
       VR.ResidentialAddress
FROM VoterRegistry VR
JOIN IssuanceRecord IR
    ON VR.VoterID = IR.VoterID
WHERE IR.ElectionEventID NOT IN (
    SELECT ElectionEventID
    FROM IssuanceRecord
    WHERE LEFT(CAST(ElectionEventID AS CHAR(11)), 8) 
          IN ('20220520', '20190518')
);