-- ====================================================================================
-- SQL Queries - Indexing
-- Description: DDL script to retrieve and manipulate data for intended report
-- ====================================================================================





-- Display the contents of all tables to verify the data has been inserted correctly
SELECT * FROM ballot;
SELECT * FROM ballotpreferences;
SELECT * FROM candidate;
SELECT * FROM contests;
SELECT * FROM electionevent;
SELECT * FROM electionmaster;
SELECT * FROM electoraldivision;
SELECT * FROM electoraldivisionhistory;
SELECT * FROM issuancerecord;
SELECT * FROM politicalparty;
SELECT * FROM prefcountround;
SELECT * FROM preferencetallyperroundpercandidate;
SELECT * FROM voterregistry;

-- 1. Voter Management Queries
-- 1.1 Count Registered Voters per Electoral Division

SELECT 
    DivisionName,
    COUNT(VoterID) AS TotalRegisteredVoters
FROM VoterRegistry
GROUP BY DivisionName
ORDER BY TotalRegisteredVoters DESC;

-- 1.2 Retrieve Voters in a Specific Electoral Division
SELECT 
    VoterID,
    FirstName,
    LastName,
    ResidentialAddress
FROM VoterRegistry
WHERE DivisionName = 'Barton'
ORDER BY LastName;

-- 2. Election Administration Queries
-- 2.1 List Candidates Contesting in Each Electoral Division
SELECT 
    EE.DivisionName,
    C.CandidateID,
    C.Name,
    P.PartyName
FROM ElectionEvent EE
JOIN Contests CT 
    ON EE.ElectionEventID = CT.ElectionEventID
JOIN Candidate C 
    ON CT.CandidateID = C.CandidateID
LEFT JOIN PoliticalParty P 
    ON C.PartyCode = P.PartyCode
ORDER BY EE.DivisionName, C.Name;

-- 2.2 Display Election Events and Their Divisions
SELECT 
    EM.ElectionDate,
    EE.ElectionEventID,
    EE.DivisionName
FROM ElectionMaster EM
JOIN ElectionEvent EE
    ON EM.ElectionSerialNo = EE.ElectionSerialNo
ORDER BY EM.ElectionDate, EE.DivisionName;

-- 3. Voting Activity Monitoring
-- 3.1 Identify Voters Who Have Cast Their Ballot
SELECT 
    VR.VoterID,
    VR.FirstName,
    VR.LastName,
    IR.ElectionEventID,
    IR.IssueDate
FROM IssuanceRecord IR
JOIN VoterRegistry VR
    ON IR.VoterID = VR.VoterID
ORDER BY IR.IssueDate;

-- 3.2 Identify Voters Who Did Not Vote
SELECT 
    VR.VoterID,
    VR.FirstName,
    VR.LastName,
    VR.ResidentialAddress
FROM VoterRegistry VR
WHERE VR.VoterID NOT IN (
    SELECT VoterID
    FROM IssuanceRecord
    WHERE ElectionEventID = 20220521
);

-- 4. Ballot and Voting Analysis
-- 4.1 Total Ballots Cast in Each Electoral Division
SELECT 
    EE.DivisionName,
    COUNT(B.BallotID) AS BallotsCast
FROM ElectionEvent EE
JOIN Ballot B
    ON EE.ElectionEventID = B.ElectionEventID
GROUP BY EE.DivisionName
ORDER BY BallotsCast DESC;

-- 4.2 Retrieve Ballot Preferences for an Election
SELECT 
    BP.BallotID,
    C.Name AS Candidate,
    BP.PreferenceNumber
FROM BallotPreferences BP
JOIN Candidate C
    ON BP.CandidateID = C.CandidateID
WHERE BP.BallotID = 1001
ORDER BY BP.PreferenceNumber;

-- 5. Vote Counting Queries
-- 5.1 Count First Preference Votes per Candidate
SELECT 
    C.Name,
    COUNT(BP.BallotID) AS FirstPreferenceVotes
FROM BallotPreferences BP
JOIN Candidate C
    ON BP.CandidateID = C.CandidateID
WHERE BP.PreferenceNumber = 1
GROUP BY C.Name
ORDER BY FirstPreferenceVotes DESC;

-- 5.2 View Preference Tallies per Counting Round
SELECT 
    PTRPC.RoundNo,
    C.Name,
    PTRPC.PreferenceTally
FROM PreferenceTallyPerRoundPerCandidate PTRPC
JOIN Candidate C
    ON PTRPC.CandidateID = C.CandidateID
WHERE PTRPC.ElectionEventID = 20220521
ORDER BY PTRPC.RoundNo, PTRPC.PreferenceTally DESC;

-- 6. Election Result Reporting
-- 6.1 Display Winning Candidate for Each Division
SELECT 
    EE.DivisionName,
    C.Name AS Winner,
    EE.WinnerTally
FROM ElectionEvent EE
JOIN Candidate C
    ON EE.Two_Candidate_PrefWinnerCandidateID = C.CandidateID
ORDER BY EE.DivisionName;

-- 7. Political Party Participation Analysis
-- 7.1 Count Candidates Representing Each Party
SELECT 
    P.PartyName,
    COUNT(C.CandidateID) AS TotalCandidates
FROM PoliticalParty P
JOIN Candidate C
    ON P.PartyCode = C.PartyCode
GROUP BY P.PartyName
ORDER BY TotalCandidates DESC;