-- ====================================================================================
-- PHYSICAL DATABASE DESIGN
-- Description: DDL script to build the back-end schema for the AEC Voting System.
-- ====================================================================================
USE votedb;



-- Delete existing tables to allow for clean re-runs
DROP TABLE IF EXISTS Ballot;
DROP TABLE IF EXISTS BallotPreferences;
DROP TABLE IF EXISTS Candidate;
DROP TABLE IF EXISTS Contests;
DROP TABLE IF EXISTS ElectionEvent;
DROP TABLE IF EXISTS ElectionMaster;
DROP TABLE IF EXISTS ElectoralDivision;
DROP TABLE IF EXISTS ElectoralDivisionHistory;
DROP TABLE IF EXISTS IssuanceRecord;
DROP TABLE IF EXISTS PoliticalParty;
DROP TABLE IF EXISTS PrefCountRecord;
DROP TABLE IF EXISTS PreferenceTallyPerRoundPerCandidate;
DROP TABLE IF EXISTS VoterRegistry;





-- Create commands for specific tables containing specific columns
-- ------------------------------------------------------------------------------------
-- 1. ELECTION & DIVISION MANAGEMENT
-- ------------------------------------------------------------------------------------


-- Election Master: Master record for three-year election cycles
CREATE TABLE ElectionMaster (
    ElectionSerialNo INT NOT NULL,
    ElectionDate DATE,
    Type VARCHAR(50),
    TotalNumDivisions INT,
    TotalRegVoters INT,
    LastDateToVoterRegister DATE,
    LastDateCandidateNominate DATE,
    LastDateToDeclareResult DATE,
    CONSTRAINT PK_master_serialno PRIMARY KEY CLUSTERED (ElectionSerialNo)
);


-- Electoral Division: Current status of each Electoral Division
CREATE TABLE ElectoralDivision (
    DivisionName VARCHAR(100) NOT NULL,
    State VARCHAR(5),
    TotalRegVoters INT,
    CurrMember VARCHAR(100),
    ElectionSerialNo INT,
    ElectoralDivisionID INT,
    CONSTRAINT PK_electoral_divisionname PRIMARY KEY CLUSTERED (DivisionName)
);
ALTER TABLE ElectoralDivision
ADD CONSTRAINT fk_division_serialno FOREIGN KEY (ElectionSerialNo)
REFERENCES ElectionMaster(ElectionSerialNo);


-- Electoral Division History: Historical snapshots of voter counts at the close of past elections
CREATE TABLE ElectoralDivisionHistory (
    DivisionName VARCHAR(100),
    ElectionSerialNo INT,
    HistoricRegVoters INT,
    CONSTRAINT PK_history_divisionname_serialno PRIMARY KEY (DivisionName, ElectionSerialNo)
);
ALTER TABLE ElectoralDivisionHistory
ADD CONSTRAINT fk_history_divisionname FOREIGN KEY (DivisionName) 
REFERENCES ElectoralDivision(DivisionName);
ALTER TABLE ElectoralDivisionHistory
ADD CONSTRAINT fk_history_serialno FOREIGN KEY (ElectionSerialNo) 
REFERENCES ElectionMaster(ElectionSerialNo);


-- Election Event: the specific instance of an election occurring within a particular Electoral Division
CREATE TABLE ElectionEvent (
    ElectionEventID BIGINT NOT NULL,
    TotalVoters INT,
    VotesCast INT,
    VotesReject INT,
    VotesValid INT,
    ElectionSerialNo INT,
    DivisionName VARCHAR(100),
    Two_Candidate_PrefWinnerCandidateID INT,
    WinnerTally INT,
    Two_Candidate_PrefLoserCandidateID INT,
    LoserTally INT,
    CONSTRAINT PK_event_id PRIMARY KEY (ElectionEventID)
);
ALTER TABLE ElectionEvent
ADD CONSTRAINT fk_event_serialno FOREIGN KEY (ElectionSerialNo) 
REFERENCES ElectionMaster(ElectionSerialNo);
ALTER TABLE ElectionEvent
ADD CONSTRAINT fk_event_divisionname FOREIGN KEY (DivisionName) 
REFERENCES ElectoralDivision(DivisionName);
ALTER TABLE ElectionEvent
ADD CONSTRAINT fk_event_winnercandidateid FOREIGN KEY (Two_Candidate_PrefWinnerCandidateID) 
REFERENCES Candidate(CandidateID);
ALTER TABLE ElectionEvent
ADD CONSTRAINT fk_event_losercandidateid FOREIGN KEY (Two_Candidate_PrefLoserCandidateID) 
REFERENCES Candidate(CandidateID);

-- ------------------------------------------------------------------------------------
-- 2. PARTICIPANTS: PARTIES & CANDIDATES
-- ------------------------------------------------------------------------------------


-- Candidate: People contesting specific seats
CREATE TABLE Candidate (
    CandidateID INT NOT NULL,
    Name VARCHAR(100),
    ContactAddress VARCHAR(200),
    ContactPhone VARCHAR(15),
    ContactMobile VARCHAR(15),
    ContactEmail VARCHAR(100),
    PartyCode VARCHAR(10),
    DivisionName VARCHAR(100),
    ElectionEventID BIGINT,
    CONSTRAINT PK_candidateid PRIMARY KEY (CandidateID)
);
ALTER TABLE Candidate
ADD CONSTRAINT fk_candidate_partycode FOREIGN KEY (PartyCode) 
REFERENCES PoliticalParty(PartyCode);
ALTER TABLE Candidate
ADD CONSTRAINT fk_candidate_divisionname FOREIGN KEY (DivisionName)
REFERENCES ElectoralDivision(DivisionName);


-- Political Party: Formal details of registered political parties
CREATE TABLE PoliticalParty (
    PartyCode VARCHAR(10) NOT NULL,
    PartyName VARCHAR(100),
    PartyLogo IMAGE,
    PostalAddress VARCHAR(200),
    PartySecretary VARCHAR(100),
    ContactPersonName VARCHAR(100),
    ContactPersonPhone VARCHAR(15),
    ContactPersonMobile VARCHAR(15),
    ContactPersonEmail VARCHAR(100),
    CONSTRAINT PK_party_code PRIMARY KEY (PartyCode)
);


-- ------------------------------------------------------------------------------------
-- 2.1 ADDITIONAL CONNECTION
-- ------------------------------------------------------------------------------------


-- Contests: Links Candidates to specific Election Events
CREATE TABLE Contests (
    ElectionEventID BIGINT NOT NULL,
    CandidateID INT NOT NULL
);
-- 

ALTER TABLE Contests
ADD CONSTRAINT fk_contests_eventid
FOREIGN KEY (ElectionEventID)
REFERENCES ElectionEvent(ElectionEventID);
ALTER TABLE Contests
ADD CONSTRAINT fk_contests_candidateid
FOREIGN KEY (CandidateID)
REFERENCES Candidate(CandidateID);


-- ------------------------------------------------------------------------------------
-- 3. VOTER REGISTRY & ANONYMIZED BALLOTS
-- ------------------------------------------------------------------------------------


-- Voter Registry: Computerised Electoral Roll
CREATE TABLE VoterRegistry (
    VoterID INT NOT NULL,
    FirstName VARCHAR(50),
    MiddleNames VARCHAR(50),
    LastName VARCHAR(50),
    Address VARCHAR(200),
    DateofBirth DATE,
    Gender VARCHAR(10),
    ResidentialAddress VARCHAR(200),
    PostalAddress VARCHAR(200),
    ContactPhone VARCHAR(15),
    ContactMobile VARCHAR(15),
    ContactEmail VARCHAR(100),
    DivisionName VARCHAR(100),
    ElectionEventID BIGINT,
    CONSTRAINT PK_voter_id PRIMARY KEY (VoterID)
);
ALTER TABLE VoterRegistry
ADD CONSTRAINT fk_voter_divisionname FOREIGN KEY (DivisionName) 
REFERENCES ElectoralDivision(DivisionName);
ALTER TABLE VoterRegistry
ADD CONSTRAINT fk_voter_eventid FOREIGN KEY (ElectionEventID)
REFERENCES ElectionEvent(ElectionEventID);


-- Ballot: Anonymized Computerised Ballot
CREATE TABLE Ballot (
    BallotID INT NOT NULL,
    ElectionEventID BIGINT,
    CONSTRAINT PK_ballot_id PRIMARY KEY (BallotID)
);
ALTER TABLE Ballot
ADD CONSTRAINT fk_ballot_eventid FOREIGN KEY (ElectionEventID) 
REFERENCES ElectionEvent(ElectionEventID);


-- Ballot Preferences: Full preferences for all candidates on the ballot
CREATE TABLE BallotPreferences (
    BallotID INT NOT NULL,
    CandidateID INT NOT NULL,
    Preference INT,
    PreferenceNumber INT,
    CONSTRAINT PK_preferences_ballotcandidateid PRIMARY KEY (BallotID, CandidateID)
);
ALTER TABLE BallotPreferences
ADD CONSTRAINT fk_preferences_ballotid FOREIGN KEY (BallotID) 
REFERENCES Ballot(BallotID);
ALTER TABLE BallotPreferences
ADD CONSTRAINT fk_preferences_candidateid FOREIGN KEY (CandidateID) 
REFERENCES Candidate(CandidateID);


-- Issuance Record: to track votes of each voter and prevent double voting
CREATE TABLE IssuanceRecord (
    VoterID INT NOT NULL,
    ElectionEventID BIGINT NOT NULL,
    IssueDate DATE,
    Timestamp TIMESTAMP,
    PollingStation VARCHAR(100),
    CONSTRAINT PK_record_votereventid PRIMARY KEY (VoterID, ElectionEventID)
);
ALTER TABLE IssuanceRecord
ADD CONSTRAINT fk_record_voterid FOREIGN KEY (VoterID) 
REFERENCES VoterRegistry(VoterID);
ALTER TABLE IssuanceRecord
ADD CONSTRAINT fk_record_eventid FOREIGN KEY (ElectionEventID) 
REFERENCES ElectionEvent(ElectionEventID);


-- ------------------------------------------------------------------------------------
-- 4. ELECTION RESULTS & TALLYING
-- ------------------------------------------------------------------------------------


-- Preference Count Record: Stores the iterative steps of the preferential counting process
CREATE TABLE PrefCountRound (
    ElectionEventID BIGINT NOT NULL,
    RoundNo INT,
    EliminatedCandidateID INT,
    CountStatus VARCHAR(50),
    PreferenceAggregate INT,
    CONSTRAINT PK_pref_eventidroundno PRIMARY KEY (ElectionEventID, RoundNo)
);
ALTER TABLE PrefCountRound
ADD CONSTRAINT fk_pref_eliminatedcandidateid FOREIGN KEY (EliminatedCandidateID) 
REFERENCES Candidate(CandidateID);
ALTER TABLE PrefCountRound
ADD CONSTRAINT fk_pref_eventid FOREIGN KEY (ElectionEventID) 
REFERENCES ElectionEvent(ElectionEventID);


-- Preference Tally Per Round Per Candidate: Stores final results and iteration data for the elimination process
CREATE TABLE PreferenceTallyPerRoundPerCandidate (
    ElectionEventID BIGINT NOT NULL,
    RoundNo INT,
    CandidateID INT,
    PreferenceTally INT,
    CONSTRAINT PK_preference_eventidroundnocandidateid PRIMARY KEY (ElectionEventID, RoundNo, CandidateID)
);
ALTER TABLE PreferenceTallyPerRoundPerCandidate
ADD CONSTRAINT fk_preference_eventid FOREIGN KEY (ElectionEventID) 
REFERENCES ElectionEvent(ElectionEventID);
ALTER TABLE PreferenceTallyPerRoundPerCandidate
ADD CONSTRAINT fk_preference_candidateid FOREIGN KEY (CandidateID) 
REFERENCES Candidate(CandidateID);





-- Commands used:
-- CREATE
-- DROP
-- TABLE
-- IF
-- EXISTS
-- CONSTRAINT
-- PRIMARY KEY
-- ALTER
-- FOREIGN KEY

-- Data types used:
-- INT
-- DATE
-- VARCHAR
-- BIGINT