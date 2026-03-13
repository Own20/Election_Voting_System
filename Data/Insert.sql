DELETE FROM ElectionMaster;
SELECT * FROM ElectionMaster;
-- Insert election years into ElectionMaster table
INSERT INTO ElectionMaster (ElectionSerialNo)
VALUES
    (2019),
    (2022),
    (2025),
    (2028),
    (2031),
    (2034),
    (2037),
    (2040),
    (2043),
    (2046);
-- Update the election details for the 2022 election in the ElectionMaster table
UPDATE ElectionMaster
SET 
    ElectionDate = '2022-05-21',
    Type = 'House of Representatives',
    LastDateToVoterRegister = '2022-04-18',
    LastDateCandidateNominate = '2022-04-21',
    LastDateToDeclareResult = '2022-04-22'
WHERE 
    ElectionSerialNo = 2022;





DELETE FROM ElectionEvent;
-- Check the current election event IDs in the ElectionEvent table
DELETE FROM electionevent
WHERE ElectionEventID = 20220221085;
SELECT CAST(ElectionEventID AS CHAR) AS ElectionEventID
FROM ElectionEvent;
-- Insert election event IDs for the 2022 election into the ElectionEvent table
INSERT INTO ElectionEvent (ElectionEventID)
VALUES
(20220521001),
(20220521002),
(20220521003),
(20220521004),
(20220521005),
(20220521006),
(20220521007),
(20220521008),
(20220521009),
(20220521010),
(20220521011),
(20220521012),
(20220521013),
(20220521014),
(20220521015),
(20220521016),
(20220521017),
(20220521018),
(20220521019),
(20220521020),
(20220521021),
(20220521022),
(20220521023),
(20220521024),
(20220521025),
(20220521026),
(20220521027),
(20220521028),
(20220521029),
(20220521030),
(20220521031),
(20220521032),
(20220521033),
(20220521034),
(20220521035),
(20220521036),
(20220521037),
(20220521038),
(20220521039),
(20220521040),
(20220521041),
(20220521042),
(20220521043),
(20220521044),
(20220521045),
(20220521046),
(20220521047),
(20220521048),
(20220521049),
(20220521050),
(20220521051),
(20220521052),
(20220521053),
(20220521054),
(20220521055),
(20220521056),
(20220521057),
(20220521058),
(20220521059),
(20220521060),
(20220521061),
(20220521062),
(20220521063),
(20220521064),
(20220521065),
(20220521066),
(20220521067),
(20220521068),
(20220521069),
(20220521070),
(20220521071),
(20220521072),
(20220521073),
(20220521074),
(20220521075),
(20220521076),
(20220521077),
(20220521078),
(20220521079),
(20220521080),
(20220521081),
(20220521082),
(20220521083),
(20220521084),
(20220521085),
(20220521086),
(20220521087),
(20220521088),
(20220521089),
(20220521090),
(20220521091),
(20220521092),
(20220521093),
(20220521094),
(20220521095),
(20220521096),
(20220521097),
(20220521098),
(20220521099),
(20220521100),
(20220521101),
(20220521102),
(20220521103),
(20220521104),
(20220521105),
(20220521106),
(20220521107),
(20220521108),
(20220521109),
(20220521110),
(20220521111),
(20220521112),
(20220521113),
(20220521114),
(20220521115),
(20220521116),
(20220521117),
(20220521118),
(20220521119),
(20220521120),
(20220521121),
(20220521122),
(20220521123),
(20220521124),
(20220521125),
(20220521126),
(20220521127),
(20220521128),
(20220521129),
(20220521130),
(20220521131),
(20220521132),
(20220521133),
(20220521134),
(20220521135),
(20220521136),
(20220521137),
(20220521138),
(20220521139),
(20220521140),
(20220521141),
(20220521142),
(20220521143),
(20220521144),
(20220521145),
(20220521146),
(20220521147),
(20220521148),
(20220521149),
(20220521150),
(20220521151);
-- Insert election year to election event table
UPDATE ElectionEvent SET ElectionSerialNo = 2022;
-- Update the division names in the ElectionEvent table by joining with the ElectoralDivision table
UPDATE ElectionEvent ee
JOIN ElectoralDivision ed
    ON ed.ElectoralDivisionID = ee.ElectionEventID % 1000
SET ee.DivisionName = ed.DivisionName;





DELETE FROM ElectoralDivision;
SELECT * FROM ElectoralDivision;
-- Insert electoral division details into ElectoralDivision table
UPDATE ElectoralDivision SET ElectionSerialNo = 2022;
-- Update the electoral division IDs in the ElectoralDivision table based on the division names
UPDATE ElectoralDivision
SET ElectoralDivisionID = CASE DivisionName
    WHEN 'Adelaide' THEN 1
    WHEN 'Aston' THEN 2
    WHEN 'Ballarat' THEN 3
    WHEN 'Banks' THEN 4
    WHEN 'Barker' THEN 5
    WHEN 'Barton' THEN 6
    WHEN 'Bass' THEN 7
    WHEN 'Bean' THEN 8
    WHEN 'Bendigo' THEN 9
    WHEN 'Bennelong' THEN 10
    WHEN 'Berowra' THEN 11
    WHEN 'Blair' THEN 12
    WHEN 'Blaxland' THEN 13
    WHEN 'Bonner' THEN 14
    WHEN 'Boothby' THEN 15
    WHEN 'Bowman' THEN 16
    WHEN 'Braddon' THEN 17
    WHEN 'Bradfield' THEN 18
    WHEN 'Brand' THEN 19
    WHEN 'Brisbane' THEN 20
    WHEN 'Bruce' THEN 21
    WHEN 'Burt' THEN 22
    WHEN 'Calare' THEN 23
    WHEN 'Calwell' THEN 24
    WHEN 'Canberra' THEN 25
    WHEN 'Canning' THEN 26
    WHEN 'Capricornia' THEN 27
    WHEN 'Casey' THEN 28
    WHEN 'Chifley' THEN 29
    WHEN 'Chisholm' THEN 30
    WHEN 'Clark' THEN 31
    WHEN 'Cook' THEN 32
    WHEN 'Cooper' THEN 33
    WHEN 'Corangamite' THEN 34
    WHEN 'Corio' THEN 35
    WHEN 'Cowan' THEN 36
    WHEN 'Cowper' THEN 37
    WHEN 'Cunningham' THEN 38
    WHEN 'Curtin' THEN 39
    WHEN 'Dawson' THEN 40
    WHEN 'Deakin' THEN 41
    WHEN 'Dickson' THEN 42
    WHEN 'Dobell' THEN 43
    WHEN 'Dunkley' THEN 44
    WHEN 'Durack' THEN 45
    WHEN 'Eden-Monaro' THEN 46
    WHEN 'Fadden' THEN 47
    WHEN 'Fairfax' THEN 48
    WHEN 'Farrer' THEN 49
    WHEN 'Fenner' THEN 50
    WHEN 'Fisher' THEN 51
    WHEN 'Flinders' THEN 52
    WHEN 'Flynn' THEN 53
    WHEN 'Forde' THEN 54
    WHEN 'Forrest' THEN 55
    WHEN 'Fowler' THEN 56
    WHEN 'Franklin' THEN 57
    WHEN 'Fraser' THEN 58
    WHEN 'Fremantle' THEN 59
    WHEN 'Gellibrand' THEN 60
    WHEN 'Gilmore' THEN 61
    WHEN 'Gippsland' THEN 62
    WHEN 'Goldstein' THEN 63
    WHEN 'Gorton' THEN 64
    WHEN 'Grayndler' THEN 65
    WHEN 'Greenway' THEN 66
    WHEN 'Grey' THEN 67
    WHEN 'Griffith' THEN 68
    WHEN 'Groom' THEN 69
    WHEN 'Hasluck' THEN 70
    WHEN 'Hawke' THEN 71
    WHEN 'Herbert' THEN 72
    WHEN 'Higgins' THEN 73
    WHEN 'Hindmarsh' THEN 74
    WHEN 'Hinkler' THEN 75
    WHEN 'Holt' THEN 76
    WHEN 'Hotham' THEN 77
    WHEN 'Hughes' THEN 78
    WHEN 'Hume' THEN 79
    WHEN 'Hunter' THEN 80
    WHEN 'Indi' THEN 81
    WHEN 'Isaacs' THEN 82
    WHEN 'Jagajaga' THEN 83
    WHEN 'Kennedy' THEN 84
    WHEN 'Kingsford Smith' THEN 85
    WHEN 'Kingston' THEN 86
    WHEN 'Kooyong' THEN 87
    WHEN 'La Trobe' THEN 88
    WHEN 'Lalor' THEN 89
    WHEN 'Leichhardt' THEN 90
    WHEN 'Lilley' THEN 91
    WHEN 'Lindsay' THEN 92
    WHEN 'Lingiari' THEN 93
    WHEN 'Longman' THEN 94
    WHEN 'Lyne' THEN 95
    WHEN 'Lyons' THEN 96
    WHEN 'Macarthur' THEN 97
    WHEN 'Mackellar' THEN 98
    WHEN 'Macnamara' THEN 99
    WHEN 'Macquarie' THEN 100
    WHEN 'Makin' THEN 101
    WHEN 'Mallee' THEN 102
    WHEN 'Maranoa' THEN 103
    WHEN 'Maribyrnong' THEN 104
    WHEN 'Mayo' THEN 105
    WHEN 'McEwen' THEN 106
    WHEN 'McMahon' THEN 107
    WHEN 'McPherson' THEN 108
    WHEN 'Melbourne' THEN 109
    WHEN 'Menzies' THEN 110
    WHEN 'Mitchell' THEN 111
    WHEN 'Monash' THEN 112
    WHEN 'Moncrieff' THEN 113
    WHEN 'Moore' THEN 114
    WHEN 'Moreton' THEN 115
    WHEN 'New England' THEN 116
    WHEN 'Newcastle' THEN 117
    WHEN 'Nicholls' THEN 118
    WHEN 'North Sydney' THEN 119
    WHEN 'O''Connor' THEN 120
    WHEN 'Oxley' THEN 121
    WHEN 'Page' THEN 122
    WHEN 'Parkes' THEN 123
    WHEN 'Parramatta' THEN 124
    WHEN 'Paterson' THEN 125
    WHEN 'Pearce' THEN 126
    WHEN 'Perth' THEN 127
    WHEN 'Petrie' THEN 128
    WHEN 'Rankin' THEN 129
    WHEN 'Reid' THEN 130
    WHEN 'Richmond' THEN 131
    WHEN 'Riverina' THEN 132
    WHEN 'Robertson' THEN 133
    WHEN 'Ryan' THEN 134
    WHEN 'Scullin' THEN 135
    WHEN 'Shortland' THEN 136
    WHEN 'Solomon' THEN 137
    WHEN 'Spence' THEN 138
    WHEN 'Sturt' THEN 139
    WHEN 'Swan' THEN 140
    WHEN 'Sydney' THEN 141
    WHEN 'Tangney' THEN 142
    WHEN 'Wannon' THEN 143
    WHEN 'Warringah' THEN 144
    WHEN 'Watson' THEN 145
    WHEN 'Wentworth' THEN 146
    WHEN 'Werriwa' THEN 147
    WHEN 'Whitlam' THEN 148
    WHEN 'Wide Bay' THEN 149
    WHEN 'Wills' THEN 150
    WHEN 'Wright' THEN 151
    ELSE ElectoralDivisionID
END;
-- Update the current members for each electoral division in the ElectoralDivision table based on the division names
UPDATE ElectoralDivision
SET CurrMember = CASE
    WHEN DivisionName = 'Grayndler' THEN 'Anthony Albanese'
    WHEN DivisionName = 'Cowan' THEN 'Anne Aly'
    WHEN DivisionName = 'Higgins' THEN 'Michelle Ananda-Rajah'
    WHEN DivisionName = 'McPherson' THEN 'Karen Andrews'
    WHEN DivisionName = 'Bass' THEN 'Bridget Archer'
    WHEN DivisionName = 'Melbourne' THEN 'Adam Bandt'
    WHEN DivisionName = 'Brisbane' THEN 'Stephen Bates'
    WHEN DivisionName = 'Moncrieff' THEN 'Angie Bell'
    WHEN DivisionName = 'Nicholls' THEN 'Sam Birrell'
    WHEN DivisionName = 'McMahon' THEN 'Chris Bowen'
    WHEN DivisionName = 'Flynn' THEN 'Colin Boyce'
    WHEN DivisionName = 'Monash' THEN 'Russell Broadbent'
    WHEN DivisionName = 'Wright' THEN 'Scott Buchholz'
    WHEN DivisionName = 'Watson' THEN 'Tony Burke'
    WHEN DivisionName = 'Spence' THEN 'Matt Burnell'
    WHEN DivisionName = 'Barton' THEN 'Linda Burney'
    WHEN DivisionName = 'Macnamara' THEN 'Josh Burns'
    WHEN DivisionName = 'Hindmarsh' THEN 'Mark Butler'
    WHEN DivisionName = 'Cunningham' THEN 'Alison Byrnes'
    WHEN DivisionName = 'Rankin' THEN 'Jim Chalmers'
    WHEN DivisionName = 'Griffith' THEN 'Max Chandler-Mather'
    WHEN DivisionName = 'Curtin' THEN 'Kate Chaney'
    WHEN DivisionName = 'Parramatta' THEN 'Andrew Charlton'
    WHEN DivisionName = 'Gippsland' THEN 'Darren Chester'
    WHEN DivisionName = 'Bendigo' THEN 'Lisa Chesters'
    WHEN DivisionName = 'Blaxland' THEN 'Jason Clare'
    WHEN DivisionName = 'Newcastle' THEN 'Sharon Claydon'
    WHEN DivisionName = 'Corangamite' THEN 'Libby Coker'
    WHEN DivisionName = 'Banks' THEN 'David Coleman'
    WHEN DivisionName = 'Franklin' THEN 'Julie Collins'
    WHEN DivisionName = 'Cowper' THEN 'Pat Conaghan'
    WHEN DivisionName = 'Shortland' THEN 'Pat Conroy'
    WHEN DivisionName = 'Parkes' THEN 'Mark Coulton'
    WHEN DivisionName = 'Goldstein' THEN 'Zoe Daniel'
    WHEN DivisionName = 'Oxley' THEN 'Milton Dick'
    WHEN DivisionName = 'Isaacs' THEN 'Mark Dreyfus'
    WHEN DivisionName = 'Dickson' THEN 'Peter Dutton'
    WHEN DivisionName = 'Richmond' THEN 'Justine Elliot'
    WHEN DivisionName = 'Leichhardt' THEN 'Warren Entsch'
    WHEN DivisionName = 'Holt' THEN 'Cassandra Fernando'
    WHEN DivisionName = 'Bradfield' THEN 'Paul Fletcher'
    WHEN DivisionName = 'Macarthur' THEN 'Mike Freelander'
    WHEN DivisionName = 'Chisholm' THEN 'Carina Garland'
    WHEN DivisionName = 'Calare' THEN 'Andrew Gee'
    WHEN DivisionName = 'Adelaide' THEN 'Steve Georganas'
    WHEN DivisionName = 'Scullin' THEN 'Andrew Giles'
    WHEN DivisionName = 'Lyne' THEN 'David Gillespie'
    WHEN DivisionName = 'Moore' THEN 'Ian Goodenough'
    WHEN DivisionName = 'Perth' THEN 'Patrick Gorman'
    WHEN DivisionName = 'Solomon' THEN 'Luke Gosling'
    WHEN DivisionName = 'Indi' THEN 'Helen Haines'
    WHEN DivisionName = 'Groom' THEN 'Garth Hamilton'
    WHEN DivisionName = 'Canning' THEN 'Andrew Hastie'
    WHEN DivisionName = 'Mitchell' THEN 'Alex Hawke'
    WHEN DivisionName = 'Bruce' THEN 'Julian Hill'
    WHEN DivisionName = 'Page' THEN 'Kevin Hogan'
    WHEN DivisionName = 'Petrie' THEN 'Luke Howarth'
    WHEN DivisionName = 'Chifley' THEN 'Ed Husic'
    WHEN DivisionName = 'Whitlam' THEN 'Stephen Jones'
    WHEN DivisionName = 'New England' THEN 'Barnaby Joyce'
    WHEN DivisionName = 'Kennedy' THEN 'Bob Katter'
    WHEN DivisionName = 'Cooper' THEN 'Ged Kearney'
    WHEN DivisionName = 'Burt' THEN 'Matt Keogh'
    WHEN DivisionName = 'Wills' THEN 'Peter Khalil'
    WHEN DivisionName = 'Ballarat' THEN 'Catherine King'
    WHEN DivisionName = 'Brand' THEN 'Madeleine King'
    WHEN DivisionName = 'Capricornia' THEN 'Michelle Landry'
    WHEN DivisionName = 'Hasluck' THEN 'Tania Lawrence'
    WHEN DivisionName = 'Bennelong' THEN 'Jerome Laxale'
    WHEN DivisionName = 'Fowler' THEN 'Dai Le'
    WHEN DivisionName = 'Berowra' THEN 'Julian Leeser'
    WHEN DivisionName = 'Fenner' THEN 'Andrew Leigh'
    WHEN DivisionName = 'Farrer' THEN 'Sussan Ley'
    WHEN DivisionName = 'Tangney' THEN 'Sam Lim'
    WHEN DivisionName = 'Maranoa' THEN 'David Littleproud'
    WHEN DivisionName = 'Forrest' THEN 'Nola Marino'
    WHEN DivisionName = 'Corio' THEN 'Richard Marles'
    WHEN DivisionName = 'Swan' THEN 'Zaneta Mascarenhas'
    WHEN DivisionName = 'Eden-Monaro' THEN 'Kristy McBain'
    WHEN DivisionName = 'Dobell' THEN 'Emma McBride'
    WHEN DivisionName = 'Riverina' THEN 'Michael McCormack'
    WHEN DivisionName = 'Lindsay' THEN 'Melissa McIntosh'
    WHEN DivisionName = 'Flinders' THEN 'Zoe McKenzie'
    WHEN DivisionName = 'Boothby' THEN 'Louise Miller-Frost'
    WHEN DivisionName = 'Lyons' THEN 'Brian Mitchell'
    WHEN DivisionName = 'McEwen' THEN 'Rob Mitchell'
    WHEN DivisionName = 'Cook' THEN 'Scott Morrison'
    WHEN DivisionName = 'Fraser' THEN 'Daniel Mulino'
    WHEN DivisionName = 'Dunkley' THEN 'Peta Murphy'
    WHEN DivisionName = 'Blair' THEN 'Shayne Neumann'
    WHEN DivisionName = 'Fairfax' THEN 'Ted O''Brien'
    WHEN DivisionName = 'Wide Bay' THEN 'Llew O''Brien'
    WHEN DivisionName = 'Gorton' THEN 'Brendan O''Connor'
    WHEN DivisionName = 'Hotham' THEN 'Clare O''Neil'
    WHEN DivisionName = 'Barker' THEN 'Tony Pasin'
    WHEN DivisionName = 'Canberra' THEN 'Alicia Payne'
    WHEN DivisionName = 'Braddon' THEN 'Gavin Pearce'
    WHEN DivisionName = 'Moreton' THEN 'Graham Perrett'
    WHEN DivisionName = 'Gilmore' THEN 'Fiona Phillips'
    WHEN DivisionName = 'Bowman' THEN 'Henry Pike'
    WHEN DivisionName = 'Hinkler' THEN 'Keith Pitt'
    WHEN DivisionName = 'Sydney' THEN 'Tanya Plibersek'
    WHEN DivisionName = 'Durack' THEN 'Melissa Price'
    WHEN DivisionName = 'Hawke' THEN 'Sam Rae'
    WHEN DivisionName = 'Grey' THEN 'Rowan Ramsey'
    WHEN DivisionName = 'Robertson' THEN 'Gordon Reid'
    WHEN DivisionName = 'Hunter' THEN 'Dan Repacholi'
    WHEN DivisionName = 'Kingston' THEN 'Amanda Rishworth'
    WHEN DivisionName = 'Pearce' THEN 'Tracey Roberts'
    WHEN DivisionName = 'Fadden' THEN 'Stuart Robert'
    WHEN DivisionName = 'Greenway' THEN 'Michelle Rowland'
    WHEN DivisionName = 'Lalor' THEN 'Joanne Ryan'
    WHEN DivisionName = 'Kooyong' THEN 'Monique Ryan'
    WHEN DivisionName = 'Mackellar' THEN 'Sophie Scamps'
    WHEN DivisionName = 'Lingiari' THEN 'Marion Scrymgour'
    WHEN DivisionName = 'Mayo' THEN 'Rebekha Sharkie'
    WHEN DivisionName = 'Maribyrnong' THEN 'Bill Shorten'
    WHEN DivisionName = 'Reid' THEN 'Sally Sitou'
    WHEN DivisionName = 'Bean' THEN 'David Smith'
    WHEN DivisionName = 'Wentworth' THEN 'Allegra Spender'
    WHEN DivisionName = 'Werriwa' THEN 'Anne Stanley'
    WHEN DivisionName = 'Warringah' THEN 'Zali Steggall'
    WHEN DivisionName = 'Sturt' THEN 'James Stevens'
    WHEN DivisionName = 'Deakin' THEN 'Michael Sukkar'
    WHEN DivisionName = 'Paterson' THEN 'Meryl Swanson'
    WHEN DivisionName = 'Hume' THEN 'Angus Taylor'
    WHEN DivisionName = 'Wannon' THEN 'Dan Tehan'
    WHEN DivisionName = 'Macquarie' THEN 'Susan Templeman'
    WHEN DivisionName = 'Kingsford Smith' THEN 'Matt Thistlethwaite'
    WHEN DivisionName = 'Herbert' THEN 'Phillip Thompson'
    WHEN DivisionName = 'Jagajaga' THEN 'Kate Thwaites'
    WHEN DivisionName = 'North Sydney' THEN 'Kylea Tink'
    WHEN DivisionName = 'Aston' THEN 'Alan Tudge'
    WHEN DivisionName = 'Calwell' THEN 'Maria Vamvakinou'
    WHEN DivisionName = 'Forde' THEN 'Bert van Manen'
    WHEN DivisionName = 'Bonner' THEN 'Ross Vasta'
    WHEN DivisionName = 'Casey' THEN 'Aaron Violi'
    WHEN DivisionName = 'Fisher' THEN 'Andrew Wallace'
    WHEN DivisionName = 'Hughes' THEN 'Jenny Ware'
    WHEN DivisionName = 'Ryan' THEN 'Elizabeth Watson-Brown'
    WHEN DivisionName = 'Gellibrand' THEN 'Tim Watts'
    WHEN DivisionName = 'Mallee' THEN 'Anne Webster'
    WHEN DivisionName = 'Lilley' THEN 'Anika Wells'
    WHEN DivisionName = 'Clark' THEN 'Andrew Wilkie'
    WHEN DivisionName = 'Dawson' THEN 'Andrew Willcox'
    WHEN DivisionName = 'Fremantle' THEN 'Josh Wilson'
    WHEN DivisionName = 'O''Connor' THEN 'Rick Wilson'
    WHEN DivisionName = 'Menzies' THEN 'Keith Wolahan'
    WHEN DivisionName = 'La Trobe' THEN 'Jason Wood'
    WHEN DivisionName = 'Longman' THEN 'Terry Young'
    WHEN DivisionName = 'Makin' THEN 'Tony Zappia'
    ELSE CurrMember
END;




DELETE FROM VoterRegistry;
SELECT * FROM VoterRegistry;
-- Insert voter details into VoterRegistry table
INSERT INTO VoterRegistry (VoterID, FirstName, MiddleNames, LastName, Address, DateofBirth, Gender, ResidentialAddress, PostalAddress, ContactPhone, ContactMobile, ContactEmail, DivisionName, ElectionEventID)
VALUES
(1,'John','Alexander','Smith','123 King St, Sydney, NSW 2000','1985-03-15','Male','123 King St, Sydney, NSW 2000','PO Box 123, Sydney, NSW 2000','0298765432','0412345678','john.smith@example.com','Sydney',20220521087),
(2,'Emily','Rose','Johnson','45 Queen St, Melbourne, VIC 3000','1990-07-22','Female','45 Queen St, Melbourne, VIC 3000','PO Box 456, Melbourne, VIC 3000','0387654321','0423456789','emily.johnson@example.com','Melbourne',20220521112),
(3,'James','Michael','Williams','78 George St, Brisbane, QLD 4000','1978-12-05','Male','78 George St, Brisbane, QLD 4000','PO Box 789, Brisbane, QLD 4000','0738765432','0434567890','james.williams@example.com','Brisbane',20220521034),
(4,'Olivia','Grace','Brown','12 Collins St, Adelaide, SA 5000','1982-04-17','Female','12 Collins St, Adelaide, SA 5000','PO Box 012, Adelaide, SA 5000','0887654321','0445678901','olivia.brown@example.com','Adelaide',20220521145),
(5,'Liam','Edward','Taylor','34 Stirling Hwy, Perth, WA 6000','1975-09-30','Male','34 Stirling Hwy, Perth, WA 6000','PO Box 345, Perth, WA 6000','0898765432','0456789012','liam.taylor@example.com','Perth',20220521019),
(6,'Sophia','Jane','Davis','56 Hindley St, Adelaide, SA 5000','1995-11-11','Female','56 Hindley St, Adelaide, SA 5000','PO Box 678, Adelaide, SA 5000','0887654322','0467890123','sophia.davis@example.com','Adelaide',20220521073),
(7,'William','Henry','Wilson','67 Oxford St, Sydney, NSW 2000','1980-02-28','Male','67 Oxford St, Sydney, NSW 2000','PO Box 789, Sydney, NSW 2000','0298765433','0478901234','william.wilson@example.com','Sydney',20220521098),
(8,'Isabella','Louise','Moore','89 Bourke St, Melbourne, VIC 3000','1988-06-14','Female','89 Bourke St, Melbourne, VIC 3000','PO Box 890, Melbourne, VIC 3000','0387654322','0489012345','isabella.moore@example.com','Melbourne',20220521128),
(9,'Noah','Thomas','Anderson','23 Murray St, Perth, WA 6000','1992-10-09','Male','23 Murray St, Perth, WA 6000','PO Box 123, Perth, WA 6000','0898765433','0490123456','noah.anderson@example.com','Perth',20220521005),
(10,'Mia','Elizabeth','Martin','101 Collins St, Brisbane, QLD 4000','1998-05-21','Female','101 Collins St, Brisbane, QLD 4000','PO Box 101, Brisbane, QLD 4000','0738765433','0412345678','mia.martin@example.com','Brisbane',20220521066),
(11, 'Lucas', 'James', 'Harris', '22 Smith St, Aston, VIC 3080', '1984-03-25', 'Male', '22 Smith St, Aston, VIC 3080', 'PO Box 234, Aston, VIC 3080', '0398765432', '0412345679', 'lucas.harris@example.com', 'Aston', 20220521087),
(12, 'Grace', 'Anna', 'Walker', '34 High St, Ballarat, VIC 3350', '1989-07-14', 'Female', '34 High St, Ballarat, VIC 3350', 'PO Box 456, Ballarat, VIC 3350', '0356789012', '0423456789', 'grace.walker@example.com', 'Ballarat', 20220521012),
(13, 'Mason', 'Oliver', 'Clark', '56 Elm St, Banks, NSW 2210', '1992-10-05', 'Male', '56 Elm St, Banks, NSW 2210', 'PO Box 678, Banks, NSW 2210', '0298765433', '0434567891', 'mason.clark@example.com', 'Banks', 20220521134),
(14, 'Ella', 'Rose', 'Miller', '78 Park Rd, Barker, SA 5060', '1987-12-17', 'Female', '78 Park Rd, Barker, SA 5060', 'PO Box 789, Barker, SA 5060', '0887654321', '0445678902', 'ella.miller@example.com', 'Barker', 20220521055),
(15, 'Ethan', 'Ryan', 'Young', '90 Main St, Barton, NSW 2000', '1991-11-25', 'Male', '90 Main St, Barton, NSW 2000', 'PO Box 890, Barton, NSW 2000', '0298765434', '0456789012', 'ethan.young@example.com', 'Barton', 20220521003),
(16, 'Chloe', 'Sophia', 'Turner', '12 Victoria St, Bass, TAS 7000', '1994-04-18', 'Female', '12 Victoria St, Bass, TAS 7000', 'PO Box 123, Bass, TAS 7000', '0367890123', '0467890123', 'chloe.turner@example.com', 'Bass', 20220521110),
(17, 'Jackson', 'Liam', 'Wright', '23 George St, Bean, ACT 2600', '1983-06-30', 'Male', '23 George St, Bean, ACT 2600', 'PO Box 234, Bean, ACT 2600', '0267890123', '0478901234', 'jackson.wright@example.com', 'Bean', 20220521094),
(18, 'Ava', 'Grace', 'Parker', '45 Collins St, Bendigo, VIC 3550', '1990-08-20', 'Female', '45 Collins St, Bendigo, VIC 3550', 'PO Box 456, Bendigo, VIC 3550', '0356789013', '0489012345', 'ava.parker@example.com', 'Bendigo', 20220521028),
(19, 'Liam', 'Michael', 'Hall', '67 Smith Rd, Bennelong, NSW 2119', '1985-01-13', 'Male', '67 Smith Rd, Bennelong, NSW 2119', 'PO Box 678, Bennelong, NSW 2119', '0298765435', '0490123456', 'liam.hall@example.com', 'Bennelong', 20220521145),
(20, 'Isabella', 'Olivia', 'Moore', '89 Albert St, Berowra, NSW 2081', '1992-03-09', 'Female', '89 Albert St, Berowra, NSW 2081', 'PO Box 789, Berowra, NSW 2081', '0298765436', '0412345670', 'isabella.moore@example.com', 'Berowra', 20220521061),
(21, 'Oliver', 'Thomas', 'Anderson', '12 King St, Brisbane, QLD 4000', '1990-02-14', 'Male', '12 King St, Brisbane, QLD 4000', 'PO Box 567, Brisbane, QLD 4000', '0734567890', '0498765432', 'oliver.anderson@example.com', 'Brisbane', 20220521017),
(22, 'Emily', 'Jane', 'Bennett', '56 Market St, Sydney, NSW 2000', '1985-11-22', 'Female', '56 Market St, Sydney, NSW 2000', 'PO Box 123, Sydney, NSW 2000', '0298765433', '0412345678', 'emily.bennett@example.com', 'Sydney', 20220521122),
(23, 'James', 'Robert', 'Carter', '78 George St, Melbourne, VIC 3000', '1982-08-30', 'Male', '78 George St, Melbourne, VIC 3000', 'PO Box 456, Melbourne, VIC 3000', '0398765434', '0423456789', 'james.carter@example.com', 'Melbourne', 20220521074),
(24, 'Sophia', 'Grace', 'Davis', '22 Smith St, Perth, WA 6000', '1993-05-19', 'Female', '22 Smith St, Perth, WA 6000', 'PO Box 789, Perth, WA 6000', '0898765432', '0434567890', 'sophia.davis@example.com', 'Perth', 20220521109),
(25, 'Ethan', 'James', 'Edwards', '34 High St, Adelaide, SA 5000', '1995-07-12', 'Male', '34 High St, Adelaide, SA 5000', 'PO Box 123, Adelaide, SA 5000', '0887654321', '0445678901', 'ethan.edwards@example.com', 'Adelaide', 20220521036),
(26, 'Mia', 'Rose', 'Evans', '89 Murray St, Hobart, TAS 7000', '1991-09-15', 'Female', '89 Murray St, Hobart, TAS 7000', 'PO Box 234, Hobart, TAS 7000', '0367890123', '0456789012', 'mia.evans@example.com', 'Clark', 20220521099),
(27, 'Liam', 'Alexander', 'Foster', '56 Queen St, Darwin, NT 0800', '1989-03-21', 'Male', '56 Queen St, Darwin, NT 0800', 'PO Box 345, Darwin, NT 0800', '0887654322', '0467890123', 'liam.foster@example.com', 'Lingiari', 20220521131),
(28, 'Charlotte', 'Mae', 'Garcia', '45 Collins St, Canberra, ACT 2600', '1992-11-02', 'Female', '45 Collins St, Canberra, ACT 2600', 'PO Box 456, Canberra, ACT 2600', '0267890123', '0478901234', 'charlotte.garcia@example.com', 'Canberra', 20220521008),
(29, 'Noah', 'William', 'Harris', '67 Park St, Gold Coast, QLD 4217', '1987-04-27', 'Male', '67 Park St, Gold Coast, QLD 4217', 'PO Box 567, Gold Coast, QLD 4217', '0756789012', '0489012345', 'noah.harris@example.com', 'Moncrieff', 20220521150),
(30, 'Isabella', 'Grace', 'Hill', '78 River St, Newcastle, NSW 2300', '1994-06-14', 'Female', '78 River St, Newcastle, NSW 2300', 'PO Box 678, Newcastle, NSW 2300', '0245678901', '0490123456', 'isabella.hill@example.com', 'Newcastle', 20220521042),
(31, 'Jack', 'Henry', 'Wilson', '12 High St, Blair, QLD 4305', '1986-02-25', 'Male', '12 High St, Blair, QLD 4305', 'PO Box 234, Blair, QLD 4305', '0734567890', '0498765432', 'jack.wilson@example.com', 'Blair', 20220521019),
(32, 'Amelia', 'Sophie', 'Scott', '34 Oak St, Wills, VIC 3058', '1993-09-12', 'Female', '34 Oak St, Wills, VIC 3058', 'PO Box 345, Wills, VIC 3058', '0398765433', '0412345678', 'amelia.scott@example.com', 'Wills', 20220521107),
(33, 'Benjamin', 'David', 'Brooks', '45 King St, Spence, SA 5082', '1988-07-08', 'Male', '45 King St, Spence, SA 5082', 'PO Box 456, Spence, SA 5082', '0887654321', '0423456789', 'benjamin.brooks@example.com', 'Spence', 20220521073),
(34, 'Olivia', 'Lucy', 'Gray', '56 Queen St, Curtin, WA 6010', '1991-11-16', 'Female', '56 Queen St, Curtin, WA 6010', 'PO Box 567, Curtin, WA 6010', '0898765432', '0434567890', 'olivia.gray@example.com', 'Curtin', 20220521041),
(35, 'Alexander', 'Matthew', 'Morgan', '67 William St, Solomon, NT 0820', '1995-05-14', 'Male', '67 William St, Solomon, NT 0820', 'PO Box 678, Solomon, NT 0820', '0887654322', '0445678901', 'alexander.morgan@example.com', 'Solomon', 20220521129),
(36, 'Ella', 'Rose', 'Bailey', '78 George St, Ryan, QLD 4068', '1983-10-22', 'Female', '78 George St, Ryan, QLD 4068', 'PO Box 789, Ryan, QLD 4068', '0756789012', '0456789012', 'ella.bailey@example.com', 'Ryan', 20220521004),
(37, 'Daniel', 'James', 'Reed', '89 Market St, Macnamara, VIC 3206', '1989-03-19', 'Male', '89 Market St, Macnamara, VIC 3206', 'PO Box 123, Macnamara, VIC 3206', '0398765434', '0467890123', 'daniel.reed@example.com', 'Macnamara', 20220521088),
(38, 'Sophie', 'Grace', 'Price', '90 Park Rd, Mayo, SA 5243', '1987-06-17', 'Female', '90 Park Rd, Mayo, SA 5243', 'PO Box 234, Mayo, SA 5243', '0887654323', '0478901234', 'sophie.price@example.com', 'Mayo', 20220521146),
(39, 'Jacob', 'Michael', 'Clark', '12 Victoria St, Lyons, TAS 7140', '1992-04-28', 'Male', '12 Victoria St, Lyons, TAS 7140', 'PO Box 345, Lyons, TAS 7140', '0367890123', '0489012345', 'jacob.clark@example.com', 'Lyons', 20220521062),
(40, 'Charlotte', 'Mae', 'Cooper', '34 River St, Moncrieff, QLD 4217', '1990-12-03', 'Female', '34 River St, Moncrieff, QLD 4217', 'PO Box 456, Moncrieff, QLD 4217', '0756789013', '0490123456', 'charlotte.cooper@example.com', 'Moncrieff', 20220521095),
(41, 'Ethan', 'Andrew', 'Collins', '12 River Rd, Fairfax, QLD 4560', '1985-08-19', 'Male', '12 River Rd, Fairfax, QLD 4560', 'PO Box 567, Fairfax, QLD 4560', '0745678901', '0498765432', 'ethan.collins@example.com', 'Fairfax', 20220521027),
(42, 'Grace', 'Elizabeth', 'Cook', '23 Victoria Ave, Perth, WA 6000', '1991-12-10', 'Female', '23 Victoria Ave, Perth, WA 6000', 'PO Box 789, Perth, WA 6000', '0898765433', '0412345678', 'grace.cook@example.com', 'Perth', 20220521118),
(43, 'Logan', 'Samuel', 'Fisher', '45 Pine St, Dunkley, VIC 3199', '1993-03-05', 'Male', '45 Pine St, Dunkley, VIC 3199', 'PO Box 234, Dunkley, VIC 3199', '0398765434', '0423456789', 'logan.fisher@example.com', 'Dunkley', 20220521052),
(44, 'Lily', 'Anna', 'Foster', '67 Birch St, Newcastle, NSW 2300', '1987-06-11', 'Female', '67 Birch St, Newcastle, NSW 2300', 'PO Box 345, Newcastle, NSW 2300', '0245678901', '0434567890', 'lily.foster@example.com', 'Newcastle', 20220521009),
(45, 'Mason', 'David', 'Griffin', '89 Maple St, Wannon, VIC 3315', '1982-01-22', 'Male', '89 Maple St, Wannon, VIC 3315', 'PO Box 456, Wannon, VIC 3315', '0398765435', '0445678901', 'mason.griffin@example.com', 'Wannon', 20220521133),
(46, 'Hannah', 'Sophia', 'Hughes', '12 Palm Rd, Monash, VIC 3800', '1995-04-18', 'Female', '12 Palm Rd, Monash, VIC 3800', 'PO Box 567, Monash, VIC 3800', '0398765436', '0456789012', 'hannah.hughes@example.com', 'Monash', 20220521066),
(47, 'Carter', 'William', 'Morris', '34 Elm St, Higgins, VIC 3146', '1990-09-14', 'Male', '34 Elm St, Higgins, VIC 3146', 'PO Box 789, Higgins, VIC 3146', '0398765437', '0467890123', 'carter.morris@example.com', 'Higgins', 20220521151),
(48, 'Scarlett', 'Isabella', 'Parker', '56 Oak St, Macarthur, NSW 2560', '1988-11-23', 'Female', '56 Oak St, Macarthur, NSW 2560', 'PO Box 123, Macarthur, NSW 2560', '0298765432', '0478901234', 'scarlett.parker@example.com', 'Macarthur', 20220521033),
(49, 'Luke', 'Matthew', 'Powell', '78 Cedar Ave, Griffith, QLD 4222', '1992-07-30', 'Male', '78 Cedar Ave, Griffith, QLD 4222', 'PO Box 234, Griffith, QLD 4222', '0756789013', '0489012345', 'luke.powell@example.com', 'Griffith', 20220521084),
(50, 'Samantha', 'Rose', 'Turner', '90 Palm St, Calare, NSW 2800', '1996-05-07', 'Female', '90 Palm St, Calare, NSW 2800', 'PO Box 345, Calare, NSW 2800', '0267890123', '0490123456', 'samantha.turner@example.com', 'Calare', 20220521112),
(51, 'Olivia', 'Grace', 'Carter', '21 Maple Ave, Fowler, NSW 2176', '1989-08-19', 'Female', '21 Maple Ave, Fowler, NSW 2176', 'PO Box 567, Fowler, NSW 2176', '0298765432', '0412345678', 'olivia.carter@example.com', 'Fowler', 20220521025),
(52, 'Henry', 'James', 'Wright', '32 River Rd, Calwell, VIC 3037', '1983-10-23', 'Male', '32 River Rd, Calwell, VIC 3037', 'PO Box 789, Calwell, VIC 3037', '0398765433', '0423456789', 'henry.wright@example.com', 'Calwell', 20220521109),
(53, 'Ava', 'Isabella', 'Evans', '45 Ocean St, Farrer, NSW 2640', '1992-03-12', 'Female', '45 Ocean St, Farrer, NSW 2640', 'PO Box 234, Farrer, NSW 2640', '0267890123', '0434567890', 'ava.evans@example.com', 'Farrer', 20220521068),
(54, 'Lucas', 'William', 'Adams', '56 High St, Eden-Monaro, NSW 2620', '1985-06-17', 'Male', '56 High St, Eden-Monaro, NSW 2620', 'PO Box 345, Eden-Monaro, NSW 2620', '0265432109', '0445678901', 'lucas.adams@example.com', 'Eden-Monaro', 20220521132),
(55, 'Mia', 'Sophia', 'Reed', '67 Oak St, Casey, VIC 3977', '1990-11-22', 'Female', '67 Oak St, Casey, VIC 3977', 'PO Box 456, Casey, VIC 3977', '0398765434', '0456789012', 'mia.reed@example.com', 'Casey', 20220521007),
(56, 'Noah', 'Alexander', 'Murphy', '78 Cedar St, Hotham, VIC 3171', '1987-02-14', 'Male', '78 Cedar St, Hotham, VIC 3171', 'PO Box 567, Hotham, VIC 3171', '0398765435', '0467890123', 'noah.murphy@example.com', 'Hotham', 20220521094),
(57, 'Isabella', 'Emily', 'Stewart', '89 King St, Deakin, VIC 3101', '1988-05-09', 'Female', '89 King St, Deakin, VIC 3101', 'PO Box 789, Deakin, VIC 3101', '0398765436', '0478901234', 'isabella.stewart@example.com', 'Deakin', 20220521121),
(58, 'Liam', 'David', 'King', '12 Queen St, Kennedy, QLD 4810', '1993-09-14', 'Male', '12 Queen St, Kennedy, QLD 4810', 'PO Box 123, Kennedy, QLD 4810', '0745678901', '0489012345', 'liam.king@example.com', 'Kennedy', 20220521039),
(59, 'Sophia', 'Charlotte', 'Cole', '34 Park Rd, Hunter, NSW 2320', '1989-12-07', 'Female', '34 Park Rd, Hunter, NSW 2320', 'PO Box 234, Hunter, NSW 2320', '0267890124', '0490123456', 'sophia.cole@example.com', 'Hunter', 20220521148),
(60, 'Jackson', 'Michael', 'Morgan', '56 Victoria Ave, Gellibrand, VIC 3015', '1986-01-28', 'Male', '56 Victoria Ave, Gellibrand, VIC 3015', 'PO Box 345, Gellibrand, VIC 3015', '0398765437', '0491234567', 'jackson.morgan@example.com', 'Gellibrand', 20220521051),
(61, 'Emily', 'Rose', 'Harris', '123 Elm St, Ballarat, VIC 3350', '1994-04-29', 'Female', '123 Elm St, Ballarat, VIC 3350', 'PO Box 456, Ballarat, VIC 3350', '0356789012', '0412345679', 'emily.harris@example.com', 'Ballarat', 20220521016),
(62, 'Evan', 'George', 'Morris', '234 Maple St, Barton, NSW 2000', '1989-07-15', 'Male', '234 Maple St, Barton, NSW 2000', 'PO Box 567, Barton, NSW 2000', '0298765432', '0423456789', 'evan.morris@example.com', 'Barton', 20220521137),
(63, 'Zoe', 'Lily', 'Patterson', '345 Oak St, Higgins, VIC 3146', '1990-03-22', 'Female', '345 Oak St, Higgins, VIC 3146', 'PO Box 678, Higgins, VIC 3146', '0398765438', '0434567890', 'zoe.patterson@example.com', 'Higgins', 20220521082),
(64, 'Aiden', 'Jacob', 'Phillips', '456 Pine St, Wright, QLD 4209', '1992-06-10', 'Male', '456 Pine St, Wright, QLD 4209', 'PO Box 789, Wright, QLD 4209', '0756789014', '0445678901', 'aiden.phillips@example.com', 'Wright', 20220521003),
(65, 'Megan', 'Alyssa', 'Ross', '567 Cedar St, Maranoa, QLD 4714', '1986-10-05', 'Female', '567 Cedar St, Maranoa, QLD 4714', 'PO Box 123, Maranoa, QLD 4714', '0745678902', '0456789013', 'megan.ross@example.com', 'Maranoa', 20220521115),
(66, 'Ryan', 'Ethan', 'Gray', '678 Birch St, Gorton, VIC 3146', '1991-08-14', 'Male', '678 Birch St, Gorton, VIC 3146', 'PO Box 234, Gorton, VIC 3146', '0398765439', '0467890124', 'ryan.gray@example.com', 'Gorton', 20220521060),
(67, 'Sophia', 'Emily', 'Sullivan', '789 King St, Perth, WA 6000', '1994-09-30', 'Female', '789 King St, Perth, WA 6000', 'PO Box 345, Perth, WA 6000', '0898765434', '0478901235', 'sophia.sullivan@example.com', 'Perth', 20220521144),
(68, 'Jackson', 'Ryan', 'Chapman', '890 Queen St, Berowra, NSW 2081', '1987-12-11', 'Male', '890 Queen St, Berowra, NSW 2081', 'PO Box 456, Berowra, NSW 2081', '0298765433', '0489012346', 'jackson.chapman@example.com', 'Berowra', 20220521012),
(69, 'Ella', 'Mia', 'Stewart', '123 High St, Kooyong, VIC 3144', '1990-01-05', 'Female', '123 High St, Kooyong, VIC 3144', 'PO Box 567, Kooyong, VIC 3144', '0398765440', '0490123456', 'ella.stewart@example.com', 'Kooyong', 20220521098),
(70, 'Liam', 'Daniel', 'O’Connor', '234 Elm St, Robertson, NSW 2077', '1985-11-30', 'Male', '234 Elm St, Robertson, NSW 2077', 'PO Box 678, Robertson, NSW 2077', '0298765434', '0491234567', 'liam.oconnor@example.com', 'Robertson', 20220521127),
(71, 'Lily', 'Victoria', 'Johnston', '345 Birch St, Richmond, NSW 2753', '1991-05-20', 'Female', '345 Birch St, Richmond, NSW 2753', 'PO Box 456, Richmond, NSW 2753', '0298765435', '0412345679', 'lily.johnston@example.com', 'Richmond', 20220521044),
(72, 'Oliver', 'Henry', 'Harris', '456 Oak Ave, Brand, WA 6164', '1990-02-12', 'Male', '456 Oak Ave, Brand, WA 6164', 'PO Box 567, Brand, WA 6164', '0898765435', '0423456789', 'oliver.harris@example.com', 'Brand', 20220521140),
(73, 'Charlotte', 'Grace', 'Walker', '567 Maple Rd, Bean, ACT 2617', '1995-06-30', 'Female', '567 Maple Rd, Bean, ACT 2617', 'PO Box 678, Bean, ACT 2617', '0267890124', '0434567890', 'charlotte.walker@example.com', 'Bean', 20220521022),
(74, 'James', 'Robert', 'White', '678 Elm St, Blaxland, NSW 2774', '1989-08-14', 'Male', '678 Elm St, Blaxland, NSW 2774', 'PO Box 789, Blaxland, NSW 2774', '0298765436', '0445678901', 'james.white@example.com', 'Blaxland', 20220521119),
(75, 'Ava', 'Megan', 'Wright', '789 Cedar St, Flynn, QLD 4570', '1987-03-22', 'Female', '789 Cedar St, Flynn, QLD 4570', 'PO Box 234, Flynn, QLD 4570', '0745678903', '0456789012', 'ava.wright@example.com', 'Flynn', 20220521070),
(76, 'Liam', 'Daniel', 'Harris', '890 Pine St, Kooyong, VIC 3144', '1990-11-01', 'Male', '890 Pine St, Kooyong, VIC 3144', 'PO Box 345, Kooyong, VIC 3144', '0398765438', '0467890123', 'liam.harris@example.com', 'Kooyong', 20220521005),
(77, 'Isabella', 'Ella', 'Foster', '101 Maple Ave, Oxley, QLD 4075', '1989-02-17', 'Female', '101 Maple Ave, Oxley, QLD 4075', 'PO Box 456, Oxley, QLD 4075', '0756789015', '0478901234', 'isabella.foster@example.com', 'Oxley', 20220521136),
(78, 'Mason', 'Jack', 'Moore', '212 Oak St, Cunningham, NSW 2200', '1991-07-30', 'Male', '212 Oak St, Cunningham, NSW 2200', 'PO Box 567, Cunningham, NSW 2200', '0298765437', '0489012345', 'mason.moore@example.com', 'Cunningham', 20220521089),
(79, 'Sophia', 'Chloe', 'Stewart', '323 Birch Ave, Gilmore, NSW 2700', '1988-12-04', 'Female', '323 Birch Ave, Gilmore, NSW 2700', 'PO Box 678, Gilmore, NSW 2700', '0267890125', '0490123456', 'sophia.stewart@example.com', 'Gilmore', 20220521150),
(80, 'Ethan', 'Michael', 'Lee', '434 Cedar St, Hume, NSW 2580', '1992-09-21', 'Male', '434 Cedar St, Hume, NSW 2580', 'PO Box 789, Hume, NSW 2580', '0298765438', '0491234567', 'ethan.lee@example.com', 'Hume', 20220521034),
(81, 'Hannah', 'Molly', 'Cox', '45 Elm St, Dickson, QLD 4031', '1994-04-07', 'Female', '45 Elm St, Dickson, QLD 4031', 'PO Box 123, Dickson, QLD 4031', '0745678904', '0412345670', 'hannah.cox@example.com', 'Dickson', 20220521073),
(82, 'Jacob', 'Samuel', 'Price', '56 Maple St, Kingsford Smith, NSW 2033', '1991-05-14', 'Male', '56 Maple St, Kingsford Smith, NSW 2033', 'PO Box 234, Kingsford Smith, NSW 2033', '0298765439', '0423456789', 'jacob.price@example.com', 'Kingsford Smith', 20220521012),
(83, 'Emma', 'Ava', 'Parker', '67 Pine Rd, Wannon, VIC 3300', '1993-07-22', 'Female', '67 Pine Rd, Wannon, VIC 3300', 'PO Box 345, Wannon, VIC 3300', '0398765441', '0434567891', 'emma.parker@example.com', 'Wannon', 20220521145),
(84, 'William', 'James', 'Wood', '78 Oak St, Watson, NSW 2601', '1988-12-15', 'Male', '78 Oak St, Watson, NSW 2601', 'PO Box 456, Watson, NSW 2601', '0298765440', '0445678902', 'william.wood@example.com', 'Watson', 20220521034),
(85, 'Olivia', 'Ella', 'Baker', '89 Birch Ave, Grayndler, NSW 2200', '1992-01-30', 'Female', '89 Birch Ave, Grayndler, NSW 2200', 'PO Box 567, Grayndler, NSW 2200', '0298765441', '0456789013', 'olivia.baker@example.com', 'Grayndler', 20220521098),
(86, 'Daniel', 'Jacob', 'Jenkins', '90 Cedar St, Leichhardt, QLD 4068', '1989-04-23', 'Male', '90 Cedar St, Leichhardt, QLD 4068', 'PO Box 678, Leichhardt, QLD 4068', '0745678905', '0467890125', 'daniel.jenkins@example.com', 'Leichhardt', 20220521121),
(87, 'Mia', 'Sophie', 'Hughes', '12 Maple St, Mackellar, NSW 2060', '1991-11-08', 'Female', '12 Maple St, Mackellar, NSW 2060', 'PO Box 789, Mackellar, NSW 2060', '0298765442', '0478901236', 'mia.hughes@example.com', 'Mackellar', 20220521007),
(88, 'Ethan', 'Aiden', 'Fitzgerald', '23 Elm St, Cowper, NSW 2450', '1990-09-25', 'Male', '23 Elm St, Cowper, NSW 2450', 'PO Box 123, Cowper, NSW 2450', '0267890126', '0489012347', 'ethan.fitzgerald@example.com', 'Cowper', 20220521150),
(89, 'Sophia', 'Grace', 'Carter', '34 Pine Ave, Sydney, NSW 2000', '1993-02-17', 'Female', '34 Pine Ave, Sydney, NSW 2000', 'PO Box 234, Sydney, NSW 2000', '0298765443', '0490123457', 'sophia.carter@example.com', 'Sydney', 20220521056),
(90, 'James', 'Ryan', 'Bennett', '45 Cedar St, Mitchell, NSW 2217', '1986-08-13', 'Male', '45 Cedar St, Mitchell, NSW 2217', 'PO Box 345, Mitchell, NSW 2217', '0298765444', '0491234568', 'james.bennett@example.com', 'Mitchell', 20220521109),
(91, 'Ella', 'Madison', 'Clark', '56 Birch St, Goldstein, VIC 3188', '1992-01-19', 'Female', '56 Birch St, Goldstein, VIC 3188', 'PO Box 456, Goldstein, VIC 3188', '0398765445', '0412345678', 'ella.clark@example.com', 'Goldstein', 20220521003),
(92, 'Liam', 'Alexander', 'James', '67 Cedar Rd, Braddon, TAS 7000', '1989-12-01', 'Male', '67 Cedar Rd, Braddon, TAS 7000', 'PO Box 567, Braddon, TAS 7000', '0367890123', '0423456789', 'liam.james@example.com', 'Braddon', 20220521132),
(93, 'Charlotte', 'Isabella', 'Lee', '78 Oak Ave, Cowan, WA 6065', '1993-07-07', 'Female', '78 Oak Ave, Cowan, WA 6065', 'PO Box 678, Cowan, WA 6065', '0898765436', '0434567890', 'charlotte.lee@example.com', 'Cowan', 20220521088),
(94, 'Benjamin', 'Noah', 'Miller', '89 Maple St, Blair, QLD 4306', '1990-05-20', 'Male', '89 Maple St, Blair, QLD 4306', 'PO Box 789, Blair, QLD 4306', '0745678906', '0445678901', 'benjamin.miller@example.com', 'Blair', 20220521141),
(95, 'Ava', 'Olivia', 'Wood', '12 Elm St, Casey, VIC 3850', '1995-03-14', 'Female', '12 Elm St, Casey, VIC 3850', 'PO Box 123, Casey, VIC 3850', '0398765446', '0456789014', 'ava.wood@example.com', 'Casey', 20220521027),
(96, 'William', 'James', 'Thompson', '23 Pine Rd, Makin, SA 5114', '1988-10-28', 'Male', '23 Pine Rd, Makin, SA 5114', 'PO Box 234, Makin, SA 5114', '0887654321', '0467890124', 'william.thompson@example.com', 'Makin', 20220521118),
(97, 'Sophia', 'Grace', 'Jenkins', '34 Oak Ave, Fadden, QLD 4133', '1991-11-22', 'Female', '34 Oak Ave, Fadden, QLD 4133', 'PO Box 345, Fadden, QLD 4133', '0745678907', '0478901235', 'sophia.jenkins@example.com', 'Fadden', 20220521064),
(98, 'Jackson', 'Ethan', 'Smith', '45 Cedar St, Hotham, VIC 3175', '1989-09-10', 'Male', '45 Cedar St, Hotham, VIC 3175', 'PO Box 456, Hotham, VIC 3175', '0398765447', '0489012346', 'jackson.smith@example.com', 'Hotham', 20220521127),
(99, 'Mia', 'Chloe', 'Roberts', '56 Maple St, Moreton, QLD 4172', '1994-04-06', 'Female', '56 Maple St, Moreton, QLD 4172', 'PO Box 567, Moreton, QLD 4172', '0745678908', '0490123456', 'mia.roberts@example.com', 'Moreton', 20220521049),
(100, 'Ethan', 'Daniel', 'Harrison', '67 Birch St, Dawson, QLD 4700', '1992-08-16', 'Male', '67 Birch St, Dawson, QLD 4700', 'PO Box 678, Dawson, QLD 4700', '0745678909', '0412345679', 'ethan.harrison@example.com', 'Dawson', 20220521136);
INSERT INTO VoterRegistry (VoterID, FirstName, MiddleNames, LastName, Address, DateofBirth, Gender, ResidentialAddress, PostalAddress, ContactPhone, ContactMobile, ContactEmail, DivisionName)
VALUES
(101, 'Aiden', 'James', 'Morgan', '12 Oak St, Bonner, QLD 4031', '1985-11-12', 'Male', '12 Oak St, Bonner, QLD 4031', 'PO Box 123, Bonner, QLD 4031', '0745678907', '0412345672', 'aiden.morgan@example.com', 'Bonner'),
(102, 'Olivia', 'Kate', 'Harris', '34 Pine Ave, Boothby, SA 5041', '1991-03-22', 'Female', '34 Pine Ave, Boothby, SA 5041', 'PO Box 234, Boothby, SA 5041', '0887654321', '0423456783', 'olivia.harris@example.com', 'Boothby'),
(103, 'Ethan', 'Daniel', 'Taylor', '56 Cedar St, Bowman, QLD 4070', '1988-07-19', 'Male', '56 Cedar St, Bowman, QLD 4070', 'PO Box 345, Bowman, QLD 4070', '0745678908', '0434567893', 'ethan.taylor@example.com', 'Bowman'),
(104, 'Emma', 'Sophie', 'White', '78 Birch Rd, Bradfield, NSW 2070', '1994-10-05', 'Female', '78 Birch Rd, Bradfield, NSW 2070', 'PO Box 456, Bradfield, NSW 2070', '0298765448', '0445678904', 'emma.white@example.com', 'Bradfield'),
(105, 'Liam', 'Michael', 'Johnson', '90 Maple St, Bruce, VIC 3218', '1990-02-14', 'Male', '90 Maple St, Bruce, VIC 3218', 'PO Box 567, Bruce, VIC 3218', '0398765449', '0456789015', 'liam.johnson@example.com', 'Bruce'),
(106, 'Sophia', 'Ella', 'Brown', '12 Oak St, Burt, WA 6164', '1989-09-28', 'Female', '12 Oak St, Burt, WA 6164', 'PO Box 678, Burt, WA 6164', '0898765438', '0467890127', 'sophia.brown@example.com', 'Burt'),
(107, 'Jacob', 'Ryan', 'Williams', '34 Pine Rd, Canning, WA 6107', '1992-05-17', 'Male', '34 Pine Rd, Canning, WA 6107', 'PO Box 789, Canning, WA 6107', '0898765439', '0478901239', 'jacob.williams@example.com', 'Canning'),
(108, 'Mia', 'Grace', 'Davis', '56 Cedar Ave, Capricornia, QLD 4700', '1988-11-19', 'Female', '56 Cedar Ave, Capricornia, QLD 4700', 'PO Box 123, Capricornia, QLD 4700', '0745678909', '0489012340', 'mia.davis@example.com', 'Capricornia'),
(109, 'Noah', 'Jack', 'Miller', '78 Birch St, Chifley, NSW 2140', '1990-07-21', 'Male', '78 Birch St, Chifley, NSW 2140', 'PO Box 234, Chifley, NSW 2140', '0298765449', '0490123456', 'noah.miller@example.com', 'Chifley'),
(110, 'Ava', 'Megan', 'Wilson', '90 Oak Ave, Chisholm, VIC 3140', '1993-12-06', 'Female', '90 Oak Ave, Chisholm, VIC 3140', 'PO Box 345, Chisholm, VIC 3140', '0398765450', '0412345673', 'ava.wilson@example.com', 'Chisholm'),
(111, 'Oliver', 'Liam', 'Moore', '12 Cedar St, Cook, NSW 2076', '1987-04-13', 'Male', '12 Cedar St, Cook, NSW 2076', 'PO Box 456, Cook, NSW 2076', '0298765451', '0423456784', 'oliver.moore@example.com', 'Cook'), 
(112, 'Charlotte', 'Emily', 'Lee', '34 Birch Rd, Cooper, VIC 3146', '1994-08-17', 'Female', '34 Birch Rd, Cooper, VIC 3146', 'PO Box 567, Cooper, VIC 3146', '0398765452', '0434567894', 'charlotte.lee@example.com', 'Cooper'),
(113, 'Ethan', 'Daniel', 'Jackson', '56 Pine St, Corangamite, VIC 3217', '1991-06-23', 'Male', '56 Pine St, Corangamite, VIC 3217', 'PO Box 678, Corangamite, VIC 3217', '0398765453', '0445678905', 'ethan.jackson@example.com', 'Corangamite'),
(114, 'Lily', 'Grace', 'White', '78 Oak St, Corio, VIC 3214', '1988-05-11', 'Female', '78 Oak St, Corio, VIC 3214', 'PO Box 789, Corio, VIC 3214', '0398765454', '0456789016', 'lily.white@example.com', 'Corio'),
(115, 'James', 'Henry', 'Clark', '90 Maple Ave, Dobell, NSW 2250', '1992-03-19', 'Male', '90 Maple Ave, Dobell, NSW 2250', 'PO Box 123, Dobell, NSW 2250', '0298765455', '0467890128', 'james.clark@example.com', 'Dobell'),
(116, 'Emma', 'Sophie', 'Harris', '12 Cedar Ave, Durack, WA 6430', '1990-01-25', 'Female', '12 Cedar Ave, Durack, WA 6430', 'PO Box 234, Durack, WA 6430', '0898765440', '0478901240', 'emma.harris@example.com', 'Durack'),
(117, 'Liam', 'Ethan', 'Gibson', '34 Oak St, Fenner, ACT 2611', '1993-02-10', 'Male', '34 Oak St, Fenner, ACT 2611', 'PO Box 345, Fenner, ACT 2611', '0267890129', '0489012341', 'liam.gibson@example.com', 'Fenner'),
(118, 'Sophia', 'Ava', 'Young', '56 Pine Rd, Fisher, QLD 4558', '1994-07-16', 'Female', '56 Pine Rd, Fisher, QLD 4558', 'PO Box 456, Fisher, QLD 4558', '0745678910', '0490123458', 'sophia.young@example.com', 'Fisher'),
(119, 'Noah', 'Liam', 'Anderson', '78 Birch Ave, Flinders, VIC 3930', '1988-11-01', 'Male', '78 Birch Ave, Flinders, VIC 3930', 'PO Box 567, Flinders, VIC 3930', '0398765455', '0412345674', 'noah.anderson@example.com', 'Flinders'),
(120, 'Mia', 'Olivia', 'Taylor', '90 Cedar St, Forde, QLD 4500', '1991-12-04', 'Female', '90 Cedar St, Forde, QLD 4500', 'PO Box 678, Forde, QLD 4500', '0745678911', '0423456785', 'mia.taylor@example.com', 'Forde'),
(121, 'Emily', 'Rose', 'White', '123 Oak St, Forrest, WA 6236', '1990-05-15', 'Female', '123 Oak St, Forrest, WA 6236', 'PO Box 123, Forrest, WA 6236', '0898765432', '0412345675', 'emily.white@example.com', 'Forrest'),
(122, 'Benjamin', 'John', 'Smith', '456 Pine Ave, Franklin, TAS 7000', '1985-09-27', 'Male', '456 Pine Ave, Franklin, TAS 7000', 'PO Box 234, Franklin, TAS 7000', '0367890125', '0423456786', 'benjamin.smith@example.com', 'Franklin'),
(123, 'Charlotte', 'Emma', 'Williams', '789 Maple St, Fraser, VIC 3561', '1989-03-20', 'Female', '789 Maple St, Fraser, VIC 3561', 'PO Box 345, Fraser, VIC 3561', '0398765456', '0434567895', 'charlotte.williams@example.com', 'Fraser'),
(124, 'James', 'Robert', 'Davis', '101 Cedar St, Fremantle, WA 6160', '1988-06-14', 'Male', '101 Cedar St, Fremantle, WA 6160', 'PO Box 456, Fremantle, WA 6160', '0898765433', '0445678906', 'james.davis@example.com', 'Fremantle'),
(125, 'Ava', 'Lily', 'Brown', '202 Birch Rd, Gippsland, VIC 3840', '1992-11-02', 'Female', '202 Birch Rd, Gippsland, VIC 3840', 'PO Box 567, Gippsland, VIC 3840', '0398765457', '0456789017', 'ava.brown@example.com', 'Gippsland'),
(126, 'Mason', 'Liam', 'Jones', '303 Oak Ave, Greenway, NSW 2565', '1993-08-09', 'Male', '303 Oak Ave, Greenway, NSW 2565', 'PO Box 678, Greenway, NSW 2565', '0298765456', '0467890129', 'mason.jones@example.com', 'Greenway'),
(127, 'Isabella', 'Grace', 'Martin', '404 Pine St, Grey, SA 5000', '1990-07-24', 'Female', '404 Pine St, Grey, SA 5000', 'PO Box 789, Grey, SA 5000', '0887654322', '0478901230', 'isabella.martin@example.com', 'Grey'),
(128, 'Ethan', 'Daniel', 'Taylor', '505 Cedar Rd, Groom, QLD 4350', '1987-01-19', 'Male', '505 Cedar Rd, Groom, QLD 4350', 'PO Box 123, Groom, QLD 4350', '0745678908', '0489012342', 'ethan.taylor@example.com', 'Groom'),
(129, 'Olivia', 'Emma', 'Wilson', '606 Birch Ave, Hasluck, WA 6065', '1991-10-13', 'Female', '606 Birch Ave, Hasluck, WA 6065', 'PO Box 234, Hasluck, WA 6065', '0898765434', '0490123457', 'olivia.wilson@example.com', 'Hasluck'),
(130, 'Jack', 'Henry', 'Lee', '707 Maple St, Hawke, VIC 3070', '1994-02-07', 'Male', '707 Maple St, Hawke, VIC 3070', 'PO Box 345, Hawke, VIC 3070', '0398765458', '0412345676', 'jack.lee@example.com', 'Hawke'),
(131, 'Sophia', 'Ava', 'Martin', '808 Cedar Ave, Herbert, QLD 4814', '1988-11-20', 'Female', '808 Cedar Ave, Herbert, QLD 4814', 'PO Box 456, Herbert, QLD 4814', '0745678909', '0423456787', 'sophia.martin@example.com', 'Herbert'),
(132, 'Jacob', 'William', 'Smith', '909 Oak St, Hindmarsh, SA 5007', '1992-05-14', 'Male', '909 Oak St, Hindmarsh, SA 5007', 'PO Box 567, Hindmarsh, SA 5007', '0887654323', '0434567896', 'jacob.smith@example.com', 'Hindmarsh'),
(133, 'Mia', 'Olivia', 'Brown', '101 Pine Rd, Hinkler, QLD 4670', '1990-07-22', 'Female', '101 Pine Rd, Hinkler, QLD 4670', 'PO Box 678, Hinkler, QLD 4670', '0745678910', '0445678907', 'mia.brown@example.com', 'Hinkler'),
(134, 'William', 'Ethan', 'Jones', '202 Cedar St, Holt, VIC 3128', '1993-09-05', 'Male', '202 Cedar St, Holt, VIC 3128', 'PO Box 789, Holt, VIC 3128', '0398765460', '0456789018', 'william.jones@example.com', 'Holt'),
(135, 'Emma', 'Grace', 'Taylor', '303 Birch Ave, Hughes, NSW 2077', '1989-06-30', 'Female', '303 Birch Ave, Hughes, NSW 2077', 'PO Box 123, Hughes, NSW 2077', '0298765457', '0467890130', 'emma.taylor@example.com', 'Hughes'),
(136, 'Oliver', 'Jack', 'Williams', '404 Oak St, Indi, VIC 3690', '1994-04-21', 'Male', '404 Oak St, Indi, VIC 3690', 'PO Box 234, Indi, VIC 3690', '0398765461', '0478901231', 'oliver.williams@example.com', 'Indi'),
(137, 'Lily', 'Sophie', 'Johnson', '505 Pine Ave, Isaacs, VIC 3084', '1987-02-05', 'Female', '505 Pine Ave, Isaacs, VIC 3084', 'PO Box 345, Isaacs, VIC 3084', '0398765462', '0489012343', 'lily.johnson@example.com', 'Isaacs'),
(138, 'Ethan', 'Daniel', 'Brown', '606 Cedar Rd, Jagajaga, VIC 3084', '1991-11-25', 'Male', '606 Cedar Rd, Jagajaga, VIC 3084', 'PO Box 456, Jagajaga, VIC 3084', '0398765463', '0490123458', 'ethan.brown@example.com', 'Jagajaga'),
(139, 'Mia', 'Ella', 'Clark', '707 Oak St, Kingston, SA 5034', '1989-04-22', 'Female', '707 Oak St, Kingston, SA 5034', 'PO Box 567, Kingston, SA 5034', '0887654324', '0412345677', 'mia.clark@example.com', 'Kingston'),
(140, 'Noah', 'Ryan', 'Scott', '808 Pine St, La Trobe, VIC 3816', '1990-07-18', 'Male', '808 Pine St, La Trobe, VIC 3816', 'PO Box 678, La Trobe, VIC 3816', '0398765464', '0423456788', 'noah.scott@example.com', 'La Trobe'),
(141, 'Sophia', 'Emily', 'Garcia', '101 Elm St, Lalor, VIC 3075', '1994-03-14', 'Female', '101 Elm St, Lalor, VIC 3075', 'PO Box 123, Lalor, VIC 3075', '0398765465', '0412345678', 'sophia.garcia@example.com', 'Lalor'),
(142, 'Jacob', 'Daniel', 'Martinez', '202 Oak Ave, Lilley, QLD 4030', '1991-12-10', 'Male', '202 Oak Ave, Lilley, QLD 4030', 'PO Box 234, Lilley, QLD 4030', '0745678911', '0423456789', 'jacob.martinez@example.com', 'Lilley'),
(143, 'Isabella', 'Olivia', 'Rodriguez', '303 Pine St, Lindsay, NSW 2770', '1989-05-30', 'Female', '303 Pine St, Lindsay, NSW 2770', 'PO Box 345, Lindsay, NSW 2770', '0298765460', '0434567890', 'isabella.rodriguez@example.com', 'Lindsay'),
(144, 'Liam', 'Noah', 'Hernandez', '404 Birch Rd, Longman, QLD 4510', '1992-07-22', 'Male', '404 Birch Rd, Longman, QLD 4510', 'PO Box 456, Longman, QLD 4510', '0745678912', '0445678908', 'liam.hernandez@example.com', 'Longman'),
(145, 'Emma', 'Sophia', 'Wilson', '505 Cedar Ave, Lyne, NSW 2430', '1990-10-14', 'Female', '505 Cedar Ave, Lyne, NSW 2430', 'PO Box 567, Lyne, NSW 2430', '0298765461', '0456789012', 'emma.wilson@example.com', 'Lyne'),
(146, 'Ethan', 'James', 'Moore', '606 Elm St, Macquarie, NSW 2074', '1993-08-27', 'Male', '606 Elm St, Macquarie, NSW 2074', 'PO Box 678, Macquarie, NSW 2074', '0298765462', '0467890123', 'ethan.moore@example.com', 'Macquarie'),
(147, 'Olivia', 'Ava', 'Taylor', '707 Oak St, Mallee, VIC 3418', '1991-04-19', 'Female', '707 Oak St, Mallee, VIC 3418', 'PO Box 789, Mallee, VIC 3418', '0398765466', '0478901234', 'olivia.taylor@example.com', 'Mallee'),
(148, 'Noah', 'Liam', 'Anderson', '808 Pine Ave, Maribyrnong, VIC 3032', '1988-11-12', 'Male', '808 Pine Ave, Maribyrnong, VIC 3032', 'PO Box 123, Maribyrnong, VIC 3032', '0398765467', '0489012345', 'noah.anderson@example.com', 'Maribyrnong'),
(149, 'Mia', 'Isabella', 'Jackson', '909 Cedar Rd, McEwen, VIC 3750', '1992-06-05', 'Female', '909 Cedar Rd, McEwen, VIC 3750', 'PO Box 234, McEwen, VIC 3750', '0398765468', '0490123456', 'mia.jackson@example.com', 'McEwen'),
(150, 'William', 'James', 'White', '101 Maple St, McMahon, NSW 2079', '1990-09-25', 'Male', '101 Maple St, McMahon, NSW 2079', 'PO Box 345, McMahon, NSW 2079', '0298765463', '0412345679', 'william.white@example.com', 'McMahon'),
(151, 'Sophia', 'Grace', 'Harris', '202 Birch Rd, McPherson, QLD 4558', '1988-03-22', 'Female', '202 Birch Rd, McPherson, QLD 4558', 'PO Box 456, McPherson, QLD 4558', '0745678913', '0423456790', 'sophia.harris@example.com', 'McPherson'),
(152, 'Jackson', 'Oliver', 'Martin', '303 Cedar St, Menzies, VIC 3168', '1993-12-14', 'Male', '303 Cedar St, Menzies, VIC 3168', 'PO Box 567, Menzies, VIC 3168', '0398765469', '0434567891', 'jackson.martin@example.com', 'Menzies'),
(153, 'Ava', 'Ella', 'Thompson', '404 Elm St, Moore, WA 6148', '1992-05-09', 'Female', '404 Elm St, Moore, WA 6148', 'PO Box 678, Moore, WA 6148', '0898765435', '0445678914', 'ava.thompson@example.com', 'Moore'),
(154, 'Mason', 'Ethan', 'Young', '505 Oak Ave, New England, NSW 2340', '1991-07-21', 'Male', '505 Oak Ave, New England, NSW 2340', 'PO Box 789, New England, NSW 2340', '0298765464', '0456789013', 'mason.young@example.com', 'New England'),
(155, 'Ella', 'Sophie', 'Lee', '606 Pine Rd, Nicholls, VIC 3550', '1989-11-30', 'Female', '606 Pine Rd, Nicholls, VIC 3550', 'PO Box 123, Nicholls, VIC 3550', '0398765470', '0467890124', 'ella.lee@example.com', 'Nicholls'),
(156, 'Lucas', 'James', 'Walker', '707 Cedar St, North Sydney, NSW 2060', '1994-02-13', 'Male', '707 Cedar St, North Sydney, NSW 2060', 'PO Box 234, North Sydney, NSW 2060', '0298765465', '0478901235', 'lucas.walker@example.com', 'North Sydney'),
(157, 'Chloe', 'Isabella', 'Brown', '808 Birch Rd, O''Connor, WA 6163', '1990-08-19', 'Female', '808 Birch Rd, O''Connor, WA 6163', 'PO Box 345, O''Connor, WA 6163', '0898765436', '0489012346', 'chloe.brown@example.com', 'O''Connor'),
(158, 'Aiden', 'Logan', 'Mitchell', '909 Maple St, Page, NSW 2560', '1993-04-29', 'Male', '909 Maple St, Page, NSW 2560', 'PO Box 456, Page, NSW 2560', '0298765466', '0490123459', 'aiden.mitchell@example.com', 'Page'),
(159, 'Grace', 'Emily', 'Taylor', '101 Elm St, Parkes, NSW 2870', '1988-10-05', 'Female', '101 Elm St, Parkes, NSW 2870', 'PO Box 567, Parkes, NSW 2870', '0298765467', '0412345680', 'grace.taylor@example.com', 'Parkes'),
(160, 'Ethan', 'Mason', 'Johnson', '202 Oak Ave, Parramatta, NSW 2150', '1992-03-14', 'Male', '202 Oak Ave, Parramatta, NSW 2150', 'PO Box 678, Parramatta, NSW 2150', '0298765468', '0423456781', 'ethan.johnson@example.com', 'Parramatta'),
(161, 'Liam', 'Noah', 'Parker', '101 Elm St, Paterson, NSW 2421', '1991-05-15', 'Male', '101 Elm St, Paterson, NSW 2421', 'PO Box 123, Paterson, NSW 2421', '0298765469', '0412345681', 'liam.parker@example.com', 'Paterson'),
(162, 'Emily', 'Sophia', 'Harris', '202 Oak Ave, Pearce, WA 6163', '1990-12-20', 'Female', '202 Oak Ave, Pearce, WA 6163', 'PO Box 234, Pearce, WA 6163', '0898765437', '0423456782', 'emily.harris@example.com', 'Pearce'),
(163, 'James', 'Liam', 'Smith', '303 Pine St, Petrie, QLD 4502', '1992-07-22', 'Male', '303 Pine St, Petrie, QLD 4502', 'PO Box 345, Petrie, QLD 4502', '0745678914', '0434567893', 'james.smith@example.com', 'Petrie'),
(164, 'Olivia', 'Isabella', 'Johnson', '404 Birch Rd, Rankin, QLD 4110', '1989-11-04', 'Female', '404 Birch Rd, Rankin, QLD 4110', 'PO Box 456, Rankin, QLD 4110', '0745678915', '0445678909', 'olivia.johnson@example.com', 'Rankin'),
(165, 'Ethan', 'Jacob', 'Jones', '505 Cedar Ave, Reid, NSW 2113', '1993-09-17', 'Male', '505 Cedar Ave, Reid, NSW 2113', 'PO Box 567, Reid, NSW 2113', '0298765470', '0456789014', 'ethan.jones@example.com', 'Reid'),
(166, 'Ava', 'Emma', 'Williams', '606 Elm St, Riverina, NSW 2650', '1991-03-29', 'Female', '606 Elm St, Riverina, NSW 2650', 'PO Box 678, Riverina, NSW 2650', '0298765471', '0467890125', 'ava.williams@example.com', 'Riverina'),
(167, 'William', 'Benjamin', 'Taylor', '707 Oak Ave, Scullin, ACT 2614', '1990-06-12', 'Male', '707 Oak Ave, Scullin, ACT 2614', 'PO Box 789, Scullin, ACT 2614', '0298765472', '0478901236', 'william.taylor@example.com', 'Scullin'),
(168, 'Mia', 'Ava', 'Clark', '808 Pine Rd, Shortland, NSW 2307', '1994-08-21', 'Female', '808 Pine Rd, Shortland, NSW 2307', 'PO Box 123, Shortland, NSW 2307', '0298765473', '0489012347', 'mia.clark@example.com', 'Shortland'),
(169, 'Lucas', 'Oliver', 'Robinson', '909 Cedar St, Sturt, SA 5047', '1988-04-30', 'Male', '909 Cedar St, Sturt, SA 5047', 'PO Box 234, Sturt, SA 5047', '0887654321', '0490123457', 'lucas.robinson@example.com', 'Sturt'),
(170, 'Sophia', 'Grace', 'Miller', '101 Maple St, Swan, WA 6056', '1992-10-12', 'Female', '101 Maple St, Swan, WA 6056', 'PO Box 345, Swan, WA 6056', '0898765438', '0412345682', 'sophia.miller@example.com', 'Swan'),
(171, 'Jackson', 'Ethan', 'Lee', '202 Elm St, Tangney, WA 6155', '1995-01-25', 'Male', '202 Elm St, Tangney, WA 6155', 'PO Box 456, Tangney, WA 6155', '0898765439', '0423456783', 'jackson.lee@example.com', 'Tangney'),
(172, 'Chloe', 'Isabella', 'Walker', '303 Oak Ave, Warringah, NSW 2100', '1989-07-16', 'Female', '303 Oak Ave, Warringah, NSW 2100', 'PO Box 567, Warringah, NSW 2100', '0298765474', '0434567894', 'chloe.walker@example.com', 'Warringah'),
(173, 'Ethan', 'Liam', 'Scott', '404 Pine Rd, Wentworth, NSW 2024', '1993-05-11', 'Male', '404 Pine Rd, Wentworth, NSW 2024', 'PO Box 678, Wentworth, NSW 2024', '0298765475', '0445678915', 'ethan.scott@example.com', 'Wentworth'),
(174, 'Ella', 'Mia', 'Adams', '505 Cedar St, Werriwa, NSW 2170', '1990-03-18', 'Female', '505 Cedar St, Werriwa, NSW 2170', 'PO Box 789, Werriwa, NSW 2170', '0298765476', '0456789015', 'ella.adams@example.com', 'Werriwa'),
(175, 'Liam', 'Noah', 'Mitchell', '606 Elm St, Whitlam, NSW 2611', '1992-11-20', 'Male', '606 Elm St, Whitlam, NSW 2611', 'PO Box 123, Whitlam, NSW 2611', '0298765477', '0467890126', 'liam.mitchell@example.com', 'Whitlam'),
(176, 'Olivia', 'Sophia', 'Morris', '707 Oak Ave, Wide Bay, QLD 4561', '1989-09-04', 'Female', '707 Oak Ave, Wide Bay, QLD 4561', 'PO Box 234, Wide Bay, QLD 4561', '0745678916', '0478901237', 'olivia.morris@example.com', 'Wide Bay'),
(177, 'Noah', 'Liam', 'Brown', '808 Pine Rd, Paterson, NSW 2421', '1991-04-15', 'Male', '808 Pine Rd, Paterson, NSW 2421', 'PO Box 345, Paterson, NSW 2421', '0298765478', '0489012348', 'noah.brown@example.com', 'Paterson'),
(178, 'Emma', 'Isabella', 'Johnson', '909 Cedar St, Pearce, WA 6163', '1994-06-29', 'Female', '909 Cedar St, Pearce, WA 6163', 'PO Box 456, Pearce, WA 6163', '0898765440', '0412345683', 'emma.johnson@example.com', 'Pearce'),
(179, 'Aiden', 'Ethan', 'Clark', '101 Maple St, Petrie, QLD 4502', '1992-08-17', 'Male', '101 Maple St, Petrie, QLD 4502', 'PO Box 567, Petrie, QLD 4502', '0745678917', '0423456784', 'aiden.clark@example.com', 'Petrie'),
(180, 'Grace', 'Olivia', 'Rodriguez', '202 Elm St, Rankin, QLD 4110', '1990-01-23', 'Female', '202 Elm St, Rankin, QLD 4110', 'PO Box 678, Rankin, QLD 4110', '0745678918', '0434567895', 'grace.rodriguez@example.com', 'Rankin'),
(181, 'Liam', 'James', 'Brown', '1 Rainbow St, Maribyrnong, VIC 3032', '1992-06-15', 'Male', '1 Rainbow St, Maribyrnong, VIC 3032', 'PO Box 101, Maribyrnong, VIC 3032', '0398765432', '0412345678', 'liam.brown@example.com', 'Maribyrnong'),
(182, 'Ava', 'Charlotte', 'Smith', '2 Sunset Ave, Bruce, VIC 3211', '1994-02-20', 'Female', '2 Sunset Ave, Bruce, VIC 3211', 'PO Box 102, Bruce, VIC 3211', '0398765433', '0423456789', 'ava.smith@example.com', 'Bruce'),
(183, 'Noah', 'Liam', 'Johnson', '3 Maple St, Swan, WA 6056', '1991-10-30', 'Male', '3 Maple St, Swan, WA 6056', 'PO Box 103, Swan, WA 6056', '0898765434', '0434567890', 'noah.johnson@example.com', 'Swan'),
(184, 'Emma', 'Isabella', 'Williams', '4 Birch Rd, Scullin, ACT 2614', '1990-11-14', 'Female', '4 Birch Rd, Scullin, ACT 2614', 'PO Box 104, Scullin, ACT 2614', '0298765433', '0445678901', 'emma.williams@example.com', 'Scullin'),
(185, 'Oliver', 'Ethan', 'Jones', '5 Cedar Ave, Shortland, NSW 2307', '1993-09-23', 'Male', '5 Cedar Ave, Shortland, NSW 2307', 'PO Box 105, Shortland, NSW 2307', '0298765434', '0456789012', 'oliver.jones@example.com', 'Shortland'),
(186, 'Sophia', 'Ava', 'Taylor', '6 Oak St, Wentworth, NSW 2024', '1995-04-16', 'Female', '6 Oak St, Wentworth, NSW 2024', 'PO Box 106, Wentworth, NSW 2024', '0298765435', '0467890123', 'sophia.taylor@example.com', 'Wentworth'),
(187, 'Ethan', 'Benjamin', 'Anderson', '7 Maple Ave, Werriwa, NSW 2170', '1991-12-07', 'Male', '7 Maple Ave, Werriwa, NSW 2170', 'PO Box 107, Werriwa, NSW 2170', '0298765436', '0478901234', 'ethan.anderson@example.com', 'Werriwa'),
(188, 'Mia', 'Emma', 'Thomas', '8 Elm Rd, Whitlam, NSW 2611', '1992-08-22', 'Female', '8 Elm Rd, Whitlam, NSW 2611', 'PO Box 108, Whitlam, NSW 2611', '0298765437', '0489012345', 'mia.thomas@example.com', 'Whitlam'),
(189, 'Jackson', 'Liam', 'Moore', '9 Oak St, Wide Bay, QLD 4561', '1989-03-13', 'Male', '9 Oak St, Wide Bay, QLD 4561', 'PO Box 109, Wide Bay, QLD 4561', '0745678919', '0490123456', 'jackson.moore@example.com', 'Wide Bay'),
(190, 'Olivia', 'Sophia', 'Walker', '10 Cedar Ave, Lalor, VIC 3075', '1994-06-11', 'Female', '10 Cedar Ave, Lalor, VIC 3075', 'PO Box 110, Lalor, VIC 3075', '0398765438', '0412345679', 'olivia.walker@example.com', 'Lalor'),
(191, 'Ethan', 'Jacob', 'Lee', '11 Birch Rd, Lilley, QLD 4030', '1990-09-01', 'Male', '11 Birch Rd, Lilley, QLD 4030', 'PO Box 111, Lilley, QLD 4030', '0745678920', '0423456790', 'ethan.lee@example.com', 'Lilley'),
(192, 'Isabella', 'Grace', 'King', '12 Maple St, Longman, QLD 4506', '1992-04-25', 'Female', '12 Maple St, Longman, QLD 4506', 'PO Box 112, Longman, QLD 4506', '0745678921', '0434567901', 'isabella.king@example.com', 'Longman'),
(193, 'Liam', 'Noah', 'Harris', '13 Oak Ave, Lyne, NSW 2430', '1993-07-08', 'Male', '13 Oak Ave, Lyne, NSW 2430', 'PO Box 113, Lyne, NSW 2430', '0298765438', '0445678916', 'liam.harris@example.com', 'Lyne'),
(194, 'Sophia', 'Charlotte', 'Green', '14 Cedar Rd, Macquarie, NSW 2070', '1989-05-12', 'Female', '14 Cedar Rd, Macquarie, NSW 2070', 'PO Box 114, Macquarie, NSW 2070', '0298765439', '0456789023', 'sophia.green@example.com', 'Macquarie'),
(195, 'Mason', 'Ethan', 'Adams', '15 Elm St, Mallee, VIC 3418', '1991-11-21', 'Male', '15 Elm St, Mallee, VIC 3418', 'PO Box 115, Mallee, VIC 3418', '0398765439', '0467890134', 'mason.adams@example.com', 'Mallee'),
(196, 'Ava', 'Emma', 'Morris', '16 Maple Ave, Maribyrnong, VIC 3032', '1995-03-05', 'Female', '16 Maple Ave, Maribyrnong, VIC 3032', 'PO Box 116, Maribyrnong, VIC 3032', '0398765440', '0478901245', 'ava.morris@example.com', 'Maribyrnong'),
(197, 'Noah', 'Benjamin', 'Smith', '17 Birch St, McEwen, VIC 3754', '1990-06-30', 'Male', '17 Birch St, McEwen, VIC 3754', 'PO Box 117, McEwen, VIC 3754', '0398765441', '0489012356', 'noah.smith@example.com', 'McEwen'),
(198, 'Emma', 'Isabella', 'Jackson', '18 Oak Rd, McMahon, NSW 2760', '1992-01-18', 'Female', '18 Oak Rd, McMahon, NSW 2760', 'PO Box 118, McMahon, NSW 2760', '0298765440', '0412345670', 'emma.jackson@example.com', 'McMahon'),
(199, 'Oliver', 'Liam', 'Scott', '19 Cedar Ave, McPherson, QLD 4551', '1988-10-15', 'Male', '19 Cedar Ave, McPherson, QLD 4551', 'PO Box 119, McPherson, QLD 4551', '0745678922', '0423456791', 'oliver.scott@example.com', 'McPherson'),
(200, 'Mia', 'Olivia', 'Taylor', '20 Elm St, Menzies, VIC 3550', '1991-02-27', 'Female', '20 Elm St, Menzies, VIC 3550', 'PO Box 120, Menzies, VIC 3550', '0398765442', '0434567902', 'mia.taylor@example.com', 'Menzies');
INSERT INTO VoterRegistry (VoterID, FirstName, MiddleNames, LastName, Address, DateofBirth, Gender, ResidentialAddress, PostalAddress, ContactPhone, ContactMobile, ContactEmail, DivisionName, ElectionEventID)
VALUES
(201, 'John', 'Michael', 'Smith', '123 Main St', '1980-05-15', 'Male', '123 Main St', 'PO Box 123', '08-12345678', '0400-123-456', 'john.smith@example.com', 'Perth'),
(202, 'Jane', 'Elizabeth', 'Doe', '456 Elm St', '1975-08-20', 'Female', '456 Elm St', 'PO Box 456', '08-23456789', '0411-234-567', 'jane.doe@example.com', 'Perth'),
(203, 'Alice', 'Marie', 'Johnson', '789 Pine St', '1990-12-05', 'Female', '789 Pine St', 'PO Box 789', '08-34567890', '0422-345-678', 'alice.johnson@example.com', 'Perth'),
(204, 'Bob', 'Alan', 'Williams', '101 Maple St', '1985-03-25', 'Male', '101 Maple St', 'PO Box 101', '08-45678901', '0433-456-789', 'bob.williams@example.com', 'Perth'),
(205, 'Charlie', 'Thomas', 'Brown', '202 Cedar St', '1982-06-30', 'Male', '202 Cedar St', 'PO Box 202', '08-56789012', '0444-567-890', 'charlie.brown@example.com', 'Perth'),
(206, 'Diana', 'Grace', 'Taylor', '303 Birch St', '1978-09-10', 'Female', '303 Birch St', 'PO Box 303', '08-67890123', '0455-678-901', 'diana.taylor@example.com', 'Perth'),
(207, 'Edward', 'James', 'Wilson', '404 Oak St', '1988-01-20', 'Male', '404 Oak St', 'PO Box 404', '08-78901234', '0466-789-012', 'edward.wilson@example.com', 'Perth'),
(208, 'Fiona', 'Anne', 'Moore', '505 Walnut St', '1984-11-15', 'Female', '505 Walnut St', 'PO Box 505', '08-89012345', '0477-890-123', 'fiona.moore@example.com', 'Perth'),
(209, 'George', 'William', 'Jackson', '606 Chestnut St', '1992-07-25', 'Male', '606 Chestnut St', 'PO Box 606', '08-90123456', '0488-901-234', 'george.jackson@example.com', 'Perth'),
(210, 'Hannah', 'Kate', 'Martin', '707 Spruce St', '1986-02-05', 'Female', '707 Spruce St', 'PO Box 707', '08-01234567', '0499-012-345', 'hannah.martin@example.com', 'Perth'),
(211, 'Ian', 'Robert', 'Lee', '808 Fir St', '1995-10-15', 'Male', '808 Fir St', 'PO Box 808', '08-12345678', '0500-123-456', 'ian.lee@example.com', 'Perth'),
(212, 'Julia', 'Marie', 'Perez', '909 Ash St', '1987-04-30', 'Female', '909 Ash St', 'PO Box 909', '08-23456789', '0511-234-567', 'julia.perez@example.com', 'Perth'),
(213, 'Kevin', 'Joseph', 'Clark', '1010 Poplar St', '1981-05-25', 'Male', '1010 Poplar St', 'PO Box 1010', '08-34567890', '0522-345-678', 'kevin.clark@example.com', 'Perth'),
(214, 'Laura', 'Jane', 'Lewis', '1111 Redwood St', '1993-12-12', 'Female', '1111 Redwood St', 'PO Box 1111', '08-45678901', '0533-456-789', 'laura.lewis@example.com', 'Perth'),
(215, 'Michael', 'Andrew', 'Young', '1212 Fir St', '1989-06-15', 'Male', '1212 Fir St', 'PO Box 1212', '08-56789012', '0544-567-890', 'michael.young@example.com', 'Perth'),
(216, 'Nina', 'Claire', 'Scott', '1313 Cedar St', '1980-08-10', 'Female', '1313 Cedar St', 'PO Box 1313', '08-67890123', '0555-678-901', 'nina.scott@example.com', 'Perth'),
(217, 'Oliver', 'Jack', 'Adams', '1414 Maple St', '1983-07-20', 'Male', '1414 Maple St', 'PO Box 1414', '08-78901234', '0566-789-012', 'oliver.adams@example.com', 'Perth'),
(218, 'Penelope', 'Rose', 'Nelson', '1515 Oak St', '1987-11-05', 'Female', '1515 Oak St', 'PO Box 1515', '08-89012345', '0577-890-123', 'penelope.nelson@example.com', 'Perth'),
(219, 'Quentin', 'David', 'Green', '1616 Birch St', '1990-04-12', 'Male', '1616 Birch St', 'PO Box 1616', '08-90123456', '0588-901-234', 'quentin.green@example.com', 'Perth'),
(220, 'Rebecca', 'Jane', 'Hall', '1717 Pine St', '1984-01-10', 'Female', '1717 Pine St', 'PO Box 1717', '08-01234567', '0599-012-345', 'rebecca.hall@example.com', 'Perth'),
(221, 'Ethan', 'George', 'Miller', '123 Ocean St', '1991-03-22', 'Male', '123 Ocean St', 'PO Box 321', '08-61234567', '0412-345-678', 'ethan.miller@example.com', 'Perth'),
(222, 'Sophia', 'Grace', 'Wilson', '456 River St', '1984-05-18', 'Female', '456 River St', 'PO Box 322', '08-62345678', '0413-456-789', 'sophia.wilson@example.com', 'Perth'),
(223, 'Liam', 'Edward', 'Anderson', '789 Mountain St', '1979-07-25', 'Male', '789 Mountain St', 'PO Box 323', '08-63456789', '0414-567-890', 'liam.anderson@example.com', 'Perth'),
(224, 'Isabella', 'Rose', 'Thomas', '101 Forest St', '1992-11-11', 'Female', '101 Forest St', 'PO Box 324', '08-64567890', '0415-678-901', 'isabella.thomas@example.com', 'Perth'),
(225, 'James', 'Alexander', 'Clark', '202 Valley St', '1987-02-19', 'Male', '202 Valley St', 'PO Box 325', '08-65678901', '0416-789-012', 'james.clark@example.com', 'Perth'),
(226, 'Mia', 'Olivia', 'Moore', '303 Hill St', '1981-09-30', 'Female', '303 Hill St', 'PO Box 326', '08-66789012', '0417-890-123', 'mia.moore@example.com', 'Perth'),
(227, 'Benjamin', 'David', 'Taylor', '404 Desert St', '1990-06-15', 'Male', '404 Desert St', 'PO Box 327', '08-67890123', '0418-901-234', 'benjamin.taylor@example.com', 'Perth'),
(228, 'Amelia', 'Sophie', 'White', '505 Lake St', '1985-08-27', 'Female', '505 Lake St', 'PO Box 328', '08-68901234', '0419-012-345', 'amelia.white@example.com', 'Perth'),
(229, 'Noah', 'Samuel', 'Harris', '606 Plain St', '1977-12-09', 'Male', '606 Plain St', 'PO Box 329', '08-69012345', '0420-123-456', 'noah.harris@example.com', 'Perth'),
(230, 'Ava', 'Emily', 'Lewis', '707 Field St', '1995-04-05', 'Female', '707 Field St', 'PO Box 330', '08-70123456', '0421-234-567', 'ava.lewis@example.com', 'Perth'),
(231, 'William', 'John', 'Martinez', '808 Meadow St', '1983-10-12', 'Male', '808 Meadow St', 'PO Box 331', '08-71234567', '0422-345-678', 'william.martinez@example.com', 'Perth'),
(232, 'Emily', 'Sophia', 'Robinson', '909 Mountain View St', '1994-11-20', 'Female', '909 Mountain View St', 'PO Box 332', '08-72345678', '0423-456-789', 'emily.robinson@example.com', 'Perth'),
(233, 'Henry', 'Lucas', 'Lee', '1010 Harbor St', '1988-01-25', 'Male', '1010 Harbor St', 'PO Box 333', '08-73456789', '0424-567-890', 'henry.lee@example.com', 'Perth'),
(234, 'Olivia', 'Charlotte', 'Young', '1111 Cliff St', '1986-07-14', 'Female', '1111 Cliff St', 'PO Box 334', '08-74567890', '0425-678-901', 'olivia.young@example.com', 'Perth'),
(235, 'Lucas', 'Daniel', 'Walker', '1212 Hilltop St', '1991-03-08', 'Male', '1212 Hilltop St', 'PO Box 335', '08-75678901', '0426-789-012', 'lucas.walker@example.com', 'Perth'),
(236, 'Ella', 'Harper', 'King', '1313 Beach St', '1980-12-25', 'Female', '1313 Beach St', 'PO Box 336', '08-76789012', '0427-890-123', 'ella.king@example.com', 'Perth'),
(237, 'Jacob', 'James', 'Wright', '1414 Bay St', '1984-05-10', 'Male', '1414 Bay St', 'PO Box 337', '08-77890123', '0428-901-234', 'jacob.wright@example.com', 'Perth'),
(238, 'Charlotte', 'Lucy', 'Scott', '1515 Shoreline St', '1993-09-30', 'Female', '1515 Shoreline St', 'PO Box 338', '08-78901234', '0429-012-345', 'charlotte.scott@example.com', 'Perth'),
(239, 'Alexander', 'Joseph', 'Hill', '1616 Oceanview St', '1982-03-05', 'Male', '1616 Oceanview St', 'PO Box 339', '08-80123456', '0430-123-456', 'alexander.hill@example.com', 'Perth'),
(240, 'Sophia', 'Mia', 'Green', '1717 Ridge St', '1989-08-22', 'Female', '1717 Ridge St', 'PO Box 340', '08-81234567', '0431-234-567', 'sophia.green@example.com', 'Perth'),
(241, 'Harper', 'Grace', 'Anderson', '1818 Lakeview St', '1992-04-03', 'Female', '1818 Lakeview St', 'PO Box 341', '08-82345678', '0432-345-678', 'harper.anderson@example.com', 'Perth'),
(242, 'Logan', 'Michael', 'Turner', '1919 Hillview St', '1987-05-17', 'Male', '1919 Hillview St', 'PO Box 342', '08-83456789', '0433-456-789', 'logan.turner@example.com', 'Perth'),
(243, 'Mason', 'Thomas', 'White', '2020 Seaside St', '1991-07-25', 'Male', '2020 Seaside St', 'PO Box 343', '08-84567890', '0434-567-890', 'mason.white@example.com', 'Perth'),
(244, 'Ella', 'Marie', 'Harris', '2121 Valleyview St', '1984-09-08', 'Female', '2121 Valleyview St', 'PO Box 344', '08-85678901', '0435-678-901', 'ella.harris@example.com', 'Perth'),
(245, 'Isaac', 'David', 'Moore', '2222 Clifftop St', '1989-12-14', 'Male', '2222 Clifftop St', 'PO Box 345', '08-86789012', '0436-789-012', 'isaac.moore@example.com', 'Perth'),
(246, 'Avery', 'Elizabeth', 'Brown', '2323 Harborview St', '1994-03-22', 'Female', '2323 Harborview St', 'PO Box 346', '08-87890123', '0437-890-123', 'avery.brown@example.com', 'Perth'),
(247, 'Ethan', 'James', 'Martin', '2424 Meadowview St', '1990-08-05', 'Male', '2424 Meadowview St', 'PO Box 347', '08-88901234', '0438-901-234', 'ethan.martin@example.com', 'Perth'),
(248, 'Grace', 'Olivia', 'Lee', '2525 Riverbend St', '1985-11-25', 'Female', '2525 Riverbend St', 'PO Box 348', '08-89012345', '0439-012-345', 'grace.lee@example.com', 'Perth'),
(249, 'Henry', 'John', 'Walker', '2626 Valleyview St', '1993-06-11', 'Male', '2626 Valleyview St', 'PO Box 349', '08-90123456', '0440-123-456', 'henry.walker@example.com', 'Perth'),
(250, 'Mia', 'Sophia', 'Hall', '2727 Bayview St', '1981-02-28', 'Female', '2727 Bayview St', 'PO Box 350', '08-91234567', '0441-234-567', 'mia.hall@example.com', 'Perth'),
(251, 'Jackson', 'Andrew', 'Allen', '2828 Mountainview St', '1996-10-14', 'Male', '2828 Mountainview St', 'PO Box 351', '08-92345678', '0442-345-678', 'jackson.allen@example.com', 'Perth'),
(252, 'Abigail', 'Lily', 'Evans', '2929 Seaview St', '1988-11-02', 'Female', '2929 Seaview St', 'PO Box 352', '08-93456789', '0443-456-789', 'abigail.evans@example.com', 'Perth'),
(253, 'Lucas', 'Benjamin', 'Young', '3030 Harborview St', '1979-09-12', 'Male', '3030 Harborview St', 'PO Box 353', '08-94567890', '0444-567-890', 'lucas.young@example.com', 'Perth'),
(254, 'Emily', 'Emma', 'Hernandez', '3131 Valleyview St', '1992-03-17', 'Female', '3131 Valleyview St', 'PO Box 354', '08-95678901', '0445-678-901', 'emily.hernandez@example.com', 'Perth'),
(255, 'Sebastian', 'Ryan', 'Nelson', '3232 Lakeview St', '1983-05-23', 'Male', '3232 Lakeview St', 'PO Box 355', '08-96789012', '0446-789-012', 'sebastian.nelson@example.com', 'Perth'),
(256, 'Zoe', 'Charlotte', 'Hill', '3333 Clifftop St', '1995-04-19', 'Female', '3333 Clifftop St', 'PO Box 356', '08-97890123', '0447-890-123', 'zoe.hill@example.com', 'Perth'),
(257, 'William', 'Joseph', 'Carter', '3434 Seaside St', '1987-07-01', 'Male', '3434 Seaside St', 'PO Box 357', '08-98901234', '0448-901-234', 'william.carter@example.com', 'Perth'),
(258, 'Ella', 'Samantha', 'Collins', '3535 Valleyview St', '1982-10-20', 'Female', '3535 Valleyview St', 'PO Box 358', '08-99012345', '0449-012-345', 'ella.collins@example.com', 'Perth'),
(259, 'James', 'Matthew', 'Scott', '3636 Harborview St', '1990-08-29', 'Male', '3636 Harborview St', 'PO Box 359', '08-90123456', '0450-123-456', 'james.scott@example.com', 'Perth'),
(260, 'Avery', 'Sophia', 'Bell', '3737 Lakeview St', '1985-06-04', 'Female', '3737 Lakeview St', 'PO Box 360', '08-91234567', '0451-234-567', 'avery.bell@example.com', 'Perth'),
(261, 'Oliver', 'James', 'Murphy', '1819 Sunset Blvd', '1990-04-12', 'Male', '1819 Sunset Blvd', 'PO Box 361', '08-82345679', '0431-456-789', 'oliver.murphy@example.com', 'Perth'),
(262, 'Sophia', 'Grace', 'Wilson', '1918 Dawn Ave', '1988-05-21', 'Female', '1918 Dawn Ave', 'PO Box 362', '08-83456780', '0432-567-890', 'sophia.wilson@example.com', 'Perth'),
(263, 'Benjamin', 'Liam', 'Campbell', '2017 Lakeshore Dr', '1992-06-30', 'Male', '2017 Lakeshore Dr', 'PO Box 363', '08-84567891', '0433-678-901', 'benjamin.campbell@example.com', 'Perth'),
(264, 'Isabella', 'Marie', 'Adams', '2116 Mountain Rd', '1986-07-14', 'Female', '2116 Mountain Rd', 'PO Box 364', '08-85678902', '0434-789-012', 'isabella.adams@example.com', 'Perth'),
(265, 'Jack', 'Alexander', 'Cooper', '2215 Cliffside St', '1985-08-19', 'Male', '2215 Cliffside St', 'PO Box 365', '08-86789013', '0435-890-123', 'jack.cooper@example.com', 'Perth'),
(266, 'Emily', 'Rose', 'Moore', '2314 Oceanview Rd', '1991-09-23', 'Female', '2314 Oceanview Rd', 'PO Box 366', '08-87890124', '0436-901-234', 'emily.moore@example.com', 'Perth'),
(267, 'Lucas', 'Henry', 'Parker', '2413 Forest Ln', '1987-10-01', 'Male', '2413 Forest Ln', 'PO Box 367', '08-88901235', '0437-012-345', 'lucas.parker@example.com', 'Perth'),
(268, 'Amelia', 'Elizabeth', 'Roberts', '2512 Maple St', '1983-11-10', 'Female', '2512 Maple St', 'PO Box 368', '08-89012346', '0438-123-456', 'amelia.roberts@example.com', 'Perth'),
(269, 'Henry', 'John', 'Edwards', '2611 River Rd', '1989-12-30', 'Male', '2611 River Rd', 'PO Box 369', '08-90123457', '0439-234-567', 'henry.edwards@example.com', 'Perth'),
(270, 'Charlotte', 'Ava', 'Collins', '2710 Valley Ln', '1993-01-25', 'Female', '2710 Valley Ln', 'PO Box 370', '08-91234568', '0440-345-678', 'charlotte.collins@example.com', 'Perth'),
(271, 'Ethan', 'David', 'Wright', '2819 Bay Ave', '1990-02-14', 'Male', '2819 Bay Ave', 'PO Box 371', '08-92345679', '0441-456-789', 'ethan.wright@example.com', 'Perth'),
(272, 'Mia', 'Olivia', 'Hughes', '2918 Sunset Dr', '1991-03-18', 'Female', '2918 Sunset Dr', 'PO Box 372', '08-93456780', '0442-567-890', 'mia.hughes@example.com', 'Perth'),
(273, 'Noah', 'Joseph', 'Harris', '3017 Hilltop St', '1986-04-24', 'Male', '3017 Hilltop St', 'PO Box 373', '08-94567891', '0443-678-901', 'noah.harris@example.com', 'Perth'),
(274, 'Zoe', 'Sophia', 'Mitchell', '3116 Seaview Ln', '1992-05-30', 'Female', '3116 Seaview Ln', 'PO Box 374', '08-95678902', '0444-789-012', 'zoe.mitchell@example.com', 'Perth'),
(275, 'James', 'William', 'Bennett', '3215 Park Ave', '1985-06-17', 'Male', '3215 Park Ave', 'PO Box 375', '08-96789013', '0445-890-123', 'james.bennett@example.com', 'Perth'),
(276, 'Ava', 'Isabella', 'Gray', '3314 Lake Rd', '1993-07-09', 'Female', '3314 Lake Rd', 'PO Box 376', '08-97890124', '0446-901-234', 'ava.gray@example.com', 'Perth'),
(277, 'Alexander', 'Lucas', 'Wood', '3413 Mountain View Rd', '1990-08-22', 'Male', '3413 Mountain View Rd', 'PO Box 377', '08-98901235', '0447-012-345', 'alexander.wood@example.com', 'Perth'),
(278, 'Ella', 'Charlotte', 'Young', '3512 Forest Dr', '1987-09-28', 'Female', '3512 Forest Dr', 'PO Box 378', '08-99012346', '0448-123-456', 'ella.young@example.com', 'Perth'),
(279, 'Daniel', 'Matthew', 'Carter', '3611 Maple Blvd', '1988-10-19', 'Male', '3611 Maple Blvd', 'PO Box 379', '08-90123458', '0449-234-567', 'daniel.carter@example.com', 'Perth'),
(280, 'Emily', 'Lily', 'Lewis', '3710 Valley Dr', '1991-11-20', 'Female', '3710 Valley Dr', 'PO Box 380', '08-91234569', '0450-345-678', 'emily.lewis@example.com', 'Perth'),
(281, 'Aiden', 'James', 'Scott', '210 Sunset Blvd', '1984-04-02', 'Male', '210 Sunset Blvd', 'PO Box 381', '08-92345671', '0431-123-451', 'aiden.scott@example.com', 'Perth'),
(282, 'Charlotte', 'Grace', 'Evans', '311 Dawn Ave', '1989-05-14', 'Female', '311 Dawn Ave', 'PO Box 382', '08-93456782', '0432-234-562', 'charlotte.evans@example.com', 'Perth'),
(283, 'Jackson', 'Liam', 'Morris', '412 Lakeshore Dr', '1986-06-23', 'Male', '412 Lakeshore Dr', 'PO Box 383', '08-94567893', '0433-345-673', 'jackson.morris@example.com', 'Perth'),
(284, 'Sophia', 'Rose', 'Thomas', '513 Mountain Rd', '1985-07-12', 'Female', '513 Mountain Rd', 'PO Box 384', '08-95678904', '0434-456-784', 'sophia.thomas@example.com', 'Perth'),
(285, 'Ryan', 'Alexander', 'Taylor', '614 Cliffside St', '1993-08-10', 'Male', '614 Cliffside St', 'PO Box 385', '08-96789015', '0435-567-895', 'ryan.taylor@example.com', 'Perth'),
(286, 'Mia', 'Elizabeth', 'Brown', '715 Oceanview Rd', '1992-09-25', 'Female', '715 Oceanview Rd', 'PO Box 386', '08-97890126', '0436-678-906', 'mia.brown@example.com', 'Perth'),
(287, 'Ethan', 'Henry', 'White', '816 Forest Ln', '1990-10-04', 'Male', '816 Forest Ln', 'PO Box 387', '08-98901237', '0437-789-017', 'ethan.white@example.com', 'Perth'),
(288, 'Amelia', 'Marie', 'Clark', '917 Maple St', '1987-11-19', 'Female', '917 Maple St', 'PO Box 388', '08-99012348', '0438-890-128', 'amelia.clark@example.com', 'Perth'),
(289, 'Mason', 'John', 'Davis', '1018 River Rd', '1985-12-29', 'Male', '1018 River Rd', 'PO Box 389', '08-90123459', '0439-901-239', 'mason.davis@example.com', 'Perth'),
(290, 'Zoe', 'Ava', 'Martinez', '1119 Valley Ln', '1991-01-14', 'Female', '1119 Valley Ln', 'PO Box 390', '08-91234560', '0440-012-340', 'zoe.martinez@example.com', 'Perth'),
(291, 'Luke', 'William', 'Rodriguez', '1210 Bay Ave', '1989-02-21', 'Male', '1210 Bay Ave', 'PO Box 391', '08-92345671', '0441-123-451', 'luke.rodriguez@example.com', 'Perth'),
(292, 'Olivia', 'Isabella', 'Lewis', '1311 Sunset Dr', '1994-03-05', 'Female', '1311 Sunset Dr', 'PO Box 392', '08-93456782', '0442-234-562', 'olivia.lewis@example.com', 'Perth'),
(293, 'Samuel', 'Joseph', 'Walker', '1412 Hilltop St', '1990-04-15', 'Male', '1412 Hilltop St', 'PO Box 393', '08-94567893', '0443-345-673', 'samuel.walker@example.com', 'Perth'),
(294, 'Lily', 'Sophia', 'Allen', '1513 Seaview Ln', '1992-05-10', 'Female', '1513 Seaview Ln', 'PO Box 394', '08-95678904', '0444-456-784', 'lily.allen@example.com', 'Perth'),
(295, 'Daniel', 'James', 'Harris', '1614 Park Ave', '1995-06-19', 'Male', '1614 Park Ave', 'PO Box 395', '08-96789015', '0445-567-895', 'daniel.harris@example.com', 'Perth'),
(296, 'Ella', 'Ava', 'King', '1715 Lake Rd', '1987-07-25', 'Female', '1715 Lake Rd', 'PO Box 396', '08-97890126', '0446-678-906', 'ella.king@example.com', 'Perth'),
(297, 'James', 'Alexander', 'Scott', '1816 Mountain View Rd', '1991-08-05', 'Male', '1816 Mountain View Rd', 'PO Box 397', '08-98901237', '0447-789-017', 'james.scott@example.com', 'Perth'),
(298, 'Chloe', 'Charlotte', 'Nelson', '1917 Forest Dr', '1990-09-22', 'Female', '1917 Forest Dr', 'PO Box 398', '08-99012348', '0448-890-128', 'chloe.nelson@example.com', 'Perth'),
(299, 'Henry', 'John', 'Moore', '2018 Maple Blvd', '1989-10-10', 'Male', '2018 Maple Blvd', 'PO Box 399', '08-90123459', '0449-901-239', 'henry.moore@example.com', 'Perth'),
(300, 'Emily', 'Rose', 'Perez', '2119 Valley Dr', '1994-11-01', 'Female', '2119 Valley Dr', 'PO Box 400', '08-91234560', '0450-012-340', 'emily.perez@example.com', 'Perth');
INSERT INTO VoterRegistry (VoterID, FirstName, MiddleNames, LastName, Address, DateofBirth, Gender, ResidentialAddress, PostalAddress, ContactPhone, ContactMobile, ContactEmail, DivisionName)
VALUES
(301, 'Oliver', 'James', 'Mason', '501 North St', '1990-02-15', 'Male', '501 North St', 'PO Box 301', '08-92345670', '0431-123-450', 'oliver.mason@example.com', 'Canberra'),
(302, 'Sophia', 'Rose', 'Williams', '502 West Ave', '1985-03-30', 'Female', '502 West Ave', 'PO Box 302', '08-93456781', '0432-234-561', 'sophia.williams@example.com', 'Fenner'),
(303, 'Liam', 'Henry', 'Anderson', '503 South Blvd', '1992-04-22', 'Male', '503 South Blvd', 'PO Box 303', '08-94567892', '0433-345-672', 'liam.anderson@example.com', 'Banks'),
(304, 'Emma', 'Elizabeth', 'Hughes', '504 East St', '1988-05-10', 'Female', '504 East St', 'PO Box 304', '08-95678903', '0434-456-783', 'emma.hughes@example.com', 'Barton'),
(305, 'James', 'Alexander', 'Morgan', '505 Maple St', '1991-06-14', 'Male', '505 Maple St', 'PO Box 305', '08-96789014', '0435-567-894', 'james.morgan@example.com', 'Bennelong'),
(306, 'Ava', 'Marie', 'Carter', '506 Pine Rd', '1987-07-20', 'Female', '506 Pine Rd', 'PO Box 306', '08-97890125', '0436-678-905', 'ava.carter@example.com', 'Berowra'),
(307, 'Lucas', 'William', 'Griffin', '507 Oak St', '1993-08-30', 'Male', '507 Oak St', 'PO Box 307', '08-98901236', '0437-789-016', 'lucas.griffin@example.com', 'Blaxland'),
(308, 'Mia', 'Charlotte', 'Kelly', '508 Birch Ave', '1990-09-17', 'Female', '508 Birch Ave', 'PO Box 308', '08-99012347', '0438-890-127', 'mia.kelly@example.com', 'Bradfield'),
(309, 'Ethan', 'Joseph', 'Fisher', '509 Cedar Ln', '1994-10-29', 'Male', '509 Cedar Ln', 'PO Box 309', '08-90123458', '0439-901-238', 'ethan.fisher@example.com', 'Calare'),
(310, 'Isabella', 'Sophia', 'Price', '510 Spruce St', '1992-11-10', 'Female', '510 Spruce St', 'PO Box 310', '08-91234569', '0440-012-339', 'isabella.price@example.com', 'Chifley'),
(311, 'Noah', 'Jack', 'Stewart', '511 Elm Rd', '1989-12-22', 'Male', '511 Elm Rd', 'PO Box 311', '08-92345670', '0441-123-450', 'noah.stewart@example.com', 'Cook'),
(312, 'Emily', 'Grace', 'Wells', '512 Walnut St', '1986-01-11', 'Female', '512 Walnut St', 'PO Box 312', '08-93456781', '0442-234-561', 'emily.wells@example.com', 'Cowper'),
(313, 'Jackson', 'Matthew', 'Collins', '513 Ash Ave', '1995-02-28', 'Male', '513 Ash Ave', 'PO Box 313', '08-94567892', '0443-345-672', 'jackson.collins@example.com', 'Cunningham'),
(314, 'Harper', 'Lily', 'Green', '514 Chestnut Blvd', '1988-03-16', 'Female', '514 Chestnut Blvd', 'PO Box 314', '08-95678903', '0444-456-783', 'harper.green@example.com', 'Dobell'),
(315, 'Jacob', 'Daniel', 'Russell', '515 Willow St', '1993-04-07', 'Male', '515 Willow St', 'PO Box 315', '08-96789014', '0445-567-894', 'jacob.russell@example.com', 'Eden-Monaro'),
(316, 'Abigail', 'Chloe', 'Bell', '516 Poplar Ln', '1991-05-23', 'Female', '516 Poplar Ln', 'PO Box 316', '08-97890125', '0446-678-905', 'abigail.bell@example.com', 'Farrer'),
(317, 'Logan', 'Samuel', 'Cunningham', '517 Redwood Rd', '1994-06-19', 'Male', '517 Redwood Rd', 'PO Box 317', '08-98901236', '0447-789-016', 'logan.cunningham@example.com', 'Fowler'),
(318, 'Lily', 'Isabella', 'Bryant', '518 Fir St', '1992-07-14', 'Female', '518 Fir St', 'PO Box 318', '08-99012347', '0448-890-127', 'lily.bryant@example.com', 'Gilmore'),
(319, 'Elijah', 'David', 'Hayes', '519 Cypress Ave', '1990-08-12', 'Male', '519 Cypress Ave', 'PO Box 319', '08-90123458', '0449-901-238', 'elijah.hayes@example.com', 'Grayndler'),
(320, 'Avery', 'Emily', 'Barnes', '520 Sycamore St', '1995-09-29', 'Female', '520 Sycamore St', 'PO Box 320', '08-91234569', '0450-012-339', 'avery.barnes@example.com', 'Greenway'),
(321, 'Owen', 'Alexander', 'Perry', '521 Beech St', '1991-10-30', 'Male', '521 Beech St', 'PO Box 321', '08-92345670', '0451-123-450', 'owen.perry@example.com', 'Hughes'),
(322, 'Chloe', 'Sophia', 'Myers', '522 Magnolia Rd', '1989-11-18', 'Female', '522 Magnolia Rd', 'PO Box 322', '08-93456781', '0452-234-561', 'chloe.myers@example.com', 'Hume'),
(323, 'Mason', 'Liam', 'Phillips', '523 Hickory Ave', '1993-12-05', 'Male', '523 Hickory Ave', 'PO Box 323', '08-94567892', '0453-345-672', 'mason.phillips@example.com', 'Hunter'),
(324, 'Amelia', 'Grace', 'Turner', '524 Maplewood Dr', '1986-01-24', 'Female', '524 Maplewood Dr', 'PO Box 324', '08-95678903', '0454-456-783', 'amelia.turner@example.com', 'Kingsford Smith'),
(325, 'Benjamin', 'Joseph', 'Kelly', '525 Cedarwood St', '1992-02-28', 'Male', '525 Cedarwood St', 'PO Box 325', '08-96789014', '0455-567-894', 'benjamin.kelly@example.com', 'Lindsay'),
(326, 'Charlotte', 'Ava', 'Nelson', '601 Oakwood Dr', '1991-01-12', 'Female', '601 Oakwood Dr', 'PO Box 326', '08-91234567', '0456-678-901', 'charlotte.nelson@example.com', 'Lyne'),
(327, 'Samuel', 'Jack', 'Murray', '602 Redwood St', '1987-02-25', 'Male', '602 Redwood St', 'PO Box 327', '08-92345678', '0457-789-012', 'samuel.murray@example.com', 'Macarthur'),
(328, 'Sophia', 'Lily', 'Dixon', '603 Willow Ave', '1990-03-05', 'Female', '603 Willow Ave', 'PO Box 328', '08-93456789', '0458-890-123', 'sophia.dixon@example.com', 'Mackellar'),
(329, 'Henry', 'William', 'Harper', '604 Pine Ln', '1989-04-17', 'Male', '604 Pine Ln', 'PO Box 329', '08-94567890', '0459-901-234', 'henry.harper@example.com', 'Macquarie'),
(330, 'Mia', 'Grace', 'Foster', '605 Spruce St', '1992-05-28', 'Female', '605 Spruce St', 'PO Box 330', '08-95678901', '0460-012-345', 'mia.foster@example.com', 'Mitchell'),
(331, 'Isaac', 'David', 'Bailey', '606 Cedar Ave', '1991-06-15', 'Male', '606 Cedar Ave', 'PO Box 331', '08-96789012', '0461-123-456', 'isaac.bailey@example.com', 'New England'),
(332, 'Avery', 'Elizabeth', 'Brooks', '607 Birch Blvd', '1988-07-12', 'Female', '607 Birch Blvd', 'PO Box 332', '08-97890123', '0462-234-567', 'avery.brooks@example.com', 'Newcastle'),
(333, 'Daniel', 'Michael', 'Howard', '608 Elm St', '1990-08-30', 'Male', '608 Elm St', 'PO Box 333', '08-98901234', '0463-345-678', 'daniel.howard@example.com', 'North Sydney'),
(334, 'Harper', 'Sophia', 'Lewis', '609 Oak St', '1987-09-29', 'Female', '609 Oak St', 'PO Box 334', '08-99012345', '0464-456-789', 'harper.lewis@example.com', 'Page'),
(335, 'Lucas', 'Alexander', 'Bell', '610 Maple Rd', '1989-10-11', 'Male', '610 Maple Rd', 'PO Box 335', '08-90123456', '0465-567-890', 'lucas.bell@example.com', 'Parkes'),
(336, 'Olivia', 'Chloe', 'Moore', '611 Walnut Ln', '1992-11-22', 'Female', '611 Walnut Ln', 'PO Box 336', '08-91234567', '0466-678-901', 'olivia.moore@example.com', 'Parramatta'),
(337, 'Ethan', 'James', 'Cooper', '612 Chestnut Ave', '1991-12-14', 'Male', '612 Chestnut Ave', 'PO Box 337', '08-92345678', '0467-789-012', 'ethan.cooper@example.com', 'Reid'),
(338, 'Isabella', 'Grace', 'Evans', '613 Pine Dr', '1988-01-03', 'Female', '613 Pine Dr', 'PO Box 338', '08-93456789', '0468-890-123', 'isabella.evans@example.com', 'Richmond'),
(339, 'Jackson', 'Liam', 'Scott', '614 Maplewood St', '1995-02-21', 'Male', '614 Maplewood St', 'PO Box 339', '08-94567890', '0469-901-234', 'jackson.scott@example.com', 'Robertson'),
(340, 'Ella', 'Sophia', 'Morgan', '615 Cedarwood Ave', '1987-03-07', 'Female', '615 Cedarwood Ave', 'PO Box 340', '08-95678901', '0470-012-345', 'ella.morgan@example.com', 'Shortland'),
(341, 'Mason', 'Alexander', 'Campbell', '616 Redwood Ln', '1993-04-17', 'Male', '616 Redwood Ln', 'PO Box 341', '08-96789012', '0471-123-456', 'mason.campbell@example.com', 'Sydney'),
(342, 'Amelia', 'Grace', 'Reed', '617 Beech Ave', '1990-05-10', 'Female', '617 Beech Ave', 'PO Box 342', '08-97890123', '0472-234-567', 'amelia.reed@example.com', 'Whitlam'),
(343, 'Logan', 'Daniel', 'Mitchell', '618 Willow St', '1994-06-11', 'Male', '618 Willow St', 'PO Box 343', '08-98901234', '0473-345-678', 'logan.mitchell@example.com', 'Warringah'),
(344, 'Grace', 'Emily', 'Gibson', '619 Sycamore Blvd', '1992-07-22', 'Female', '619 Sycamore Blvd', 'PO Box 344', '08-99012345', '0474-456-789', 'grace.gibson@example.com', 'Wentworth'),
(345, 'Benjamin', 'James', 'Bennett', '620 Hickory St', '1989-08-03', 'Male', '620 Hickory St', 'PO Box 345', '08-90123456', '0475-567-890', 'benjamin.bennett@example.com', 'Werriwa'),
(346, 'Ava', 'Lily', 'Ramsey', '621 Birch Dr', '1991-09-12', 'Female', '621 Birch Dr', 'PO Box 346', '08-91234567', '0476-678-901', 'ava.ramsey@example.com', 'Bowman'),
(347, 'Elijah', 'Henry', 'Parker', '622 Redwood Ave', '1988-10-22', 'Male', '622 Redwood Ave', 'PO Box 347', '08-92345678', '0477-789-012', 'elijah.parker@example.com', 'Brisbane'),
(348, 'Emily', 'Charlotte', 'Patel', '623 Walnut St', '1990-11-17', 'Female', '623 Walnut St', 'PO Box 348', '08-93456789', '0478-890-123', 'emily.patel@example.com', 'Capricornia'),
(349, 'James', 'William', 'Baker', '624 Cedarwood Ln', '1987-12-12', 'Male', '624 Cedarwood Ln', 'PO Box 349', '08-94567890', '0479-901-234', 'james.baker@example.com', 'Dawson'),
(350, 'Lily', 'Elizabeth', 'Harris', '625 Chestnut Blvd', '1993-01-05', 'Female', '625 Chestnut Blvd', 'PO Box 350', '08-95678901', '0480-012-345', 'lily.harris@example.com', 'Fadden'),
(351, 'Olivia', 'Sophia', 'Turner', '626 Oakwood Ln', '1990-02-25', 'Female', '626 Oakwood Ln', 'PO Box 351', '08-91234567', '0481-678-901', 'olivia.turner@example.com', 'Fairfax'),
(352, 'Liam', 'James', 'Reed', '627 Redwood St', '1989-03-13', 'Male', '627 Redwood St', 'PO Box 352', '08-92345678', '0482-789-012', 'liam.reed@example.com', 'Fisher'),
(353, 'Charlotte', 'Emily', 'Phillips', '628 Willow Ave', '1992-04-07', 'Female', '628 Willow Ave', 'PO Box 353', '08-93456789', '0483-890-123', 'charlotte.phillips@example.com', 'Forde'),
(354, 'Noah', 'Alexander', 'Carter', '629 Pine Ln', '1988-05-19', 'Male', '629 Pine Ln', 'PO Box 354', '08-94567890', '0484-901-234', 'noah.carter@example.com', 'Griffith'),
(355, 'Amelia', 'Lily', 'Mitchell', '630 Spruce St', '1993-06-23', 'Female', '630 Spruce St', 'PO Box 355', '08-95678901', '0485-012-345', 'amelia.mitchell@example.com', 'Groom'),
(356, 'William', 'Henry', 'Murphy', '631 Cedar Ave', '1990-07-12', 'Male', '631 Cedar Ave', 'PO Box 356', '08-96789012', '0486-123-456', 'william.murphy@example.com', 'Herbert'),
(357, 'Sophia', 'Chloe', 'Cooper', '632 Birch Blvd', '1987-08-11', 'Female', '632 Birch Blvd', 'PO Box 357', '08-97890123', '0487-234-567', 'sophia.cooper@example.com', 'Hinkler'),
(358, 'James', 'Lucas', 'Bailey', '633 Elm St', '1989-09-25', 'Male', '633 Elm St', 'PO Box 358', '08-98901234', '0488-345-678', 'james.bailey@example.com', 'Kennedy'),
(359, 'Grace', 'Ava', 'Brooks', '634 Oak St', '1991-10-16', 'Female', '634 Oak St', 'PO Box 359', '08-99012345', '0489-456-789', 'grace.brooks@example.com', 'Leichhardt'),
(360, 'Lucas', 'Elijah', 'Bell', '635 Maple Rd', '1990-11-27', 'Male', '635 Maple Rd', 'PO Box 360', '08-90123456', '0490-567-890', 'lucas.bell@example.com', 'Lilley'),
(361, 'Ella', 'Grace', 'Howard', '636 Walnut Ln', '1988-12-03', 'Female', '636 Walnut Ln', 'PO Box 361', '08-91234567', '0491-678-901', 'ella.howard@example.com', 'Maranoa'),
(362, 'Benjamin', 'Daniel', 'Collins', '637 Chestnut Ave', '1992-01-11', 'Male', '637 Chestnut Ave', 'PO Box 362', '08-92345678', '0492-789-012', 'benjamin.collins@example.com', 'McPherson'),
(363, 'Avery', 'Sophia', 'Evans', '638 Pine Dr', '1991-02-22', 'Female', '638 Pine Dr', 'PO Box 363', '08-93456789', '0493-890-123', 'avery.evans@example.com', 'Moncrieff'),
(364, 'Daniel', 'Michael', 'Gray', '639 Maplewood St', '1988-03-14', 'Male', '639 Maplewood St', 'PO Box 364', '08-94567890', '0494-901-234', 'daniel.gray@example.com', 'Moreton'),
(365, 'Harper', 'Elizabeth', 'Lee', '640 Cedarwood Ave', '1990-04-15', 'Female', '640 Cedarwood Ave', 'PO Box 365', '08-95678901', '0495-012-345', 'harper.lee@example.com', 'Oxley'),
(366, 'Isaac', 'David', 'Morgan', '641 Redwood Ln', '1993-05-23', 'Male', '641 Redwood Ln', 'PO Box 366', '08-96789012', '0496-123-456', 'isaac.morgan@example.com', 'Petrie'),
(367, 'Emily', 'Ava', 'Brown', '642 Beech Ave', '1989-06-18', 'Female', '642 Beech Ave', 'PO Box 367', '08-97890123', '0497-234-567', 'emily.brown@example.com', 'Rankin'),
(368, 'Logan', 'Alexander', 'Ramsey', '643 Willow St', '1991-07-11', 'Male', '643 Willow St', 'PO Box 368', '08-98901234', '0498-345-678', 'logan.ramsey@example.com', 'Ryan'),
(369, 'Amelia', 'Lily', 'Thompson', '644 Birch Dr', '1990-08-29', 'Female', '644 Birch Dr', 'PO Box 369', '08-99012345', '0499-456-789', 'amelia.thompson@example.com', 'Wide Bay'),
(370, 'Mason', 'Henry', 'Harrison', '645 Sycamore Blvd', '1987-09-12', 'Male', '645 Sycamore Blvd', 'PO Box 370', '08-90123456', '0500-567-890', 'mason.harrison@example.com', 'Adelaide'),
(371, 'Ava', 'Chloe', 'Stewart', '646 Hickory St', '1993-10-15', 'Female', '646 Hickory St', 'PO Box 371', '08-91234567', '0501-678-901', 'ava.stewart@example.com', 'Barker'),
(372, 'Elijah', 'William', 'Reed', '647 Cedarwood Ln', '1991-11-16', 'Male', '647 Cedarwood Ln', 'PO Box 372', '08-92345678', '0502-789-012', 'elijah.reed@example.com', 'Boothby'),
(373, 'Sophia', 'Emily', 'Campbell', '648 Chestnut Blvd', '1990-12-05', 'Female', '648 Chestnut Blvd', 'PO Box 373', '08-93456789', '0503-890-123', 'sophia.campbell@example.com', 'Grey'),
(374, 'Henry', 'James', 'Bell', '649 Redwood Ave', '1988-01-21', 'Male', '649 Redwood Ave', 'PO Box 374', '08-94567890', '0504-901-234', 'henry.bell@example.com', 'Hindmarsh'),
(375, 'Mia', 'Elizabeth', 'Anderson', '650 Oakwood Dr', '1992-02-14', 'Female', '650 Oakwood Dr', 'PO Box 375', '08-95678901', '0505-012-345', 'mia.anderson@example.com', 'Kingston'),
(376, 'Lily', 'Sophia', 'James', '651 Redwood Ln', '1991-03-21', 'Female', '651 Redwood Ln', 'PO Box 376', '08-91234567', '0506-678-901', 'lily.james@example.com', 'Makin'),
(377, 'Oliver', 'James', 'Young', '652 Willow Ave', '1990-04-17', 'Male', '652 Willow Ave', 'PO Box 377', '08-92345678', '0507-789-012', 'oliver.young@example.com', 'Mayo'),
(378, 'Emily', 'Grace', 'Martin', '653 Cedarwood St', '1989-05-25', 'Female', '653 Cedarwood St', 'PO Box 378', '08-93456789', '0508-890-123', 'emily.martin@example.com', 'Sturt'),
(379, 'William', 'Lucas', 'Taylor', '654 Pine Ln', '1987-06-14', 'Male', '654 Pine Ln', 'PO Box 379', '08-94567890', '0509-901-234', 'william.taylor@example.com', 'Bass'),
(380, 'Sophia', 'Ava', 'Harris', '655 Birch Blvd', '1992-07-19', 'Female', '655 Birch Blvd', 'PO Box 380', '08-95678901', '0510-012-345', 'sophia.harris@example.com', 'Braddon'),
(381, 'James', 'Henry', 'Clark', '656 Cedarwood Dr', '1991-08-12', 'Male', '656 Cedarwood Dr', 'PO Box 381', '08-96789012', '0511-123-456', 'james.clark@example.com', 'Franklin'),
(382, 'Ava', 'Emily', 'Robinson', '657 Maple St', '1990-09-28', 'Female', '657 Maple St', 'PO Box 382', '08-97890123', '0512-234-567', 'ava.robinson@example.com', 'Lyons'),
(383, 'Mason', 'Alexander', 'Thompson', '658 Redwood Ln', '1989-10-05', 'Male', '658 Redwood Ln', 'PO Box 383', '08-98901234', '0513-345-678', 'mason.thompson@example.com', 'Aston'),
(384, 'Olivia', 'Sophia', 'King', '659 Walnut St', '1992-11-19', 'Female', '659 Walnut St', 'PO Box 384', '08-99012345', '0514-456-789', 'olivia.king@example.com', 'Ballarat'),
(385, 'Noah', 'James', 'Wright', '660 Cedarwood St', '1991-12-27', 'Male', '660 Cedarwood St', 'PO Box 385', '08-90123456', '0515-567-890', 'noah.wright@example.com', 'Bendigo'),
(386, 'Isabella', 'Chloe', 'Hill', '661 Maplewood Ln', '1990-01-16', 'Female', '661 Maplewood Ln', 'PO Box 386', '08-91234567', '0516-678-901', 'isabella.hill@example.com', 'Bruce'),
(387, 'Lucas', 'David', 'Green', '662 Redwood Ave', '1989-02-11', 'Male', '662 Redwood Ave', 'PO Box 387', '08-92345678', '0517-789-012', 'lucas.green@example.com', 'Calwell'),
(388, 'Amelia', 'Lily', 'Scott', '663 Oakwood St', '1991-03-24', 'Female', '663 Oakwood St', 'PO Box 388', '08-93456789', '0518-890-123', 'amelia.scott@example.com', 'Casey'),
(389, 'Liam', 'James', 'Baker', '664 Birch Ln', '1990-04-11', 'Male', '664 Birch Ln', 'PO Box 389', '08-94567890', '0519-901-234', 'liam.baker@example.com', 'Chisholm'),
(390, 'Mia', 'Grace', 'Adams', '665 Pine Dr', '1988-05-16', 'Female', '665 Pine Dr', 'PO Box 390', '08-95678901', '0520-012-345', 'mia.adams@example.com', 'Corio'),
(391, 'Ethan', 'Alexander', 'Nelson', '666 Maple Blvd', '1992-06-23', 'Male', '666 Maple Blvd', 'PO Box 391', '08-96789012', '0521-123-456', 'ethan.nelson@example.com', 'Deakin'),
(392, 'Harper', 'Emily', 'Walker', '667 Oakwood Dr', '1990-07-17', 'Female', '667 Oakwood Dr', 'PO Box 392', '08-97890123', '0522-234-567', 'harper.walker@example.com', 'Dunkley'),
(393, 'Alexander', 'Lucas', 'Morris', '668 Birch Ln', '1989-08-29', 'Male', '668 Birch Ln', 'PO Box 393', '08-98901234', '0523-345-678', 'alexander.morris@example.com', 'Flinders'),
(394, 'Emily', 'Sophia', 'Carter', '669 Redwood St', '1991-09-24', 'Female', '669 Redwood St', 'PO Box 394', '08-99012345', '0524-456-789', 'emily.carter@example.com', 'Gellibrand'),
(395, 'James', 'William', 'Rogers', '670 Cedarwood Ln', '1990-10-12', 'Male', '670 Cedarwood Ln', 'PO Box 395', '08-90123456', '0525-567-890', 'james.rogers@example.com', 'Gippsland'),
(396, 'Ava', 'Elizabeth', 'Foster', '671 Maplewood Dr', '1992-11-13', 'Female', '671 Maplewood Dr', 'PO Box 396', '08-91234567', '0526-678-901', 'ava.foster@example.com', 'Goldstein'),
(397, 'Noah', 'Henry', 'Price', '672 Cedar St', '1989-12-09', 'Male', '672 Cedar St', 'PO Box 397', '08-92345678', '0527-789-012', 'noah.price@example.com', 'Higgins'),
(398, 'Sophia', 'Lily', 'Peterson', '673 Oakwood Ln', '1991-01-18', 'Female', '673 Oakwood Ln', 'PO Box 398', '08-93456789', '0528-890-123', 'sophia.peterson@example.com', 'Holt'),
(399, 'Liam', 'James', 'Murphy', '674 Willow St', '1990-02-25', 'Male', '674 Willow St', 'PO Box 399', '08-94567890', '0529-901-234', 'liam.murphy@example.com', 'Hotham'),
(400, 'Olivia', 'Grace', 'Morris', '675 Spruce St', '1989-03-13', 'Female', '675 Spruce St', 'PO Box 400', '08-95678901', '0530-012-345', 'olivia.morris@example.com', 'Indi');
INSERT INTO VoterRegistry (VoterID, FirstName, MiddleNames, LastName, Address, DateofBirth, Gender, ResidentialAddress, PostalAddress, ContactPhone, ContactMobile, ContactEmail, DivisionName)
VALUES
(401, 'Charlotte', 'Isabella', 'Wood', '676 Cedarwood Dr', '1991-04-01', 'Female', '676 Cedarwood Dr', 'PO Box 401', '08-91234567', '0531-678-901', 'charlotte.wood@example.com', 'Isaacs'),
(402, 'Liam', 'David', 'Evans', '677 Maple Blvd', '1990-05-12', 'Male', '677 Maple Blvd', 'PO Box 402', '08-92345678', '0532-789-012', 'liam.evans@example.com', 'Jagajaga'),
(403, 'Amelia', 'Sophia', 'Hughes', '678 Oakwood St', '1989-06-23', 'Female', '678 Oakwood St', 'PO Box 403', '08-93456789', '0533-890-123', 'amelia.hughes@example.com', 'Kooyong'),
(404, 'Oliver', 'James', 'Turner', '679 Redwood Ln', '1992-07-19', 'Male', '679 Redwood Ln', 'PO Box 404', '08-94567890', '0534-901-234', 'oliver.turner@example.com', 'Lalor'),
(405, 'Isabella', 'Grace', 'Ward', '680 Pine Dr', '1991-08-05', 'Female', '680 Pine Dr', 'PO Box 405', '08-95678901', '0535-012-345', 'isabella.ward@example.com', 'La Trobe'),
(406, 'James', 'Henry', 'Mitchell', '681 Birch Ln', '1990-09-14', 'Male', '681 Birch Ln', 'PO Box 406', '08-96789012', '0536-123-456', 'james.mitchell@example.com', 'Mallee'),
(407, 'Sophia', 'Chloe', 'Martin', '682 Cedarwood Blvd', '1992-10-25', 'Female', '682 Cedarwood Blvd', 'PO Box 407', '08-97890123', '0537-234-567', 'sophia.martin@example.com', 'Maribyrnong'),
(408, 'Mason', 'Alexander', 'White', '683 Maple St', '1989-11-19', 'Male', '683 Maple St', 'PO Box 408', '08-98901234', '0538-345-678', 'mason.white@example.com', 'McEwen'),
(409, 'Emily', 'Sophia', 'Lewis', '684 Oakwood Ln', '1991-12-27', 'Female', '684 Oakwood Ln', 'PO Box 409', '08-99012345', '0539-456-789', 'emily.lewis@example.com', 'Melbourne'),
(410, 'Alexander', 'Lucas', 'Harrison', '685 Cedarwood St', '1990-01-16', 'Male', '685 Cedarwood St', 'PO Box 410', '08-90123456', '0540-567-890', 'alexander.harrison@example.com', 'Menzies'),
(411, 'Ava', 'Emily', 'Walker', '686 Redwood Ave', '1989-02-11', 'Female', '686 Redwood Ave', 'PO Box 411', '08-91234567', '0541-678-901', 'ava.walker@example.com', 'Scullin'),
(412, 'Noah', 'James', 'Stewart', '687 Willow St', '1992-03-24', 'Male', '687 Willow St', 'PO Box 412', '08-92345678', '0542-789-012', 'noah.stewart@example.com', 'Wannon'),
(413, 'Olivia', 'Sophia', 'Hall', '688 Pine Ln', '1991-04-11', 'Female', '688 Pine Ln', 'PO Box 413', '08-93456789', '0543-890-123', 'olivia.hall@example.com', 'Wills'),
(414, 'Liam', 'James', 'Harris', '689 Cedar Blvd', '1990-05-16', 'Male', '689 Cedar Blvd', 'PO Box 414', '08-94567890', '0544-901-234', 'liam.harris@example.com', 'Brand'),
(415, 'Charlotte', 'Isabella', 'Clark', '690 Maplewood Dr', '1989-06-23', 'Female', '690 Maplewood Dr', 'PO Box 415', '08-95678901', '0545-012-345', 'charlotte.clark@example.com', 'Canning'),
(416, 'Mason', 'David', 'King', '691 Redwood St', '1991-07-12', 'Male', '691 Redwood St', 'PO Box 416', '08-96789012', '0546-123-456', 'mason.king@example.com', 'Cowan'),
(417, 'Amelia', 'Grace', 'Anderson', '692 Birch Blvd', '1992-08-19', 'Female', '692 Birch Blvd', 'PO Box 417', '08-97890123', '0547-234-567', 'amelia.anderson@example.com', 'Curtin'),
(418, 'Oliver', 'Henry', 'Scott', '693 Oakwood Ln', '1990-09-18', 'Male', '693 Oakwood Ln', 'PO Box 418', '08-98901234', '0548-345-678', 'oliver.scott@example.com', 'Forrest'),
(419, 'Sophia', 'Chloe', 'Campbell', '694 Cedarwood Dr', '1991-10-11', 'Female', '694 Cedarwood Dr', 'PO Box 419', '08-99012345', '0549-456-789', 'sophia.campbell@example.com', 'Fremantle'),
(420, 'James', 'William', 'Young', '695 Maplewood Blvd', '1989-11-17', 'Male', '695 Maplewood Blvd', 'PO Box 420', '08-90123456', '0550-567-890', 'james.young@example.com', 'Moore'),
(421, 'Ava', 'Lily', 'Morgan', '696 Willow Ln', '1992-12-23', 'Female', '696 Willow Ln', 'PO Box 421', '08-91234567', '0551-678-901', 'ava.morgan@example.com', 'O''Connor'),
(422, 'Noah', 'James', 'Coleman', '697 Redwood Dr', '1990-01-19', 'Male', '697 Redwood Dr', 'PO Box 422', '08-92345678', '0552-789-012', 'noah.coleman@example.com', 'Pearce'),
(423, 'Olivia', 'Sophia', 'Reed', '698 Birch St', '1991-02-13', 'Female', '698 Birch St', 'PO Box 423', '08-93456789', '0553-890-123', 'olivia.reed@example.com', 'Perth'),
(424, 'Lucas', 'Alexander', 'Foster', '699 Cedarwood Ln', '1990-03-21', 'Male', '699 Cedarwood Ln', 'PO Box 424', '08-94567890', '0554-901-234', 'lucas.foster@example.com', 'Swan'),
(425, 'Emily', 'Grace', 'Richardson', '700 Maple Blvd', '1989-04-30', 'Female', '700 Maple Blvd', 'PO Box 425', '08-95678901', '0555-012-345', 'emily.richardson@example.com', 'Tangney'),
(426, 'Benjamin', 'David', 'Morris', '701 Cedar Blvd', '1990-05-18', 'Male', '701 Cedar Blvd', 'PO Box 426', '08-96789012', '0556-123-456', 'benjamin.morris@example.com', 'Paterson'),
(427, 'Sophia', 'Grace', 'Bennett', '702 Maple St', '1991-06-22', 'Female', '702 Maple St', 'PO Box 427', '08-97890123', '0557-234-567', 'sophia.bennett@example.com', 'Riverina'),
(428, 'Lucas', 'Henry', 'Roberts', '703 Oakwood Blvd', '1992-07-30', 'Male', '703 Oakwood Blvd', 'PO Box 428', '08-98901234', '0558-345-678', 'lucas.roberts@example.com', 'Watson'),
(429, 'Ava', 'Emily', 'Phillips', '704 Birch Dr', '1990-08-12', 'Female', '704 Birch Dr', 'PO Box 429', '08-99012345', '0559-456-789', 'ava.phillips@example.com', 'Dickson'),
(430, 'Oliver', 'James', 'Turner', '705 Willow Ln', '1989-09-11', 'Male', '705 Willow Ln', 'PO Box 430', '08-90123456', '0560-567-890', 'oliver.turner@example.com', 'Longman'),
(431, 'Amelia', 'Sophia', 'Clark', '706 Pinewood Blvd', '1991-10-19', 'Female', '706 Pinewood Blvd', 'PO Box 431', '08-91234567', '0561-678-901', 'amelia.clark@example.com', 'Blair'),
(432, 'James', 'Alexander', 'Martinez', '707 Redwood Ave', '1990-11-23', 'Male', '707 Redwood Ave', 'PO Box 432', '08-92345678', '0562-789-012', 'james.martinez@example.com', 'Hasluck'),
(433, 'Emily', 'Grace', 'Davis', '708 Maplewood St', '1989-12-01', 'Female', '708 Maplewood St', 'PO Box 433', '08-93456789', '0563-890-123', 'emily.davis@example.com', 'Lingiari'),
(434, 'Benjamin', 'Henry', 'Evans', '709 Cedar Blvd', '1992-01-11', 'Male', '709 Cedar Blvd', 'PO Box 434', '08-94567890', '0564-901-234', 'benjamin.evans@example.com', 'Solomon'),
(435, 'Sophia', 'Isabella', 'Gonzalez', '710 Maple Dr', '1991-02-16', 'Female', '710 Maple Dr', 'PO Box 435', '08-95678901', '0565-012-345', 'sophia.gonzalez@example.com', 'Gorton'),
(436, 'Liam', 'James', 'Rodriguez', '711 Oakwood Ln', '1990-03-13', 'Male', '711 Oakwood Ln', 'PO Box 436', '08-96789012', '0566-123-456', 'liam.rodriguez@example.com', 'Bonner'),
(437, 'Charlotte', 'Grace', 'Miller', '712 Birch Ln', '1989-04-25', 'Female', '712 Birch Ln', 'PO Box 437', '08-97890123', '0567-234-567', 'charlotte.miller@example.com', 'Flynn'),
(438, 'Mason', 'Lucas', 'Martinez', '713 Redwood Blvd', '1991-05-17', 'Male', '713 Redwood Blvd', 'PO Box 438', '08-98901234', '0568-345-678', 'mason.martinez@example.com', 'Durack'),
(439, 'Isabella', 'Emily', 'Moore', '714 Maplewood Ave', '1990-06-22', 'Female', '714 Maplewood Ave', 'PO Box 439', '08-99012345', '0569-456-789', 'isabella.moore@example.com', 'McMahon'),
(440, 'Oliver', 'David', 'Jackson', '715 Pinewood Dr', '1989-07-29', 'Male', '715 Pinewood Dr', 'PO Box 440', '08-90123456', '0570-567-890', 'oliver.jackson@example.com', 'Wright'),
(441, 'Emily', 'Sophia', 'Anderson', '716 Oakwood St', '1992-08-15', 'Female', '716 Oakwood St', 'PO Box 441', '08-91234567', '0571-678-901', 'emily.anderson@example.com', 'Burt'),
(442, 'James', 'Henry', 'Lopez', '717 Maple Blvd', '1991-09-21', 'Male', '717 Maple Blvd', 'PO Box 442', '08-92345678', '0572-789-012', 'james.lopez@example.com', 'Bean'),
(443, 'Amelia', 'Grace', 'Perez', '718 Birch Ln', '1990-10-17', 'Female', '718 Birch Ln', 'PO Box 443', '08-93456789', '0573-890-123', 'amelia.perez@example.com', 'Clark'),
(444, 'Lucas', 'James', 'Hernandez', '719 Redwood Dr', '1989-11-12', 'Male', '719 Redwood Dr', 'PO Box 444', '08-94567890', '0574-901-234', 'lucas.hernandez@example.com', 'Cooper'),
(445, 'Sophia', 'Chloe', 'Hill', '720 Maplewood Blvd', '1991-12-24', 'Female', '720 Maplewood Blvd', 'PO Box 445', '08-95678901', '0575-012-345', 'sophia.hill@example.com', 'Fraser'),
(446, 'Noah', 'David', 'Scott', '721 Pinewood Ln', '1990-01-10', 'Male', '721 Pinewood Ln', 'PO Box 446', '08-96789012', '0576-123-456', 'noah.scott@example.com', 'Macnamara'),
(447, 'Ava', 'Lily', 'Allen', '722 Willow St', '1992-02-22', 'Female', '722 Willow St', 'PO Box 447', '08-97890123', '0577-234-567', 'ava.allen@example.com', 'Monash'),
(448, 'Oliver', 'Henry', 'Young', '723 Redwood Ln', '1989-03-11', 'Male', '723 Redwood Ln', 'PO Box 448', '08-98901234', '0578-345-678', 'oliver.young@example.com', 'Nicholls'),
(449, 'Sophia', 'Emily', 'Brown', '724 Maple Dr', '1991-04-18', 'Female', '724 Maple Dr', 'PO Box 449', '08-99012345', '0579-456-789', 'sophia.brown@example.com', 'Spence'),
(450, 'Liam', 'Alexander', 'King', '725 Oakwood Ln', '1990-05-25', 'Male', '725 Oakwood Ln', 'PO Box 450', '08-90123456', '0580-567-890', 'liam.king@example.com', 'Hawke'),
(451, 'Mia', 'Rose', 'Taylor', '726 Willow Blvd', '1989-06-10', 'Female', '726 Willow Blvd', 'PO Box 451', '08-91234567', '0581-678-901', 'mia.taylor@example.com', 'Corangamite'),
(452, 'William', 'James', 'Harris', '727 Oakwood St', '1990-07-15', 'Male', '727 Oakwood St', 'PO Box 452', '08-92345678', '0582-789-012', 'william.harris@example.com', 'Canberra'),
(453, 'Emily', 'Grace', 'Thomas', '728 Maple Dr', '1991-08-21', 'Female', '728 Maple Dr', 'PO Box 453', '08-93456789', '0583-890-123', 'emily.thomas@example.com', 'Fenner'),
(454, 'Alexander', 'David', 'White', '729 Cedar Blvd', '1989-09-27', 'Male', '729 Cedar Blvd', 'PO Box 454', '08-94567890', '0584-901-234', 'alexander.white@example.com', 'Banks'),
(455, 'Sophia', 'Isabella', 'Martinez', '730 Pinewood Ln', '1990-10-12', 'Female', '730 Pinewood Ln', 'PO Box 455', '08-95678901', '0585-012-345', 'sophia.martinez@example.com', 'Barton'),
(456, 'Liam', 'Henry', 'Garcia', '731 Birch Dr', '1992-11-18', 'Male', '731 Birch Dr', 'PO Box 456', '08-96789012', '0586-123-456', 'liam.garcia@example.com', 'Bennelong'),
(457, 'Charlotte', 'Olivia', 'Rodriguez', '732 Maplewood Blvd', '1991-12-22', 'Female', '732 Maplewood Blvd', 'PO Box 457', '08-97890123', '0587-234-567', 'charlotte.rodriguez@example.com', 'Berowra'),
(458, 'Mason', 'James', 'Lee', '733 Redwood St', '1989-01-14', 'Male', '733 Redwood St', 'PO Box 458', '08-98901234', '0588-345-678', 'mason.lee@example.com', 'Blaxland'),
(459, 'Olivia', 'Sophia', 'Walker', '734 Oakwood Ln', '1992-02-19', 'Female', '734 Oakwood Ln', 'PO Box 459', '08-99012345', '0589-456-789', 'olivia.walker@example.com', 'Bradfield'),
(460, 'Noah', 'Lucas', 'King', '735 Willow St', '1990-03-23', 'Male', '735 Willow St', 'PO Box 460', '08-90123456', '0590-567-890', 'noah.king@example.com', 'Calare'),
(461, 'Amelia', 'Grace', 'Young', '736 Maple Blvd', '1991-04-25', 'Female', '736 Maple Blvd', 'PO Box 461', '08-91234567', '0591-678-901', 'amelia.young@example.com', 'Chifley'),
(462, 'Lucas', 'Henry', 'Scott', '737 Pinewood Dr', '1992-05-30', 'Male', '737 Pinewood Dr', 'PO Box 462', '08-92345678', '0592-789-012', 'lucas.scott@example.com', 'Cook'),
(463, 'Isabella', 'Emily', 'Hill', '738 Birch Blvd', '1989-06-21', 'Female', '738 Birch Blvd', 'PO Box 463', '08-93456789', '0593-890-123', 'isabella.hill@example.com', 'Cowper'),
(464, 'James', 'Alexander', 'Adams', '739 Cedar Ln', '1990-07-27', 'Male', '739 Cedar Ln', 'PO Box 464', '08-94567890', '0594-901-234', 'james.adams@example.com', 'Cunningham'),
(465, 'Ava', 'Sophia', 'Nelson', '740 Maplewood Blvd', '1991-08-10', 'Female', '740 Maplewood Blvd', 'PO Box 465', '08-95678901', '0595-012-345', 'ava.nelson@example.com', 'Dobell'),
(466, 'Benjamin', 'David', 'Evans', '741 Oakwood Dr', '1992-09-14', 'Male', '741 Oakwood Dr', 'PO Box 466', '08-96789012', '0596-123-456', 'benjamin.evans@example.com', 'Eden-Monaro'),
(467, 'Mia', 'Emily', 'Reed', '742 Pine Blvd', '1990-10-22', 'Female', '742 Pine Blvd', 'PO Box 467', '08-97890123', '0597-234-567', 'mia.reed@example.com', 'Farrer'),
(468, 'William', 'James', 'Gray', '743 Maple St', '1989-11-19', 'Male', '743 Maple St', 'PO Box 468', '08-98901234', '0598-345-678', 'william.gray@example.com', 'Fowler'),
(469, 'Emily', 'Olivia', 'Mitchell', '744 Birch Ln', '1991-12-27', 'Female', '744 Birch Ln', 'PO Box 469', '08-99012345', '0599-456-789', 'emily.mitchell@example.com', 'Gilmore'),
(470, 'Alexander', 'Henry', 'Sanchez', '745 Willow Blvd', '1992-01-14', 'Male', '745 Willow Blvd', 'PO Box 470', '08-90123456', '0600-567-890', 'alexander.sanchez@example.com', 'Grayndler'),
(471, 'Sophia', 'Grace', 'Clark', '746 Oakwood Ln', '1989-02-18', 'Female', '746 Oakwood Ln', 'PO Box 471', '08-91234567', '0601-678-901', 'sophia.clark@example.com', 'Greenway'),
(472, 'Mason', 'James', 'Ramirez', '747 Pinewood St', '1990-03-22', 'Male', '747 Pinewood St', 'PO Box 472', '08-92345678', '0602-789-012', 'mason.ramirez@example.com', 'Hughes'),
(473, 'Charlotte', 'Emily', 'Roberts', '748 Cedar Blvd', '1991-04-30', 'Female', '748 Cedar Blvd', 'PO Box 473', '08-93456789', '0603-890-123', 'charlotte.roberts@example.com', 'Hume'),
(474, 'Noah', 'Lucas', 'Garcia', '749 Maplewood Blvd', '1992-05-12', 'Male', '749 Maplewood Blvd', 'PO Box 474', '08-94567890', '0604-901-234', 'noah.garcia@example.com', 'Hunter'),
(475, 'Amelia', 'Sophia', 'Rodriguez', '750 Birch Dr', '1989-06-29', 'Female', '750 Birch Dr', 'PO Box 475', '08-95678901', '0605-012-345', 'amelia.rodriguez@example.com', 'Kingsford Smith'),
(476, 'Zoe', 'Grace', 'Watson', '751 Oakwood St', '1990-07-21', 'Female', '751 Oakwood St', 'PO Box 476', '08-96789012', '0606-123-456', 'zoe.watson@example.com', 'Lindsay'),
(477, 'Ethan', 'James', 'Hughes', '752 Maplewood Dr', '1991-08-25', 'Male', '752 Maplewood Dr', 'PO Box 477', '08-97890123', '0607-234-567', 'ethan.hughes@example.com', 'Lyne'),
(478, 'Ava', 'Isabella', 'Scott', '753 Birch Blvd', '1992-09-18', 'Female', '753 Birch Blvd', 'PO Box 478', '08-98901234', '0608-345-678', 'ava.scott@example.com', 'Macarthur'),
(479, 'Jacob', 'Daniel', 'Carter', '754 Pinewood Ln', '1990-10-12', 'Male', '754 Pinewood Ln', 'PO Box 479', '08-99012345', '0609-456-789', 'jacob.carter@example.com', 'Mackellar'),
(480, 'Mia', 'Sophia', 'Morris', '755 Oakwood Dr', '1991-11-15', 'Female', '755 Oakwood Dr', 'PO Box 480', '08-90123456', '0610-567-890', 'mia.morris@example.com', 'Macquarie'),
(481, 'Liam', 'William', 'Wood', '756 Maple Blvd', '1992-12-20', 'Male', '756 Maple Blvd', 'PO Box 481', '08-91234567', '0611-678-901', 'liam.wood@example.com', 'Mitchell'),
(482, 'Olivia', 'Emily', 'Price', '757 Pinewood Blvd', '1989-01-10', 'Female', '757 Pinewood Blvd', 'PO Box 482', '08-92345678', '0612-789-012', 'olivia.price@example.com', 'New England'),
(483, 'Ethan', 'Jacob', 'Gray', '758 Birch Dr', '1990-02-14', 'Male', '758 Birch Dr', 'PO Box 483', '08-93456789', '0613-890-123', 'ethan.gray@example.com', 'Newcastle'),
(484, 'Emma', 'Ava', 'Sullivan', '759 Cedar Blvd', '1991-03-18', 'Female', '759 Cedar Blvd', 'PO Box 484', '08-94567890', '0614-901-234', 'emma.sullivan@example.com', 'North Sydney'),
(485, 'Noah', 'Alexander', 'Hughes', '760 Oakwood Ln', '1992-04-20', 'Male', '760 Oakwood Ln', 'PO Box 485', '08-95678901', '0615-012-345', 'noah.hughes@example.com', 'Page'),
(486, 'Charlotte', 'Isabella', 'Cook', '761 Maplewood Blvd', '1989-05-25', 'Female', '761 Maplewood Blvd', 'PO Box 486', '08-96789012', '0616-123-456', 'charlotte.cook@example.com', 'Parkes'),
(487, 'Jack', 'William', 'Thompson', '762 Pinewood Dr', '1990-06-29', 'Male', '762 Pinewood Dr', 'PO Box 487', '08-97890123', '0617-234-567', 'jack.thompson@example.com', 'Parramatta'),
(488, 'Amelia', 'Sophia', 'Wilson', '763 Birch Blvd', '1991-07-30', 'Female', '763 Birch Blvd', 'PO Box 488', '08-98901234', '0618-345-678', 'amelia.wilson@example.com', 'Reid'),
(489, 'Benjamin', 'James', 'Collins', '764 Cedar Ln', '1992-08-31', 'Male', '764 Cedar Ln', 'PO Box 489', '08-99012345', '0619-456-789', 'benjamin.collins@example.com', 'Richmond'),
(490, 'Ella', 'Grace', 'Morris', '765 Maplewood Blvd', '1989-09-22', 'Female', '765 Maplewood Blvd', 'PO Box 490', '08-90123456', '0620-567-890', 'ella.morris@example.com', 'Robertson'),
(491, 'Oliver', 'Lucas', 'Bell', '766 Oakwood Ln', '1990-10-26', 'Male', '766 Oakwood Ln', 'PO Box 491', '08-91234567', '0621-678-901', 'oliver.bell@example.com', 'Shortland'),
(492, 'Sophie', 'Isabella', 'Powell', '767 Pinewood Blvd', '1991-11-15', 'Female', '767 Pinewood Blvd', 'PO Box 492', '08-92345678', '0622-789-012', 'sophie.powell@example.com', 'Sydney'),
(493, 'Lucas', 'Henry', 'Graham', '768 Birch Dr', '1992-12-22', 'Male', '768 Birch Dr', 'PO Box 493', '08-93456789', '0623-890-123', 'lucas.graham@example.com', 'Whitlam'),
(494, 'Isabella', 'Olivia', 'Fisher', '769 Cedar Blvd', '1989-01-10', 'Female', '769 Cedar Blvd', 'PO Box 494', '08-94567890', '0624-901-234', 'isabella.fisher@example.com', 'Warringah'),
(495, 'Noah', 'James', 'Stewart', '770 Maplewood Dr', '1990-02-15', 'Male', '770 Maplewood Dr', 'PO Box 495', '08-95678901', '0625-012-345', 'noah.stewart@example.com', 'Wentworth'),
(496, 'Chloe', 'Grace', 'Bennett', '771 Pinewood Ln', '1991-03-22', 'Female', '771 Pinewood Ln', 'PO Box 496', '08-96789012', '0626-123-456', 'chloe.bennett@example.com', 'Werriwa'),
(497, 'James', 'Michael', 'Sanders', '772 Birch Blvd', '1992-04-20', 'Male', '772 Birch Blvd', 'PO Box 497', '08-97890123', '0627-234-567', 'james.sanders@example.com', 'Bowman'),
(498, 'Harper', 'Emma', 'Morales', '773 Cedar Ln', '1989-05-30', 'Female', '773 Cedar Ln', 'PO Box 498', '08-98901234', '0628-345-678', 'harper.morales@example.com', 'Brisbane'),
(499, 'Liam', 'Alexander', 'Parker', '774 Maplewood Blvd', '1990-06-15', 'Male', '774 Maplewood Blvd', 'PO Box 499', '08-99012345', '0629-456-789', 'liam.parker@example.com', 'Capricornia'),
(500, 'Zoe', 'Olivia', 'Murphy', '775 Oakwood Dr', '1991-07-18', 'Female', '775 Oakwood Dr', 'PO Box 500', '08-90123456', '0630-567-890', 'zoe.murphy@example.com', 'Dawson'),
(501, 'Ethan', 'Jacob', 'Bryant', '776 Maplewood St', '1992-08-17', 'Male', '776 Maplewood St', 'PO Box 501', '08-91234567', '0631-678-901', 'ethan.bryant@example.com', 'Fadden'),
(502, 'Olivia', 'Grace', 'Morris', '777 Oakwood Dr', '1991-09-18', 'Female', '777 Oakwood Dr', 'PO Box 502', '08-92345678', '0632-789-012', 'olivia.morris@example.com', 'Fairfax'),
(503, 'Liam', 'William', 'Fisher', '778 Pinewood Ln', '1992-10-20', 'Male', '778 Pinewood Ln', 'PO Box 503', '08-93456789', '0633-890-123', 'liam.fisher@example.com', 'Fisher'),
(504, 'Emma', 'Sophia', 'Parker', '779 Birch Blvd', '1991-11-22', 'Female', '779 Birch Blvd', 'PO Box 504', '08-94567890', '0634-901-234', 'emma.parker@example.com', 'Forde'),
(505, 'Noah', 'James', 'Cooper', '780 Cedar Ln', '1990-12-25', 'Male', '780 Cedar Ln', 'PO Box 505', '08-95678901', '0635-012-345', 'noah.cooper@example.com', 'Griffith'),
(506, 'Ava', 'Isabella', 'Reed', '781 Maplewood Blvd', '1991-01-28', 'Female', '781 Maplewood Blvd', 'PO Box 506', '08-96789012', '0636-123-456', 'ava.reed@example.com', 'Groom'),
(507, 'Jacob', 'Daniel', 'Brooks', '782 Pinewood Dr', '1992-02-20', 'Male', '782 Pinewood Dr', 'PO Box 507', '08-97890123', '0637-234-567', 'jacob.brooks@example.com', 'Herbert'),
(508, 'Chloe', 'Emily', 'Murphy', '783 Birch Blvd', '1990-03-15', 'Female', '783 Birch Blvd', 'PO Box 508', '08-98901234', '0638-345-678', 'chloe.murphy@example.com', 'Hinkler'),
(509, 'Ethan', 'Michael', 'King', '784 Cedar Ln', '1991-04-18', 'Male', '784 Cedar Ln', 'PO Box 509', '08-99012345', '0639-456-789', 'ethan.king@example.com', 'Kennedy'),
(510, 'Sophia', 'Isabella', 'Fisher', '785 Maplewood Dr', '1992-05-20', 'Female', '785 Maplewood Dr', 'PO Box 510', '08-90123456', '0640-567-890', 'sophia.fisher@example.com', 'Leichhardt'),
(511, 'Benjamin', 'Oliver', 'Scott', '786 Pinewood Ln', '1990-06-22', 'Male', '786 Pinewood Ln', 'PO Box 511', '08-91234567', '0641-678-901', 'benjamin.scott@example.com', 'Lilley'),
(512, 'Amelia', 'Olivia', 'Ward', '787 Birch Blvd', '1991-07-25', 'Female', '787 Birch Blvd', 'PO Box 512', '08-92345678', '0642-789-012', 'amelia.ward@example.com', 'Maranoa'),
(513, 'Liam', 'Alexander', 'Ward', '788 Cedar Ln', '1992-08-27', 'Male', '788 Cedar Ln', 'PO Box 513', '08-93456789', '0643-890-123', 'liam.ward@example.com', 'McPherson'),
(514, 'Isabella', 'Mia', 'Wright', '789 Maplewood Blvd', '1990-09-30', 'Female', '789 Maplewood Blvd', 'PO Box 514', '08-94567890', '0644-901-234', 'isabella.wright@example.com', 'Moncrieff'),
(515, 'Ethan', 'James', 'Wong', '790 Pinewood Dr', '1991-10-31', 'Male', '790 Pinewood Dr', 'PO Box 515', '08-95678901', '0645-012-345', 'ethan.wong@example.com', 'Moreton'),
(516, 'Olivia', 'Sophia', 'Ellis', '791 Birch Blvd', '1992-11-25', 'Female', '791 Birch Blvd', 'PO Box 516', '08-96789012', '0646-123-456', 'olivia.ellis@example.com', 'Oxley'),
(517, 'Liam', 'William', 'Young', '792 Cedar Ln', '1990-12-28', 'Male', '792 Cedar Ln', 'PO Box 517', '08-97890123', '0647-234-567', 'liam.young@example.com', 'Petrie'),
(518, 'Emma', 'Grace', 'Stewart', '793 Maplewood Dr', '1991-01-29', 'Female', '793 Maplewood Dr', 'PO Box 518', '08-98901234', '0648-345-678', 'emma.stewart@example.com', 'Rankin'),
(519, 'Noah', 'Jacob', 'Graham', '794 Pinewood Ln', '1992-02-23', 'Male', '794 Pinewood Ln', 'PO Box 519', '08-99012345', '0649-456-789', 'noah.graham@example.com', 'Ryan'),
(520, 'Chloe', 'Isabella', 'Clark', '795 Birch Blvd', '1990-03-20', 'Female', '795 Birch Blvd', 'PO Box 520', '08-90123456', '0650-567-890', 'chloe.clark@example.com', 'Wide Bay'),
(521, 'Benjamin', 'Ethan', 'Harris', '796 Cedar Ln', '1991-04-15', 'Male', '796 Cedar Ln', 'PO Box 521', '08-91234567', '0651-678-901', 'benjamin.harris@example.com', 'Adelaide'),
(522, 'Olivia', 'Amelia', 'Lee', '797 Maplewood Blvd', '1992-05-18', 'Female', '797 Maplewood Blvd', 'PO Box 522', '08-92345678', '0652-789-012', 'olivia.lee@example.com', 'Barker'),
(523, 'Ethan', 'Michael', 'Davis', '798 Pinewood Dr', '1990-06-22', 'Male', '798 Pinewood Dr', 'PO Box 523', '08-93456789', '0653-890-123', 'ethan.davis@example.com', 'Boothby'),
(524, 'Emma', 'Grace', 'Graham', '799 Birch Blvd', '1991-07-24', 'Female', '799 Birch Blvd', 'PO Box 524', '08-94567890', '0654-901-234', 'emma.graham@example.com', 'Grey'),
(525, 'Liam', 'Jacob', 'Miller', '800 Cedar Ln', '1992-08-25', 'Male', '800 Cedar Ln', 'PO Box 525', '08-95678901', '0655-012-345', 'liam.miller@example.com', 'Hindmarsh'),
(526, 'Lucas', 'Henry', 'Morris', '801 Maplewood St', '1992-09-30', 'Male', '801 Maplewood St', 'PO Box 526', '08-96789012', '0656-123-456', 'lucas.morris@example.com', 'Kingston'),
(527, 'Ava', 'Emily', 'James', '802 Oakwood Dr', '1991-10-15', 'Female', '802 Oakwood Dr', 'PO Box 527', '08-97890123', '0657-234-567', 'ava.james@example.com', 'Makin'),
(528, 'Ethan', 'Jack', 'Reynolds', '803 Pinewood Ln', '1992-11-18', 'Male', '803 Pinewood Ln', 'PO Box 528', '08-98901234', '0658-345-678', 'ethan.reynolds@example.com', 'Mayo'),
(529, 'Olivia', 'Grace', 'Simmons', '804 Birch Blvd', '1990-12-22', 'Female', '804 Birch Blvd', 'PO Box 529', '08-99012345', '0659-456-789', 'olivia.simmons@example.com', 'Sturt'),
(530, 'Noah', 'Alexander', 'Peterson', '805 Cedar Ln', '1991-01-28', 'Male', '805 Cedar Ln', 'PO Box 530', '08-90123456', '0660-567-890', 'noah.peterson@example.com', 'Bass'),
(531, 'Emma', 'Sophia', 'Long', '806 Maplewood Dr', '1992-02-25', 'Female', '806 Maplewood Dr', 'PO Box 531', '08-91234567', '0661-678-901', 'emma.long@example.com', 'Braddon'),
(532, 'Liam', 'Benjamin', 'Cook', '807 Pinewood Ln', '1990-03-20', 'Male', '807 Pinewood Ln', 'PO Box 532', '08-92345678', '0662-789-012', 'liam.cook@example.com', 'Franklin'),
(533, 'Chloe', 'Isabella', 'Wood', '808 Birch Blvd', '1991-04-22', 'Female', '808 Birch Blvd', 'PO Box 533', '08-93456789', '0663-890-123', 'chloe.wood@example.com', 'Lyons'),
(534, 'Jacob', 'William', 'Martin', '809 Cedar Ln', '1992-05-23', 'Male', '809 Cedar Ln', 'PO Box 534', '08-94567890', '0664-901-234', 'jacob.martin@example.com', 'Aston'),
(535, 'Ava', 'Charlotte', 'Harris', '810 Maplewood Dr', '1990-06-24', 'Female', '810 Maplewood Dr', 'PO Box 535', '08-95678901', '0665-012-345', 'ava.harris@example.com', 'Ballarat'),
(536, 'Ethan', 'Matthew', 'Mitchell', '811 Pinewood Ln', '1991-07-25', 'Male', '811 Pinewood Ln', 'PO Box 536', '08-96789012', '0666-123-456', 'ethan.mitchell@example.com', 'Bendigo'),
(537, 'Olivia', 'Mia', 'Murphy', '812 Birch Blvd', '1992-08-26', 'Female', '812 Birch Blvd', 'PO Box 537', '08-97890123', '0667-234-567', 'olivia.murphy@example.com', 'Bruce'),
(538, 'Noah', 'James', 'Fisher', '813 Cedar Ln', '1990-09-27', 'Male', '813 Cedar Ln', 'PO Box 538', '08-98901234', '0668-345-678', 'noah.fisher@example.com', 'Calwell'),
(539, 'Emma', 'Grace', 'Johnson', '814 Maplewood Dr', '1991-10-28', 'Female', '814 Maplewood Dr', 'PO Box 539', '08-99012345', '0669-456-789', 'emma.johnson@example.com', 'Casey'),
(540, 'Liam', 'Alexander', 'Scott', '815 Pinewood Ln', '1992-11-29', 'Male', '815 Pinewood Ln', 'PO Box 540', '08-90123456', '0670-567-890', 'liam.scott@example.com', 'Chisholm'),
(541, 'Ava', 'Isabella', 'Green', '816 Birch Blvd', '1990-12-30', 'Female', '816 Birch Blvd', 'PO Box 541', '08-91234567', '0671-678-901', 'ava.green@example.com', 'Corio'),
(542, 'Ethan', 'Michael', 'Adams', '817 Cedar Ln', '1991-01-31', 'Male', '817 Cedar Ln', 'PO Box 542', '08-92345678', '0672-789-012', 'ethan.adams@example.com', 'Deakin'),
(543, 'Olivia', 'Emily', 'Baker', '818 Maplewood Dr', '1992-02-28', 'Female', '818 Maplewood Dr', 'PO Box 543', '08-93456789', '0673-890-123', 'olivia.baker@example.com', 'Dunkley'),
(544, 'Noah', 'William', 'Cole', '819 Pinewood Ln', '1990-03-31', 'Male', '819 Pinewood Ln', 'PO Box 544', '08-94567890', '0674-901-234', 'noah.cole@example.com', 'Flinders'),
(545, 'Emma', 'Sophia', 'Ward', '820 Birch Blvd', '1991-04-30', 'Female', '820 Birch Blvd', 'PO Box 545', '08-95678901', '0675-012-345', 'emma.ward@example.com', 'Gellibrand'),
(546, 'Liam', 'James', 'Morris', '821 Cedar Ln', '1992-05-31', 'Male', '821 Cedar Ln', 'PO Box 546', '08-96789012', '0676-123-456', 'liam.morris@example.com', 'Gippsland'),
(547, 'Ava', 'Olivia', 'Carter', '822 Maplewood Dr', '1990-06-30', 'Female', '822 Maplewood Dr', 'PO Box 547', '08-97890123', '0677-234-567', 'ava.carter@example.com', 'Goldstein'),
(548, 'Ethan', 'Jacob', 'Turner', '823 Pinewood Ln', '1991-07-31', 'Male', '823 Pinewood Ln', 'PO Box 548', '08-98901234', '0678-345-678', 'ethan.turner@example.com', 'Higgins'),
(549, 'Olivia', 'Grace', 'Miller', '824 Birch Blvd', '1992-08-31', 'Female', '824 Birch Blvd', 'PO Box 549', '08-99012345', '0679-456-789', 'olivia.miller@example.com', 'Holt'),
(550, 'Noah', 'Michael', 'Allen', '825 Cedar Ln', '1990-09-30', 'Male', '825 Cedar Ln', 'PO Box 550', '08-90123456', '0680-567-890', 'noah.allen@example.com', 'Hotham'),
(551, 'Liam', 'James', 'Phillips', '826 Maplewood Dr', '1991-10-05', 'Male', '826 Maplewood Dr', 'PO Box 551', '08-91234567', '0681-678-901', 'liam.phillips@example.com', 'Indi'),
(552, 'Emma', 'Sophia', 'Moore', '827 Pinewood Ln', '1992-11-15', 'Female', '827 Pinewood Ln', 'PO Box 552', '08-92345678', '0682-789-012', 'emma.moore@example.com', 'Isaacs'),
(553, 'Noah', 'Alexander', 'Morris', '828 Birch Blvd', '1990-12-20', 'Male', '828 Birch Blvd', 'PO Box 553', '08-93456789', '0683-890-123', 'noah.morris@example.com', 'Jagajaga'),
(554, 'Olivia', 'Grace', 'James', '829 Cedar Ln', '1991-01-25', 'Female', '829 Cedar Ln', 'PO Box 554', '08-94567890', '0684-901-234', 'olivia.james@example.com', 'Kooyong'),
(555, 'Ethan', 'Matthew', 'Green', '830 Maplewood Dr', '1992-02-22', 'Male', '830 Maplewood Dr', 'PO Box 555', '08-95678901', '0685-012-345', 'ethan.green@example.com', 'Lalor'),
(556, 'Chloe', 'Isabella', 'Scott', '831 Pinewood Ln', '1990-03-15', 'Female', '831 Pinewood Ln', 'PO Box 556', '08-96789012', '0686-123-456', 'chloe.scott@example.com', 'La Trobe'),
(557, 'Jacob', 'William', 'Carter', '832 Birch Blvd', '1991-04-12', 'Male', '832 Birch Blvd', 'PO Box 557', '08-97890123', '0687-234-567', 'jacob.carter@example.com', 'Mallee'),
(558, 'Ava', 'Charlotte', 'Mitchell', '833 Cedar Ln', '1992-05-10', 'Female', '833 Cedar Ln', 'PO Box 558', '08-98901234', '0688-345-678', 'ava.mitchell@example.com', 'Maribyrnong'),
(559, 'Noah', 'James', 'Adams', '834 Maplewood Dr', '1990-06-20', 'Male', '834 Maplewood Dr', 'PO Box 559', '08-99012345', '0689-456-789', 'noah.adams@example.com', 'McEwen'),
(560, 'Emma', 'Grace', 'Phillips', '835 Pinewood Ln', '1991-07-18', 'Female', '835 Pinewood Ln', 'PO Box 560', '08-90123456', '0690-567-890', 'emma.phillips@example.com', 'Melbourne'),
(561, 'Liam', 'Alexander', 'Turner', '836 Birch Blvd', '1992-08-15', 'Male', '836 Birch Blvd', 'PO Box 561', '08-91234567', '0691-678-901', 'liam.turner@example.com', 'Menzies'),
(562, 'Olivia', 'Sophia', 'Baker', '837 Cedar Ln', '1990-09-25', 'Female', '837 Cedar Ln', 'PO Box 562', '08-92345678', '0692-789-012', 'olivia.baker@example.com', 'Scullin'),
(563, 'Ethan', 'Michael', 'Adams', '838 Maplewood Dr', '1991-10-20', 'Male', '838 Maplewood Dr', 'PO Box 563', '08-93456789', '0693-890-123', 'ethan.adams@example.com', 'Wannon'),
(564, 'Chloe', 'Isabella', 'Carter', '839 Pinewood Ln', '1992-11-30', 'Female', '839 Pinewood Ln', 'PO Box 564', '08-94567890', '0694-901-234', 'chloe.carter@example.com', 'Wills'),
(565, 'Jacob', 'William', 'Morris', '840 Birch Blvd', '1990-12-15', 'Male', '840 Birch Blvd', 'PO Box 565', '08-95678901', '0695-012-345', 'jacob.morris@example.com', 'Brand'),
(566, 'Ava', 'Charlotte', 'Fisher', '841 Cedar Ln', '1991-01-20', 'Female', '841 Cedar Ln', 'PO Box 566', '08-96789012', '0696-123-456', 'ava.fisher@example.com', 'Canning'),
(567, 'Ethan', 'James', 'Carter', '842 Maplewood Dr', '1992-02-28', 'Male', '842 Maplewood Dr', 'PO Box 567', '08-97890123', '0697-234-567', 'ethan.carter@example.com', 'Cowan'),
(568, 'Chloe', 'Grace', 'Green', '843 Pinewood Ln', '1990-03-25', 'Female', '843 Pinewood Ln', 'PO Box 568', '08-98901234', '0698-345-678', 'chloe.green@example.com', 'Curtin'),
(569, 'Jacob', 'Michael', 'Johnson', '844 Birch Blvd', '1991-04-20', 'Male', '844 Birch Blvd', 'PO Box 569', '08-99012345', '0699-456-789', 'jacob.johnson@example.com', 'Forrest'),
(570, 'Ava', 'Olivia', 'Smith', '845 Cedar Ln', '1992-05-30', 'Female', '845 Cedar Ln', 'PO Box 570', '08-90123456', '0700-567-890', 'ava.smith@example.com', 'Fremantle'),
(571, 'Ethan', 'Alexander', 'Clark', '846 Maplewood Dr', '1990-06-25', 'Male', '846 Maplewood Dr', 'PO Box 571', '08-91234567', '0701-678-901', 'ethan.clark@example.com', 'Moore'),
(572, 'Chloe', 'Sophia', 'Mitchell', '847 Pinewood Ln', '1991-07-20', 'Female', '847 Pinewood Ln', 'PO Box 572', '08-92345678', '0702-789-012', 'chloe.mitchell@example.com', 'O''Connor'),
(573, 'Jacob', 'James', 'Robinson', '848 Birch Blvd', '1992-08-30', 'Male', '848 Birch Blvd', 'PO Box 573', '08-93456789', '0703-890-123', 'jacob.robinson@example.com', 'Pearce'),
(574, 'Ava', 'Charlotte', 'Nelson', '849 Cedar Ln', '1990-09-25', 'Female', '849 Cedar Ln', 'PO Box 574', '08-94567890', '0704-901-234', 'ava.nelson@example.com', 'Perth'),
(575, 'Ethan', 'Michael', 'Miller', '850 Maplewood Dr', '1991-10-10', 'Male', '850 Maplewood Dr', 'PO Box 575', '08-95678901', '0705-012-345', 'ethan.miller@example.com', 'Swan'),
(576, 'Sophie', 'Lily', 'Mitchell', '851 Maplewood Dr', '1992-11-05', 'Female', '851 Maplewood Dr', 'PO Box 576', '08-96789012', '0706-123-456', 'sophie.mitchell@example.com', 'Tangney'),
(577, 'Oliver', 'Ethan', 'King', '852 Pinewood Ln', '1991-12-12', 'Male', '852 Pinewood Ln', 'PO Box 577', '08-97890123', '0707-234-567', 'oliver.king@example.com', 'Paterson'),
(578, 'Ava', 'Mia', 'Adams', '853 Birch Blvd', '1990-01-20', 'Female', '853 Birch Blvd', 'PO Box 578', '08-98901234', '0708-345-678', 'ava.adams@example.com', 'Riverina'),
(579, 'Noah', 'James', 'Thompson', '854 Cedar Ln', '1992-02-15', 'Male', '854 Cedar Ln', 'PO Box 579', '08-99012345', '0709-456-789', 'noah.thompson@example.com', 'Watson'),
(580, 'Ella', 'Grace', 'White', '855 Maplewood Dr', '1991-03-10', 'Female', '855 Maplewood Dr', 'PO Box 580', '08-90123456', '0710-567-890', 'ella.white@example.com', 'Dickson'),
(581, 'Jack', 'Alexander', 'Harris', '856 Pinewood Ln', '1990-04-05', 'Male', '856 Pinewood Ln', 'PO Box 581', '08-91234567', '0711-678-901', 'jack.harris@example.com', 'Longman'),
(582, 'Mia', 'Emily', 'Clark', '857 Birch Blvd', '1992-05-25', 'Female', '857 Birch Blvd', 'PO Box 582', '08-92345678', '0712-789-012', 'mia.clark@example.com', 'Blair'),
(583, 'Lucas', 'John', 'Jackson', '858 Cedar Ln', '1991-06-20', 'Male', '858 Cedar Ln', 'PO Box 583', '08-93456789', '0713-890-123', 'lucas.jackson@example.com', 'Hasluck'),
(584, 'Isabella', 'Sophia', 'Evans', '859 Maplewood Dr', '1990-07-15', 'Female', '859 Maplewood Dr', 'PO Box 584', '08-94567890', '0714-901-234', 'isabella.evans@example.com', 'Lingiari'),
(585, 'Liam', 'Daniel', 'Baker', '860 Pinewood Ln', '1992-08-10', 'Male', '860 Pinewood Ln', 'PO Box 585', '08-95678901', '0715-012-345', 'liam.baker@example.com', 'Solomon'),
(586, 'Charlotte', 'Ava', 'Davis', '861 Birch Blvd', '1991-09-05', 'Female', '861 Birch Blvd', 'PO Box 586', '08-96789012', '0716-123-456', 'charlotte.davis@example.com', 'Gorton'),
(587, 'James', 'William', 'Wilson', '862 Cedar Ln', '1990-10-20', 'Male', '862 Cedar Ln', 'PO Box 587', '08-97890123', '0717-234-567', 'james.wilson@example.com', 'Bonner'),
(588, 'Amelia', 'Olivia', 'Anderson', '863 Maplewood Dr', '1992-11-15', 'Female', '863 Maplewood Dr', 'PO Box 588', '08-98901234', '0718-345-678', 'amelia.anderson@example.com', 'Flynn'),
(589, 'Benjamin', 'Ethan', 'Thomas', '864 Pinewood Ln', '1991-12-10', 'Male', '864 Pinewood Ln', 'PO Box 589', '08-99012345', '0719-456-789', 'benjamin.thomas@example.com', 'Durack'),
(590, 'Ella', 'Grace', 'Miller', '865 Birch Blvd', '1990-01-25', 'Female', '865 Birch Blvd', 'PO Box 590', '08-90123456', '0720-567-890', 'ella.miller@example.com', 'McMahon'),
(591, 'Noah', 'Liam', 'Harris', '866 Cedar Ln', '1992-02-20', 'Male', '866 Cedar Ln', 'PO Box 591', '08-91234567', '0721-678-901', 'noah.harris@example.com', 'Wright'),
(592, 'Sophie', 'Emily', 'Robinson', '867 Maplewood Dr', '1991-03-15', 'Female', '867 Maplewood Dr', 'PO Box 592', '08-92345678', '0722-789-012', 'sophie.robinson@example.com', 'Burt'),
(593, 'Jacob', 'Alexander', 'Lee', '868 Pinewood Ln', '1990-04-10', 'Male', '868 Pinewood Ln', 'PO Box 593', '08-93456789', '0723-890-123', 'jacob.lee@example.com', 'Bean'),
(594, 'Ava', 'Charlotte', 'Young', '869 Birch Blvd', '1992-05-30', 'Female', '869 Birch Blvd', 'PO Box 594', '08-94567890', '0724-901-234', 'ava.young@example.com', 'Clark'),
(595, 'Ethan', 'James', 'Walker', '870 Cedar Ln', '1991-06-25', 'Male', '870 Cedar Ln', 'PO Box 595', '08-95678901', '0725-012-345', 'ethan.walker@example.com', 'Cooper'),
(596, 'Chloe', 'Sophia', 'Hall', '871 Maplewood Dr', '1990-07-20', 'Female', '871 Maplewood Dr', 'PO Box 596', '08-96789012', '0726-123-456', 'chloe.hall@example.com', 'Fraser'),
(597, 'Lucas', 'Daniel', 'King', '872 Pinewood Ln', '1992-08-15', 'Male', '872 Pinewood Ln', 'PO Box 597', '08-97890123', '0727-234-567', 'lucas.king@example.com', 'Macnamara'),
(598, 'Olivia', 'Grace', 'Wright', '873 Birch Blvd', '1991-09-10', 'Female', '873 Birch Blvd', 'PO Box 598', '08-98901234', '0728-345-678', 'olivia.wright@example.com', 'Monash'),
(599, 'Ethan', 'Alexander', 'White', '874 Cedar Ln', '1990-10-25', 'Male', '874 Cedar Ln', 'PO Box 599', '08-99012345', '0729-456-789', 'ethan.white@example.com', 'Nicholls'),
(600, 'Chloe', 'Isabella', 'Scott', '875 Maplewood Dr', '1992-11-20', 'Female', '875 Maplewood Dr', 'PO Box 600', '08-90123456', '0730-567-890', 'chloe.scott@example.com', 'Spence');
INSERT INTO VoterRegistry (VoterID, FirstName, MiddleNames, LastName, Address, DateofBirth, Gender, ResidentialAddress, PostalAddress, ContactPhone, ContactMobile, ContactEmail, DivisionName)
VALUES
(601, 'Emily', 'Kate', 'Jones', '876 Maplewood Dr', '1991-12-05', 'Female', '876 Maplewood Dr', 'PO Box 601', '08-91234567', '0731-678-901', 'emily.jones@example.com', 'Kingsford Smith'),
(602, 'Daniel', 'Ryan', 'Moore', '877 Pinewood Ln', '1990-01-15', 'Male', '877 Pinewood Ln', 'PO Box 602', '08-92345678', '0732-789-012', 'daniel.moore@example.com', 'Lindsay'),
(603, 'Sophia', 'Ella', 'Smith', '878 Birch Blvd', '1992-02-20', 'Female', '878 Birch Blvd', 'PO Box 603', '08-93456789', '0733-890-123', 'sophia.smith@example.com', 'Lyne'),
(604, 'Matthew', 'Thomas', 'Johnson', '879 Cedar Ln', '1991-03-25', 'Male', '879 Cedar Ln', 'PO Box 604', '08-94567890', '0734-901-234', 'matthew.johnson@example.com', 'Macarthur'),
(605, 'Olivia', 'Marie', 'Williams', '880 Maplewood Dr', '1990-04-30', 'Female', '880 Maplewood Dr', 'PO Box 605', '08-95678901', '0735-012-345', 'olivia.williams@example.com', 'Mackellar'),
(606, 'Liam', 'James', 'Brown', '881 Pinewood Ln', '1992-05-15', 'Male', '881 Pinewood Ln', 'PO Box 606', '08-96789012', '0736-123-456', 'liam.brown@example.com', 'Macquarie'),
(607, 'Ava', 'Grace', 'Miller', '882 Birch Blvd', '1991-06-20', 'Female', '882 Birch Blvd', 'PO Box 607', '08-97890123', '0737-234-567', 'ava.miller@example.com', 'Mitchell'),
(608, 'James', 'William', 'Taylor', '883 Cedar Ln', '1990-07-25', 'Male', '883 Cedar Ln', 'PO Box 608', '08-98901234', '0738-345-678', 'james.taylor@example.com', 'New England'),
(609, 'Emily', 'Sophia', 'Anderson', '884 Maplewood Dr', '1992-08-30', 'Female', '884 Maplewood Dr', 'PO Box 609', '08-99012345', '0739-456-789', 'emily.anderson@example.com', 'Newcastle'),
(610, 'Michael', 'David', 'Wilson', '885 Pinewood Ln', '1991-09-10', 'Male', '885 Pinewood Ln', 'PO Box 610', '08-90123456', '0740-567-890', 'michael.wilson@example.com', 'North Sydney'),
(611, 'Ava', 'Ella', 'Harris', '886 Birch Blvd', '1990-10-15', 'Female', '886 Birch Blvd', 'PO Box 611', '08-91234567', '0741-678-901', 'ava.harris@example.com', 'Page'),
(612, 'Daniel', 'John', 'Clark', '887 Cedar Ln', '1992-11-20', 'Male', '887 Cedar Ln', 'PO Box 612', '08-92345678', '0742-789-012', 'daniel.clark@example.com', 'Parkes'),
(613, 'Sophia', 'Grace', 'Lewis', '888 Maplewood Dr', '1991-12-25', 'Female', '888 Maplewood Dr', 'PO Box 613', '08-93456789', '0743-890-123', 'sophia.lewis@example.com', 'Parramatta'),
(614, 'Michael', 'James', 'Young', '889 Pinewood Ln', '1990-01-30', 'Male', '889 Pinewood Ln', 'PO Box 614', '08-94567890', '0744-901-234', 'michael.young@example.com', 'Reid'),
(615, 'Emily', 'Claire', 'Walker', '890 Birch Blvd', '1992-02-15', 'Female', '890 Birch Blvd', 'PO Box 615', '08-95678901', '0745-012-345', 'emily.walker@example.com', 'Richmond'),
(616, 'James', 'Daniel', 'Scott', '891 Cedar Ln', '1991-03-20', 'Male', '891 Cedar Ln', 'PO Box 616', '08-96789012', '0746-123-456', 'james.scott@example.com', 'Robertson'),
(617, 'Olivia', 'Sophia', 'Brown', '892 Maplewood Dr', '1990-04-25', 'Female', '892 Maplewood Dr', 'PO Box 617', '08-97890123', '0747-234-567', 'olivia.brown@example.com', 'Shortland'),
(618, 'Daniel', 'Ethan', 'Green', '893 Pinewood Ln', '1992-05-30', 'Male', '893 Pinewood Ln', 'PO Box 618', '08-98901234', '0748-345-678', 'daniel.green@example.com', 'Sydney'),
(619, 'Emily', 'Isabella', 'Adams', '894 Birch Blvd', '1991-06-10', 'Female', '894 Birch Blvd', 'PO Box 619', '08-99012345', '0749-456-789', 'emily.adams@example.com', 'Whitlam'),
(620, 'Matthew', 'William', 'Nelson', '895 Cedar Ln', '1990-07-15', 'Male', '895 Cedar Ln', 'PO Box 620', '08-90123456', '0750-567-890', 'matthew.nelson@example.com', 'Warringah'),
(621, 'Sophie', 'Kate', 'Carter', '896 Maplewood Dr', '1992-08-20', 'Female', '896 Maplewood Dr', 'PO Box 621', '08-91234567', '0751-678-901', 'sophie.carter@example.com', 'Wentworth'),
(622, 'Ethan', 'Ryan', 'Murphy', '897 Pinewood Ln', '1991-09-25', 'Male', '897 Pinewood Ln', 'PO Box 622', '08-92345678', '0752-789-012', 'ethan.murphy@example.com', 'Werriwa'),
(623, 'Olivia', 'Grace', 'Sullivan', '898 Birch Blvd', '1990-10-30', 'Female', '898 Birch Blvd', 'PO Box 623', '08-93456789', '0753-890-123', 'olivia.sullivan@example.com', 'Bowman'),
(624, 'Jacob', 'Daniel', 'Parker', '899 Cedar Ln', '1992-11-15', 'Male', '899 Cedar Ln', 'PO Box 624', '08-94567890', '0754-901-234', 'jacob.parker@example.com', 'Brisbane'),
(625, 'Emma', 'Charlotte', 'Hughes', '900 Maplewood Dr', '1991-12-20', 'Female', '900 Maplewood Dr', 'PO Box 625', '08-95678901', '0755-012-345', 'emma.hughes@example.com', 'Capricornia'),
(626, 'Emma', 'Charlotte', 'Watson', '926 Cedar Ln', '1990-02-25', 'Female', '926 Cedar Ln', 'PO Box 650', '08-90123456', '0780-567-890', 'emma.watson@example.com', 'Brisbane'),
(627, 'Ethan', 'Michael', 'Carter', '927 Maplewood Dr', '1991-03-30', 'Male', '927 Maplewood Dr', 'PO Box 651', '08-91234567', '0781-678-901', 'ethan.carter@example.com', 'Capricornia'),
(628, 'Lucas', 'Michael', 'Mitchell', '903 Maplewood Dr', '1991-03-20', 'Male', '903 Maplewood Dr', 'PO Box 627', '08-97890123', '0757-234-567', 'lucas.mitchell@example.com', 'Kingsford Smith'),
(629, 'Ava', 'Grace', 'Walker', '904 Pinewood Ln', '1992-04-25', 'Female', '904 Pinewood Ln', 'PO Box 628', '08-98901234', '0758-345-678', 'ava.walker@example.com', 'Lindsay'),
(630, 'Ethan', 'Ryan', 'Harris', '905 Birch Blvd', '1990-05-30', 'Male', '905 Birch Blvd', 'PO Box 629', '08-99012345', '0759-456-789', 'ethan.harris@example.com', 'Lyne'),
(631, 'Olivia', 'Marie', 'Clark', '906 Cedar Ln', '1991-06-15', 'Female', '906 Cedar Ln', 'PO Box 630', '08-90123456', '0760-567-890', 'olivia.clark@example.com', 'Macarthur'),
(632, 'Noah', 'James', 'Wright', '907 Maplewood Dr', '1992-07-20', 'Male', '907 Maplewood Dr', 'PO Box 631', '08-91234567', '0761-678-901', 'noah.wright@example.com', 'Mackellar'),
(633, 'Sophia', 'Ella', 'Lewis', '908 Pinewood Ln', '1990-08-25', 'Female', '908 Pinewood Ln', 'PO Box 632', '08-92345678', '0762-789-012', 'sophia.lewis@example.com', 'Macquarie'),
(634, 'James', 'Daniel', 'Adams', '909 Birch Blvd', '1991-09-30', 'Male', '909 Birch Blvd', 'PO Box 633', '08-93456789', '0763-890-123', 'james.adams@example.com', 'Mitchell'),
(635, 'Emily', 'Kate', 'Scott', '910 Cedar Ln', '1992-10-15', 'Female', '910 Cedar Ln', 'PO Box 634', '08-94567890', '0764-901-234', 'emily.scott@example.com', 'New England'),
(636, 'Daniel', 'John', 'Baker', '911 Maplewood Dr', '1990-11-20', 'Male', '911 Maplewood Dr', 'PO Box 635', '08-95678901', '0765-012-345', 'daniel.baker@example.com', 'Newcastle'),
(637, 'Ava', 'Claire', 'Morris', '912 Pinewood Ln', '1991-12-25', 'Female', '912 Pinewood Ln', 'PO Box 636', '08-96789012', '0766-123-456', 'ava.morris@example.com', 'North Sydney'),
(638, 'Michael', 'Ethan', 'Wilson', '913 Birch Blvd', '1992-01-30', 'Male', '913 Birch Blvd', 'PO Box 637', '08-97890123', '0767-234-567', 'michael.wilson@example.com', 'Page'),
(639, 'Olivia', 'Grace', 'Roberts', '914 Cedar Ln', '1990-02-15', 'Female', '914 Cedar Ln', 'PO Box 638', '08-98901234', '0768-345-678', 'olivia.roberts@example.com', 'Parkes'),
(640, 'Ethan', 'Michael', 'Wood', '915 Maplewood Dr', '1991-03-20', 'Male', '915 Maplewood Dr', 'PO Box 639', '08-99012345', '0769-456-789', 'ethan.wood@example.com', 'Parramatta'),
(641, 'Emma', 'Charlotte', 'Cox', '916 Pinewood Ln', '1992-04-25', 'Female', '916 Pinewood Ln', 'PO Box 640', '08-90123456', '0770-567-890', 'emma.cox@example.com', 'Reid'),
(642, 'Jacob', 'William', 'King', '917 Birch Blvd', '1990-05-30', 'Male', '917 Birch Blvd', 'PO Box 641', '08-91234567', '0771-678-901', 'jacob.king@example.com', 'Richmond'),
(643, 'Sophia', 'Isabella', 'Foster', '918 Cedar Ln', '1991-06-15', 'Female', '918 Cedar Ln', 'PO Box 642', '08-92345678', '0772-789-012', 'sophia.foster@example.com', 'Robertson'),
(644, 'Liam', 'James', 'Bell', '919 Maplewood Dr', '1992-07-20', 'Male', '919 Maplewood Dr', 'PO Box 643', '08-93456789', '0773-890-123', 'liam.bell@example.com', 'Shortland'),
(645, 'Ava', 'Sophia', 'Grant', '920 Pinewood Ln', '1990-08-25', 'Female', '920 Pinewood Ln', 'PO Box 644', '08-94567890', '0774-901-234', 'ava.grant@example.com', 'Sydney'),
(646, 'Ethan', 'Ryan', 'Perry', '921 Birch Blvd', '1991-09-30', 'Male', '921 Birch Blvd', 'PO Box 645', '08-95678901', '0775-012-345', 'ethan.perry@example.com', 'Whitlam'),
(647, 'Emily', 'Grace', 'Russell', '922 Cedar Ln', '1992-10-15', 'Female', '922 Cedar Ln', 'PO Box 646', '08-96789012', '0776-123-456', 'emily.russell@example.com', 'Warringah'),
(648, 'James', 'Daniel', 'Morgan', '923 Maplewood Dr', '1990-11-20', 'Male', '923 Maplewood Dr', 'PO Box 647', '08-97890123', '0777-234-567', 'james.morgan@example.com', 'Wentworth'),
(649, 'Olivia', 'Sophia', 'Campbell', '924 Pinewood Ln', '1991-12-25', 'Female', '924 Pinewood Ln', 'PO Box 648', '08-98901234', '0778-345-678', 'olivia.campbell@example.com', 'Werriwa'),
(650, 'Noah', 'Ryan', 'Mitchell', '925 Birch Blvd', '1992-01-30', 'Male', '925 Birch Blvd', 'PO Box 649', '08-99012345', '0779-456-789', 'noah.mitchell@example.com', 'Bowman'),
(651, 'Liam', 'Alexander', 'Stewart', '930 Cedar Ln', '1992-06-15', 'Male', '930 Cedar Ln', 'PO Box 653', '08-93456789', '0783-890-123', 'liam.stewart@example.com', 'Dawson'),
(652, 'Emily', 'Jessica', 'Cole', '931 Maplewood Dr', '1990-07-20', 'Female', '931 Maplewood Dr', 'PO Box 654', '08-94567890', '0784-901-234', 'emily.cole@example.com', 'Fadden'),
(653, 'Ethan', 'Jack', 'Hughes', '932 Pinewood Ln', '1991-08-25', 'Male', '932 Pinewood Ln', 'PO Box 655', '08-95678901', '0785-012-345', 'ethan.hughes@example.com', 'Fairfax'),
(654, 'Olivia', 'Emily', 'Bailey', '933 Birch Blvd', '1992-09-30', 'Female', '933 Birch Blvd', 'PO Box 656', '08-96789012', '0786-123-456', 'olivia.bailey@example.com', 'Fisher'),
(655, 'Noah', 'Benjamin', 'Reed', '934 Cedar Ln', '1990-10-15', 'Male', '934 Cedar Ln', 'PO Box 657', '08-97890123', '0787-234-567', 'noah.reed@example.com', 'Forde'),
(656, 'Ava', 'Sophia', 'Parker', '935 Maplewood Dr', '1991-11-20', 'Female', '935 Maplewood Dr', 'PO Box 658', '08-98901234', '0788-345-678', 'ava.parker@example.com', 'Griffith'),
(657, 'James', 'Matthew', 'Fisher', '936 Pinewood Ln', '1992-12-25', 'Male', '936 Pinewood Ln', 'PO Box 659', '08-99012345', '0789-456-789', 'james.fisher@example.com', 'Groom'),
(658, 'Sophia', 'Olivia', 'Bell', '937 Birch Blvd', '1990-01-30', 'Female', '937 Birch Blvd', 'PO Box 660', '08-90123456', '0790-567-890', 'sophia.bell@example.com', 'Herbert'),
(659, 'Jacob', 'Alexander', 'Green', '938 Cedar Ln', '1991-02-25', 'Male', '938 Cedar Ln', 'PO Box 661', '08-91234567', '0791-678-901', 'jacob.green@example.com', 'Hinkler'),
(660, 'Emma', 'Charlotte', 'Morgan', '939 Maplewood Dr', '1992-03-30', 'Female', '939 Maplewood Dr', 'PO Box 662', '08-92345678', '0792-789-012', 'emma.morgan@example.com', 'Kennedy'),
(661, 'Ethan', 'Ryan', 'Cook', '940 Pinewood Ln', '1990-04-15', 'Male', '940 Pinewood Ln', 'PO Box 663', '08-93456789', '0793-890-123', 'ethan.cook@example.com', 'Leichhardt'),
(662, 'Olivia', 'Grace', 'Ward', '941 Birch Blvd', '1991-05-20', 'Female', '941 Birch Blvd', 'PO Box 664', '08-94567890', '0794-901-234', 'olivia.ward@example.com', 'Lilley'),
(663, 'Noah', 'Daniel', 'Nelson', '942 Cedar Ln', '1992-06-25', 'Male', '942 Cedar Ln', 'PO Box 665', '08-95678901', '0795-012-345', 'noah.nelson@example.com', 'Maranoa'),
(664, 'Ava', 'Mia', 'Young', '943 Maplewood Dr', '1990-07-30', 'Female', '943 Maplewood Dr', 'PO Box 666', '08-96789012', '0796-123-456', 'ava.young@example.com', 'McPherson'),
(665, 'James', 'William', 'Sullivan', '944 Pinewood Ln', '1991-08-25', 'Male', '944 Pinewood Ln', 'PO Box 667', '08-97890123', '0797-234-567', 'james.sullivan@example.com', 'Moncrieff'),
(666, 'Sophia', 'Ella', 'Turner', '945 Birch Blvd', '1992-09-30', 'Female', '945 Birch Blvd', 'PO Box 668', '08-98901234', '0798-345-678', 'sophia.turner@example.com', 'Moreton'),
(667, 'Ethan', 'Michael', 'Mitchell', '946 Cedar Ln', '1990-10-15', 'Male', '946 Cedar Ln', 'PO Box 669', '08-99012345', '0799-456-789', 'ethan.mitchell@example.com', 'Oxley'),
(668, 'Olivia', 'Charlotte', 'Phillips', '947 Maplewood Dr', '1991-11-20', 'Female', '947 Maplewood Dr', 'PO Box 670', '08-90123456', '0800-567-890', 'olivia.phillips@example.com', 'Petrie'),
(669, 'Jacob', 'Lucas', 'Harrison', '948 Pinewood Ln', '1992-12-25', 'Male', '948 Pinewood Ln', 'PO Box 671', '08-91234567', '0801-678-901', 'jacob.harrison@example.com', 'Rankin'),
(670, 'Emma', 'Grace', 'Jenkins', '949 Birch Blvd', '1990-01-30', 'Female', '949 Birch Blvd', 'PO Box 672', '08-92345678', '0802-789-012', 'emma.jenkins@example.com', 'Ryan'),
(671, 'Liam', 'Michael', 'Reynolds', '950 Cedar Ln', '1991-02-25', 'Male', '950 Cedar Ln', 'PO Box 673', '08-93456789', '0803-890-123', 'liam.reynolds@example.com', 'Wide Bay'),
(672, 'Sophia', 'Emma', 'Mitchell', '951 Maplewood Dr', '1992-03-30', 'Female', '951 Maplewood Dr', 'PO Box 674', '08-94567890', '0804-901-234', 'sophia.mitchell@example.com', 'Adelaide'),
(673, 'James', 'Alexander', 'Cox', '952 Pinewood Ln', '1990-04-15', 'Male', '952 Pinewood Ln', 'PO Box 675', '08-95678901', '0805-012-345', 'james.cox@example.com', 'Barker'),
(674, 'Olivia', 'Charlotte', 'Perry', '953 Birch Blvd', '1991-05-20', 'Female', '953 Birch Blvd', 'PO Box 676', '08-96789012', '0806-123-456', 'olivia.perry@example.com', 'Boothby'),
(675, 'Ethan', 'Jack', 'Reid', '954 Cedar Ln', '1992-06-25', 'Male', '954 Cedar Ln', 'PO Box 677', '08-97890123', '0807-234-567', 'ethan.reid@example.com', 'Grey'),
(676, 'Liam', 'William', 'Green', '957 Birch Blvd', '1991-08-10', 'Male', '957 Birch Blvd', 'PO Box 679', '08-99012345', '0809-456-789', 'liam.green@example.com', 'Hawke'),
(677, 'Ava', 'Isabella', 'Robinson', '958 Cedar Ln', '1992-09-15', 'Female', '958 Cedar Ln', 'PO Box 680', '08-90123456', '0810-567-890', 'ava.robinson@example.com', 'Corangamite'),
(678, 'Noah', 'Elijah', 'Walker', '959 Maplewood Dr', '1990-10-20', 'Male', '959 Maplewood Dr', 'PO Box 681', '08-91234567', '0811-678-901', 'noah.walker@example.com', 'Canberra'),
(679, 'Sophia', 'Mia', 'Morris', '960 Pinewood Ln', '1991-11-25', 'Female', '960 Pinewood Ln', 'PO Box 682', '08-92345678', '0812-789-012', 'sophia.morris@example.com', 'Fenner'),
(680, 'Jacob', 'Daniel', 'Jackson', '961 Birch Blvd', '1992-12-30', 'Male', '961 Birch Blvd', 'PO Box 683', '08-93456789', '0813-890-123', 'jacob.jackson@example.com', 'Banks'),
(681, 'Emma', 'Olivia', 'Harris', '962 Cedar Ln', '1990-01-05', 'Female', '962 Cedar Ln', 'PO Box 684', '08-94567890', '0814-901-234', 'emma.harris@example.com', 'Barton'),
(682, 'Ethan', 'Lucas', 'Clark', '963 Maplewood Dr', '1991-02-10', 'Male', '963 Maplewood Dr', 'PO Box 685', '08-95678901', '0815-012-345', 'ethan.clark@example.com', 'Bennelong'),
(683, 'Olivia', 'Charlotte', 'Lewis', '964 Pinewood Ln', '1992-03-15', 'Female', '964 Pinewood Ln', 'PO Box 686', '08-96789012', '0816-123-456', 'olivia.lewis@example.com', 'Berowra'),
(684, 'James', 'Henry', 'Lee', '965 Birch Blvd', '1990-04-20', 'Male', '965 Birch Blvd', 'PO Box 687', '08-97890123', '0817-234-567', 'james.lee@example.com', 'Blaxland'),
(685, 'Ava', 'Ella', 'Young', '966 Cedar Ln', '1991-05-25', 'Female', '966 Cedar Ln', 'PO Box 688', '08-98901234', '0818-345-678', 'ava.young@example.com', 'Bradfield'),
(686, 'Liam', 'Jack', 'Scott', '967 Maplewood Dr', '1992-06-30', 'Male', '967 Maplewood Dr', 'PO Box 689', '08-99012345', '0819-456-789', 'liam.scott@example.com', 'Calare'),
(687, 'Sophia', 'Grace', 'Morgan', '968 Pinewood Ln', '1990-07-05', 'Female', '968 Pinewood Ln', 'PO Box 690', '08-90123456', '0820-567-890', 'sophia.morgan@example.com', 'Chifley'),
(688, 'Jacob', 'Michael', 'Brown', '969 Birch Blvd', '1991-08-10', 'Male', '969 Birch Blvd', 'PO Box 691', '08-91234567', '0821-678-901', 'jacob.brown@example.com', 'Cook'),
(689, 'Emma', 'Sophia', 'Davis', '970 Cedar Ln', '1992-09-15', 'Female', '970 Cedar Ln', 'PO Box 692', '08-92345678', '0822-789-012', 'emma.davis@example.com', 'Cowper'),
(690, 'Liam', 'William', 'Wilson', '971 Maplewood Dr', '1990-10-20', 'Male', '971 Maplewood Dr', 'PO Box 693', '08-93456789', '0823-890-123', 'liam.wilson@example.com', 'Cunningham'),
(691, 'Ava', 'Isabella', 'Johnson', '972 Pinewood Ln', '1991-11-25', 'Female', '972 Pinewood Ln', 'PO Box 694', '08-94567890', '0824-901-234', 'ava.johnson@example.com', 'Dobell'),
(692, 'Noah', 'Elijah', 'Smith', '973 Birch Blvd', '1992-12-30', 'Male', '973 Birch Blvd', 'PO Box 695', '08-95678901', '0825-012-345', 'noah.smith@example.com', 'Eden-Monaro'),
(693, 'Sophia', 'Mia', 'Williams', '974 Cedar Ln', '1990-01-05', 'Female', '974 Cedar Ln', 'PO Box 696', '08-96789012', '0826-123-456', 'sophia.williams@example.com', 'Farrer'),
(694, 'Jacob', 'Daniel', 'Miller', '975 Maplewood Dr', '1991-02-10', 'Male', '975 Maplewood Dr', 'PO Box 697', '08-97890123', '0827-234-567', 'jacob.miller@example.com', 'Fowler'),
(695, 'Emma', 'Olivia', 'Moore', '976 Pinewood Ln', '1992-03-15', 'Female', '976 Pinewood Ln', 'PO Box 698', '08-98901234', '0828-345-678', 'emma.moore@example.com', 'Gilmore'),
(696, 'Liam', 'Jack', 'Taylor', '977 Birch Blvd', '1990-04-20', 'Male', '977 Birch Blvd', 'PO Box 699', '08-99012345', '0829-456-789', 'liam.taylor@example.com', 'Grayndler'),
(697, 'Sophia', 'Grace', 'Anderson', '978 Cedar Ln', '1991-05-25', 'Female', '978 Cedar Ln', 'PO Box 700', '08-90123456', '0830-567-890', 'sophia.anderson@example.com', 'Greenway'),
(698, 'Jacob', 'Michael', 'Thomas', '979 Maplewood Dr', '1992-06-30', 'Male', '979 Maplewood Dr', 'PO Box 701', '08-91234567', '0831-678-901', 'jacob.thomas@example.com', 'Hughes'),
(699, 'Emma', 'Isabella', 'Jackson', '980 Pinewood Ln', '1990-07-05', 'Female', '980 Pinewood Ln', 'PO Box 702', '08-92345678', '0832-789-012', 'emma.jackson@example.com', 'Hume'),
(700, 'Liam', 'Ethan', 'White', '981 Birch Blvd', '1991-08-10', 'Male', '981 Birch Blvd', 'PO Box 703', '08-93456789', '0833-890-123', 'liam.white@example.com', 'Hunter');
INSERT INTO VoterRegistry (VoterID, FirstName, MiddleNames, LastName, Address, DateofBirth, Gender, ResidentialAddress, PostalAddress, ContactPhone, ContactMobile, ContactEmail, DivisionName)
VALUES
(701, 'Liam', 'Alexander', 'Smith', '981 Oak Dr', '1990-01-12', 'Male', '981 Oak Dr', 'PO Box 704', '08-94567891', '0834-901-234', 'liam.smith@example.com', 'Hindmarsh'),
(702, 'Olivia', 'Grace', 'Johnson', '982 Maple Ln', '1991-02-20', 'Female', '982 Maple Ln', 'PO Box 705', '08-95678901', '0835-012-345', 'olivia.johnson@example.com', 'Kingston'),
(703, 'Ethan', 'William', 'Brown', '983 Birch Blvd', '1992-03-30', 'Male', '983 Birch Blvd', 'PO Box 706', '08-96789012', '0836-123-456', 'ethan.brown@example.com', 'Makin'),
(704, 'Emma', 'Sophia', 'Wilson', '984 Cedar Ln', '1990-04-25', 'Female', '984 Cedar Ln', 'PO Box 707', '08-97890123', '0837-234-567', 'emma.wilson@example.com', 'Mayo'),
(705, 'Noah', 'Jacob', 'Lee', '985 Oak Dr', '1991-05-15', 'Male', '985 Oak Dr', 'PO Box 708', '08-98901234', '0838-345-678', 'noah.lee@example.com', 'Sturt'),
(706, 'Sophia', 'Isabella', 'Taylor', '986 Maple Ln', '1992-06-10', 'Female', '986 Maple Ln', 'PO Box 709', '08-99012345', '0839-456-789', 'sophia.taylor@example.com', 'Bass'),
(707, 'Jacob', 'Michael', 'Anderson', '987 Birch Blvd', '1990-07-20', 'Male', '987 Birch Blvd', 'PO Box 710', '08-90123456', '0840-567-890', 'jacob.anderson@example.com', 'Braddon'),
(708, 'Emma', 'Charlotte', 'Moore', '988 Cedar Ln', '1991-08-30', 'Female', '988 Cedar Ln', 'PO Box 711', '08-91234567', '0841-678-901', 'emma.moore@example.com', 'Franklin'),
(709, 'Liam', 'Jack', 'Scott', '989 Oak Dr', '1992-09-25', 'Male', '989 Oak Dr', 'PO Box 712', '08-92345678', '0842-789-012', 'liam.scott@example.com', 'Lyons'),
(710, 'Olivia', 'Ava', 'Mitchell', '990 Maple Ln', '1990-10-15', 'Female', '990 Maple Ln', 'PO Box 713', '08-93456789', '0843-890-123', 'olivia.mitchell@example.com', 'Aston'),
(711, 'Ethan', 'Liam', 'Harris', '991 Birch Blvd', '1991-11-20', 'Male', '991 Birch Blvd', 'PO Box 714', '08-94567890', '0844-901-234', 'ethan.harris@example.com', 'Ballarat'),
(712, 'Sophia', 'Emma', 'Thompson', '992 Cedar Ln', '1992-12-05', 'Female', '992 Cedar Ln', 'PO Box 715', '08-95678901', '0845-012-345', 'sophia.thompson@example.com', 'Bendigo'),
(713, 'Jacob', 'Mason', 'King', '993 Oak Dr', '1990-01-25', 'Male', '993 Oak Dr', 'PO Box 716', '08-96789012', '0846-123-456', 'jacob.king@example.com', 'Bruce'),
(714, 'Emma', 'Olivia', 'Walker', '994 Maple Ln', '1991-02-15', 'Female', '994 Maple Ln', 'PO Box 717', '08-97890123', '0847-234-567', 'emma.walker@example.com', 'Calwell'),
(715, 'Liam', 'Ethan', 'Robinson', '995 Birch Blvd', '1992-03-20', 'Male', '995 Birch Blvd', 'PO Box 718', '08-98901234', '0848-345-678', 'liam.robinson@example.com', 'Casey'),
(716, 'Sophia', 'Isabella', 'Mitchell', '996 Cedar Ln', '1990-04-10', 'Female', '996 Cedar Ln', 'PO Box 719', '08-99012345', '0849-456-789', 'sophia.mitchell@example.com', 'Chisholm'),
(717, 'Jacob', 'Liam', 'Smith', '997 Oak Dr', '1991-05-30', 'Male', '997 Oak Dr', 'PO Box 720', '08-90123456', '0850-567-890', 'jacob.smith@example.com', 'Corio'),
(718, 'Emma', 'Charlotte', 'Williams', '998 Maple Ln', '1992-06-25', 'Female', '998 Maple Ln', 'PO Box 721', '08-91234567', '0851-678-901', 'emma.williams@example.com', 'Deakin'),
(719, 'Liam', 'Noah', 'Johnson', '999 Birch Blvd', '1990-07-15', 'Male', '999 Birch Blvd', 'PO Box 722', '08-92345678', '0852-789-012', 'liam.johnson@example.com', 'Dunkley'),
(720, 'Sophia', 'Ava', 'Brown', '1000 Cedar Ln', '1991-08-30', 'Female', '1000 Cedar Ln', 'PO Box 723', '08-93456789', '0853-890-123', 'sophia.brown@example.com', 'Flinders'),
(721, 'Jacob', 'Ethan', 'Taylor', '1001 Oak Dr', '1992-09-10', 'Male', '1001 Oak Dr', 'PO Box 724', '08-94567890', '0854-901-234', 'jacob.taylor@example.com', 'Gellibrand'),
(722, 'Emma', 'Mia', 'Anderson', '1002 Maple Ln', '1990-10-25', 'Female', '1002 Maple Ln', 'PO Box 725', '08-95678901', '0855-012-345', 'emma.anderson@example.com', 'Gippsland'),
(723, 'Liam', 'James', 'Wilson', '1003 Birch Blvd', '1991-11-15', 'Male', '1003 Birch Blvd', 'PO Box 726', '08-96789012', '0856-123-456', 'liam.wilson@example.com', 'Goldstein'),
(724, 'Sophia', 'Olivia', 'Scott', '1004 Cedar Ln', '1992-12-20', 'Female', '1004 Cedar Ln', 'PO Box 727', '08-97890123', '0857-234-567', 'sophia.scott@example.com', 'Higgins'),
(725, 'Jacob', 'Noah', 'White', '1005 Oak Dr', '1990-01-10', 'Male', '1005 Oak Dr', 'PO Box 728', '08-98901234', '0858-345-678', 'jacob.white@example.com', 'Holt'),
(726, 'Olivia', 'Charlotte', 'Walker', '1006 Oak Dr', '1990-02-10', 'Female', '1006 Oak Dr', 'PO Box 729', '08-99012345', '0859-456-789', 'olivia.walker@example.com', 'Hotham'),
(727, 'Liam', 'Benjamin', 'Young', '1007 Maple Ln', '1991-03-15', 'Male', '1007 Maple Ln', 'PO Box 730', '08-90123456', '0860-567-890', 'liam.young@example.com', 'Indi'),
(728, 'Sophia', 'Ava', 'Adams', '1008 Birch Blvd', '1992-04-20', 'Female', '1008 Birch Blvd', 'PO Box 731', '08-91234567', '0861-678-901', 'sophia.adams@example.com', 'Isaacs'),
(729, 'Ethan', 'James', 'Baker', '1009 Cedar Ln', '1990-05-25', 'Male', '1009 Cedar Ln', 'PO Box 732', '08-92345678', '0862-789-012', 'ethan.baker@example.com', 'Jagajaga'),
(730, 'Emma', 'Isabella', 'Brooks', '1010 Oak Dr', '1991-06-30', 'Female', '1010 Oak Dr', 'PO Box 733', '08-93456789', '0863-890-123', 'emma.brooks@example.com', 'Kooyong'),
(731, 'Jacob', 'Alexander', 'Carter', '1011 Maple Ln', '1992-07-15', 'Male', '1011 Maple Ln', 'PO Box 734', '08-94567890', '0864-901-234', 'jacob.carter@example.com', 'Lalor'),
(732, 'Olivia', 'Mia', 'Davis', '1012 Birch Blvd', '1990-08-20', 'Female', '1012 Birch Blvd', 'PO Box 735', '08-95678901', '0865-012-345', 'olivia.davis@example.com', 'La Trobe'),
(733, 'Liam', 'Lucas', 'Evans', '1013 Cedar Ln', '1991-09-10', 'Male', '1013 Cedar Ln', 'PO Box 736', '08-96789012', '0866-123-456', 'liam.evans@example.com', 'Mallee'),
(734, 'Sophia', 'Charlotte', 'Fisher', '1014 Oak Dr', '1992-10-25', 'Female', '1014 Oak Dr', 'PO Box 737', '08-97890123', '0867-234-567', 'sophia.fisher@example.com', 'Maribyrnong'),
(735, 'Ethan', 'Noah', 'Gordon', '1015 Maple Ln', '1990-11-30', 'Male', '1015 Maple Ln', 'PO Box 738', '08-98901234', '0868-345-678', 'ethan.gordon@example.com', 'McEwen'),
(736, 'Emma', 'Isabella', 'Harris', '1016 Birch Blvd', '1991-12-05', 'Female', '1016 Birch Blvd', 'PO Box 739', '08-99012345', '0869-456-789', 'emma.harris@example.com', 'Melbourne'),
(737, 'Jacob', 'William', 'Jackson', '1017 Cedar Ln', '1992-01-15', 'Male', '1017 Cedar Ln', 'PO Box 740', '08-90123456', '0870-567-890', 'jacob.jackson@example.com', 'Menzies'),
(738, 'Olivia', 'Sophia', 'King', '1018 Oak Dr', '1990-02-25', 'Female', '1018 Oak Dr', 'PO Box 741', '08-91234567', '0871-678-901', 'olivia.king@example.com', 'Scullin'),
(739, 'Liam', 'Jacob', 'Lewis', '1019 Maple Ln', '1991-03-10', 'Male', '1019 Maple Ln', 'PO Box 742', '08-92345678', '0872-789-012', 'liam.lewis@example.com', 'Wannon'),
(740, 'Sophia', 'Emma', 'Martin', '1020 Birch Blvd', '1992-04-20', 'Female', '1020 Birch Blvd', 'PO Box 743', '08-93456789', '0873-890-123', 'sophia.martin@example.com', 'Wills'),
(741, 'Ethan', 'Michael', 'Moore', '1021 Cedar Ln', '1990-05-15', 'Male', '1021 Cedar Ln', 'PO Box 744', '08-94567890', '0874-901-234', 'ethan.moore@example.com', 'Brand'),
(742, 'Emma', 'Olivia', 'Nelson', '1022 Oak Dr', '1991-06-30', 'Female', '1022 Oak Dr', 'PO Box 745', '08-95678901', '0875-012-345', 'emma.nelson@example.com', 'Canning'),
(743, 'Jacob', 'Daniel', 'O''Connor', '1023 Maple Ln', '1992-07-20', 'Male', '1023 Maple Ln', 'PO Box 746', '08-96789012', '0876-123-456', 'jacob.oconnor@example.com', 'Cowan'),
(744, 'Olivia', 'Mia', 'Parker', '1024 Birch Blvd', '1990-08-25', 'Female', '1024 Birch Blvd', 'PO Box 747', '08-97890123', '0877-234-567', 'olivia.parker@example.com', 'Curtin'),
(745, 'Liam', 'Lucas', 'Quinn', '1025 Cedar Ln', '1991-09-15', 'Male', '1025 Cedar Ln', 'PO Box 748', '08-98901234', '0878-345-678', 'liam.quinn@example.com', 'Forrest'),
(746, 'Sophia', 'Ava', 'Reed', '1026 Oak Dr', '1992-10-20', 'Female', '1026 Oak Dr', 'PO Box 749', '08-99012345', '0879-456-789', 'sophia.reed@example.com', 'Fremantle'),
(747, 'Ethan', 'James', 'Smith', '1027 Maple Ln', '1990-11-10', 'Male', '1027 Maple Ln', 'PO Box 750', '08-90123456', '0880-567-890', 'ethan.smith@example.com', 'Moore'),
(748, 'Emma', 'Isabella', 'Taylor', '1028 Birch Blvd', '1991-12-05', 'Female', '1028 Birch Blvd', 'PO Box 751', '08-91234567', '0881-678-901', 'emma.taylor@example.com', 'O''Connor'),
(749, 'Jacob', 'Liam', 'Upton', '1029 Cedar Ln', '1992-01-10', 'Male', '1029 Cedar Ln', 'PO Box 752', '08-92345678', '0882-789-012', 'jacob.upton@example.com', 'Pearce'),
(750, 'Olivia', 'Charlotte', 'Vaughan', '1030 Oak Dr', '1990-02-15', 'Female', '1030 Oak Dr', 'PO Box 753', '08-93456789', '0883-890-123', 'olivia.vaughan@example.com', 'Perth'),
(751, 'Emily', 'Grace', 'Adams', '1031 Pine St', '1991-03-10', 'Female', '1031 Pine St', 'PO Box 754', '08-94567890', '0884-901-234', 'emily.adams@example.com', 'Swan'),
(752, 'Daniel', 'Michael', 'Baker', '1032 Oak Dr', '1992-04-20', 'Male', '1032 Oak Dr', 'PO Box 755', '08-95678901', '0885-012-345', 'daniel.baker@example.com', 'Tangney'),
(753, 'Ava', 'Sophia', 'Clark', '1033 Maple Ln', '1990-05-25', 'Female', '1033 Maple Ln', 'PO Box 756', '08-96789012', '0886-123-456', 'ava.clark@example.com', 'Paterson'),
(754, 'Liam', 'Jacob', 'Davis', '1034 Cedar Ln', '1991-06-30', 'Male', '1034 Cedar Ln', 'PO Box 757', '08-97890123', '0887-234-567', 'liam.davis@example.com', 'Riverina'),
(755, 'Olivia', 'Mia', 'Evans', '1035 Birch Blvd', '1992-07-15', 'Female', '1035 Birch Blvd', 'PO Box 758', '08-98901234', '0888-345-678', 'olivia.evans@example.com', 'Watson'),
(756, 'Ethan', 'James', 'Fisher', '1036 Pine St', '1990-08-20', 'Male', '1036 Pine St', 'PO Box 759', '08-99012345', '0889-456-789', 'ethan.fisher@example.com', 'Dickson'),
(757, 'Emma', 'Isabella', 'Gordon', '1037 Oak Dr', '1991-09-25', 'Female', '1037 Oak Dr', 'PO Box 760', '08-90123456', '0890-567-890', 'emma.gordon@example.com', 'Longman'),
(758, 'Jacob', 'Liam', 'Harris', '1038 Maple Ln', '1992-10-30', 'Male', '1038 Maple Ln', 'PO Box 761', '08-91234567', '0891-678-901', 'jacob.harris@example.com', 'Blair'),
(759, 'Sophia', 'Charlotte', 'Johnson', '1039 Cedar Ln', '1990-11-15', 'Female', '1039 Cedar Ln', 'PO Box 762', '08-92345678', '0892-789-012', 'sophia.johnson@example.com', 'Hasluck'),
(760, 'Liam', 'Noah', 'King', '1040 Birch Blvd', '1991-12-10', 'Male', '1040 Birch Blvd', 'PO Box 763', '08-93456789', '0893-890-123', 'liam.king@example.com', 'Lingiari'),
(761, 'Olivia', 'Emma', 'Lee', '1041 Pine St', '1992-01-20', 'Female', '1041 Pine St', 'PO Box 764', '08-94567890', '0894-901-234', 'olivia.lee@example.com', 'Solomon'),
(762, 'Ethan', 'Lucas', 'Mitchell', '1042 Oak Dr', '1990-02-25', 'Male', '1042 Oak Dr', 'PO Box 765', '08-95678901', '0895-012-345', 'ethan.mitchell@example.com', 'Gorton'),
(763, 'Emma', 'Isabella', 'Norris', '1043 Maple Ln', '1991-03-30', 'Female', '1043 Maple Ln', 'PO Box 766', '08-96789012', '0896-123-456', 'emma.norris@example.com', 'Bonner'),
(764, 'Jacob', 'Alexander', 'O''Connor', '1044 Cedar Ln', '1992-04-20', 'Male', '1044 Cedar Ln', 'PO Box 767', '08-97890123', '0897-234-567', 'jacob.oconnor@example.com', 'Flynn'),
(765, 'Olivia', 'Charlotte', 'Parker', '1045 Birch Blvd', '1990-05-25', 'Female', '1045 Birch Blvd', 'PO Box 768', '08-98901234', '0898-345-678', 'olivia.parker@example.com', 'Durack'),
(766, 'Ethan', 'James', 'Quinn', '1046 Pine St', '1991-06-30', 'Male', '1046 Pine St', 'PO Box 769', '08-99012345', '0899-456-789', 'ethan.quinn@example.com', 'McMahon'),
(767, 'Emma', 'Mia', 'Reed', '1047 Oak Dr', '1992-07-20', 'Female', '1047 Oak Dr', 'PO Box 770', '08-90123456', '0900-567-890', 'emma.reed@example.com', 'Wright'),
(768, 'Jacob', 'William', 'Smith', '1048 Maple Ln', '1990-08-15', 'Male', '1048 Maple Ln', 'PO Box 771', '08-91234567', '0901-678-901', 'jacob.smith@example.com', 'Burt'),
(769, 'Olivia', 'Ava', 'Taylor', '1049 Cedar Ln', '1991-09-25', 'Female', '1049 Cedar Ln', 'PO Box 772', '08-92345678', '0902-789-012', 'olivia.taylor@example.com', 'Bean'),
(770, 'Ethan', 'Daniel', 'Upton', '1050 Birch Blvd', '1992-10-10', 'Male', '1050 Birch Blvd', 'PO Box 773', '08-93456789', '0903-890-123', 'ethan.upton@example.com', 'Clark'),
(771, 'Emma', 'Sophia', 'Vaughan', '1051 Pine St', '1990-11-30', 'Female', '1051 Pine St', 'PO Box 774', '08-94567890', '0904-901-234', 'emma.vaughan@example.com', 'Cooper'),
(772, 'Jacob', 'Liam', 'Wells', '1052 Oak Dr', '1991-12-15', 'Male', '1052 Oak Dr', 'PO Box 775', '08-95678901', '0905-012-345', 'jacob.wells@example.com', 'Fraser'),
(773, 'Olivia', 'Charlotte', 'Xavier', '1053 Maple Ln', '1992-01-10', 'Female', '1053 Maple Ln', 'PO Box 776', '08-96789012', '0906-123-456', 'olivia.xavier@example.com', 'Macnamara'),
(774, 'Ethan', 'Michael', 'Young', '1054 Cedar Ln', '1990-02-25', 'Male', '1054 Cedar Ln', 'PO Box 777', '08-97890123', '0907-234-567', 'ethan.young@example.com', 'Monash'),
(775, 'Emma', 'Isabella', 'Zhang', '1055 Birch Blvd', '1991-03-30', 'Female', '1055 Birch Blvd', 'PO Box 778', '08-98901234', '0908-345-678', 'emma.zhang@example.com', 'Nicholls'),
(776, 'Jacob', 'Alexander', 'Adams', '1056 Pine St', '1992-04-25', 'Male', '1056 Pine St', 'PO Box 779', '08-99012345', '0909-456-789', 'jacob.adams@example.com', 'Spence'),
(777, 'Aiden', 'Benjamin', 'Baker', '1049 Oak Dr', '1989-12-12', 'Male', '1049 Oak Dr', 'PO Box 780', '08-90123456', '0910-567-890', 'aiden.baker@example.com', 'Hawke'),
(778, 'Zoe', 'Mia', 'Clark', '1050 Maple Ln', '1990-01-23', 'Female', '1050 Maple Ln', 'PO Box 781', '08-91234567', '0911-678-901', 'zoe.clark@example.com', 'Corangamite'),
(779, 'Lucas', 'Oliver', 'Davis', '1051 Cedar Ln', '1991-02-15', 'Male', '1051 Cedar Ln', 'PO Box 782', '08-92345678', '0912-789-012', 'lucas.davis@example.com', 'Canberra'),
(780, 'Isabella', 'Emily', 'Evans', '1052 Birch Blvd', '1992-03-20', 'Female', '1052 Birch Blvd', 'PO Box 783', '08-93456789', '0913-890-123', 'isabella.evans@example.com', 'Fenner'),
(781, 'Mason', 'James', 'Fisher', '1053 Pine St', '1990-04-25', 'Male', '1053 Pine St', 'PO Box 784', '08-94567890', '0914-901-234', 'mason.fisher@example.com', 'Banks'),
(782, 'Sophia', 'Grace', 'Green', '1054 Oak Dr', '1991-05-30', 'Female', '1054 Oak Dr', 'PO Box 785', '08-95678901', '0915-012-345', 'sophia.green@example.com', 'Barton'),
(783, 'Jackson', 'Liam', 'Harris', '1055 Maple Ln', '1992-06-15', 'Male', '1055 Maple Ln', 'PO Box 786', '08-96789012', '0916-123-456', 'jackson.harris@example.com', 'Bennelong'),
(784, 'Emma', 'Lily', 'Johnson', '1056 Cedar Ln', '1990-07-20', 'Female', '1056 Cedar Ln', 'PO Box 787', '08-97890123', '0917-234-567', 'emma.johnson@example.com', 'Berowra'),
(785, 'Logan', 'Aiden', 'King', '1057 Birch Blvd', '1991-08-25', 'Male', '1057 Birch Blvd', 'PO Box 788', '08-98901234', '0918-345-678', 'logan.king@example.com', 'Blaxland'),
(786, 'Ava', 'Chloe', 'Lee', '1058 Pine St', '1992-09-15', 'Female', '1058 Pine St', 'PO Box 789', '08-99012345', '0919-456-789', 'ava.lee@example.com', 'Bradfield'),
(787, 'Ethan', 'Daniel', 'Miller', '1059 Oak Dr', '1990-10-20', 'Male', '1059 Oak Dr', 'PO Box 790', '08-90123456', '0920-567-890', 'ethan.miller@example.com', 'Calare'),
(788, 'Olivia', 'Grace', 'Moore', '1060 Maple Ln', '1991-11-25', 'Female', '1060 Maple Ln', 'PO Box 791', '08-91234567', '0921-678-901', 'olivia.moore@example.com', 'Chifley'),
(789, 'Noah', 'Henry', 'Nolan', '1061 Cedar Ln', '1992-12-30', 'Male', '1061 Cedar Ln', 'PO Box 792', '08-92345678', '0922-789-012', 'noah.nolan@example.com', 'Cook'),
(790, 'Mia', 'Ella', 'Parker', '1062 Birch Blvd', '1990-01-15', 'Female', '1062 Birch Blvd', 'PO Box 793', '08-93456789', '0923-890-123', 'mia.parker@example.com', 'Cowper'),
(791, 'Lucas', 'Ryan', 'Quinn', '1063 Pine St', '1991-02-20', 'Male', '1063 Pine St', 'PO Box 794', '08-94567890', '0924-901-234', 'lucas.quinn@example.com', 'Cunningham'),
(792, 'Emily', 'Sophia', 'Roberts', '1064 Oak Dr', '1992-03-25', 'Female', '1064 Oak Dr', 'PO Box 795', '08-95678901', '0925-012-345', 'emily.roberts@example.com', 'Dobell'),
(793, 'James', 'John', 'Stewart', '1065 Maple Ln', '1990-04-30', 'Male', '1065 Maple Ln', 'PO Box 796', '08-96789012', '0926-123-456', 'james.stewart@example.com', 'Eden-Monaro'),
(794, 'Ava', 'Mia', 'Taylor', '1066 Cedar Ln', '1991-05-30', 'Female', '1066 Cedar Ln', 'PO Box 797', '08-97890123', '0927-234-567', 'ava.taylor@example.com', 'Farrer'),
(795, 'Liam', 'Ethan', 'Turner', '1067 Birch Blvd', '1992-06-15', 'Male', '1067 Birch Blvd', 'PO Box 798', '08-98901234', '0928-345-678', 'liam.turner@example.com', 'Fowler'),
(796, 'Sophia', 'Chloe', 'Ward', '1068 Pine St', '1990-07-20', 'Female', '1068 Pine St', 'PO Box 799', '08-99012345', '0929-456-789', 'sophia.ward@example.com', 'Gilmore'),
(797, 'Noah', 'Jacob', 'Young', '1069 Oak Dr', '1991-08-25', 'Male', '1069 Oak Dr', 'PO Box 800', '09-01234567', '0930-567-890', 'noah.young@example.com', 'Grayndler'),
(798, 'Olivia', 'Ella', 'Zhang', '1070 Maple Ln', '1992-09-30', 'Female', '1070 Maple Ln', 'PO Box 801', '09-02345678', '0931-678-901', 'olivia.zhang@example.com', 'Greenway'),
(799, 'Ethan', 'Mason', 'Baker', '1071 Cedar Ln', '1990-10-25', 'Male', '1071 Cedar Ln', 'PO Box 802', '09-03456789', '0932-789-012', 'ethan.baker@example.com', 'Hughes'),
(800, 'Emma', 'Isabella', 'Bell', '1072 Birch Blvd', '1991-11-20', 'Female', '1072 Birch Blvd', 'PO Box 803', '09-04567890', '0933-890-123', 'emma.bell@example.com', 'Hume');
INSERT INTO VoterRegistry (VoterID, FirstName, MiddleNames, LastName, Address, DateofBirth, Gender, ResidentialAddress, PostalAddress, ContactPhone, ContactMobile, ContactEmail, DivisionName)
VALUES
(801, 'Ethan', 'Michael', 'Anderson', '1073 Oak Dr', '1989-12-15', 'Male', '1073 Oak Dr', 'PO Box 804', '09-05678901', '0934-901-234', 'ethan.anderson@example.com', 'Hunter'),
(802, 'Sophie', 'Olivia', 'Brooks', '1074 Maple Ln', '1990-01-10', 'Female', '1074 Maple Ln', 'PO Box 805', '09-06789012', '0935-012-345', 'sophie.brooks@example.com', 'Kingsford Smith'),
(803, 'Jackson', 'Liam', 'Clark', '1075 Cedar Ln', '1991-02-25', 'Male', '1075 Cedar Ln', 'PO Box 806', '09-07890123', '0936-123-456', 'jackson.clark@example.com', 'Lindsay'),
(804, 'Ava', 'Chloe', 'Davis', '1076 Birch Blvd', '1992-03-30', 'Female', '1076 Birch Blvd', 'PO Box 807', '09-08901234', '0937-234-567', 'ava.davis@example.com', 'Lyne'),
(805, 'Liam', 'Noah', 'Evans', '1077 Pine St', '1989-04-15', 'Male', '1077 Pine St', 'PO Box 808', '09-09012345', '0938-345-678', 'liam.evans@example.com', 'Macarthur'),
(806, 'Emma', 'Isabella', 'Fisher', '1078 Oak Dr', '1990-05-20', 'Female', '1078 Oak Dr', 'PO Box 809', '09-10123456', '0939-456-789', 'emma.fisher@example.com', 'Mackellar'),
(807, 'Noah', 'Ethan', 'Graham', '1079 Maple Ln', '1991-06-25', 'Male', '1079 Maple Ln', 'PO Box 810', '09-11234567', '0940-567-890', 'noah.graham@example.com', 'Macquarie'),
(808, 'Olivia', 'Sophia', 'Harris', '1080 Cedar Ln', '1992-07-30', 'Female', '1080 Cedar Ln', 'PO Box 811', '09-12345678', '0941-678-901', 'olivia.harris@example.com', 'Mitchell'),
(809, 'Ethan', 'James', 'Jones', '1081 Birch Blvd', '1989-08-15', 'Male', '1081 Birch Blvd', 'PO Box 812', '09-13456789', '0942-789-012', 'ethan.jones@example.com', 'New England'),
(810, 'Sophia', 'Emma', 'Kelly', '1082 Pine St', '1990-09-20', 'Female', '1082 Pine St', 'PO Box 813', '09-14567890', '0943-890-123', 'sophia.kelly@example.com', 'Newcastle'),
(811, 'Lucas', 'Mason', 'Lee', '1083 Oak Dr', '1991-10-25', 'Male', '1083 Oak Dr', 'PO Box 814', '09-15678901', '0944-901-234', 'lucas.lee@example.com', 'North Sydney'),
(812, 'Ava', 'Grace', 'Miller', '1084 Maple Ln', '1992-11-30', 'Female', '1084 Maple Ln', 'PO Box 815', '09-16789012', '0945-012-345', 'ava.miller@example.com', 'Page'),
(813, 'Ethan', 'Noah', 'Mitchell', '1085 Cedar Ln', '1989-12-05', 'Male', '1085 Cedar Ln', 'PO Box 816', '09-17890123', '0946-123-456', 'ethan.mitchell@example.com', 'Parkes'),
(814, 'Sophie', 'Emily', 'Turner', '1086 Birch Blvd', '1990-01-10', 'Female', '1086 Birch Blvd', 'PO Box 817', '09-18901234', '0947-234-567', 'sophie.turner@example.com', 'Parramatta'),
(815, 'Jackson', 'Liam', 'Walker', '1087 Pine St', '1991-02-15', 'Male', '1087 Pine St', 'PO Box 818', '09-19012345', '0948-345-678', 'jackson.walker@example.com', 'Reid'),
(816, 'Emma', 'Isabella', 'White', '1088 Oak Dr', '1992-03-20', 'Female', '1088 Oak Dr', 'PO Box 819', '09-20123456', '0949-456-789', 'emma.white@example.com', 'Richmond'),
(817, 'Liam', 'Ethan', 'Young', '1089 Maple Ln', '1989-04-25', 'Male', '1089 Maple Ln', 'PO Box 820', '09-21234567', '0950-567-890', 'liam.young@example.com', 'Robertson'),
(818, 'Ava', 'Chloe', 'Adams', '1090 Cedar Ln', '1990-05-30', 'Female', '1090 Cedar Ln', 'PO Box 821', '09-22345678', '0951-678-901', 'ava.adams@example.com', 'Shortland'),
(819, 'Ethan', 'James', 'Baker', '1091 Birch Blvd', '1991-06-15', 'Male', '1091 Birch Blvd', 'PO Box 822', '09-23456789', '0952-789-012', 'ethan.baker@example.com', 'Sydney'),
(820, 'Sophie', 'Olivia', 'Clark', '1092 Pine St', '1992-07-20', 'Female', '1092 Pine St', 'PO Box 823', '09-24567890', '0953-890-123', 'sophie.clark@example.com', 'Whitlam'),
(821, 'Jackson', 'Liam', 'Davis', '1093 Oak Dr', '1989-08-25', 'Male', '1093 Oak Dr', 'PO Box 824', '09-25678901', '0954-901-234', 'jackson.davis@example.com', 'Warringah'),
(822, 'Emma', 'Isabella', 'Evans', '1094 Maple Ln', '1990-09-30', 'Female', '1094 Maple Ln', 'PO Box 825', '09-26789012', '0955-012-345', 'emma.evans@example.com', 'Wentworth'),
(823, 'Liam', 'Ethan', 'Fisher', '1095 Cedar Ln', '1991-10-05', 'Male', '1095 Cedar Ln', 'PO Box 826', '09-27890123', '0956-123-456', 'liam.fisher@example.com', 'Werriwa'),
(824, 'Olivia', 'Chloe', 'Grant', '1096 Birch Blvd', '1992-11-10', 'Female', '1096 Birch Blvd', 'PO Box 827', '09-28901234', '0957-234-567', 'olivia.grant@example.com', 'Bowman'),
(825, 'Ethan', 'James', 'Harris', '1097 Pine St', '1989-12-15', 'Male', '1097 Pine St', 'PO Box 828', '09-29012345', '0958-345-678', 'ethan.harris@example.com', 'Brisbane'),
(826, 'Ethan', 'James', 'Harris', '1099 Oak Dr', '1990-02-15', 'Male', '1099 Oak Dr', 'PO Box 830', '09-31234567', '0960-567-890', 'ethan.harris@example.com', 'Capricornia'),
(827, 'Sophie', 'Grace', 'Jones', '1100 Maple Ln', '1991-03-20', 'Female', '1100 Maple Ln', 'PO Box 831', '09-32345678', '0961-678-901', 'sophie.jones@example.com', 'Dawson'),
(828, 'Jackson', 'Liam', 'Khan', '1101 Cedar Ln', '1992-04-25', 'Male', '1101 Cedar Ln', 'PO Box 832', '09-33456789', '0962-789-012', 'jackson.khan@example.com', 'Fadden'),
(829, 'Emma', 'Olivia', 'Lee', '1102 Birch Blvd', '1989-05-30', 'Female', '1102 Birch Blvd', 'PO Box 833', '09-34567890', '0963-890-123', 'emma.lee@example.com', 'Fairfax'),
(830, 'Liam', 'Ethan', 'Morris', '1103 Pine St', '1990-06-15', 'Male', '1103 Pine St', 'PO Box 834', '09-35678901', '0964-901-234', 'liam.morris@example.com', 'Fisher'),
(831, 'Ava', 'Chloe', 'Nolan', '1104 Oak Dr', '1991-07-20', 'Female', '1104 Oak Dr', 'PO Box 835', '09-36789012', '0965-012-345', 'ava.nolan@example.com', 'Forde'),
(832, 'Ethan', 'Noah', 'O''Connor', '1105 Maple Ln', '1992-08-25', 'Male', '1105 Maple Ln', 'PO Box 836', '09-37890123', '0966-123-456', 'ethan.oconnor@example.com', 'Griffith'),
(833, 'Sophie', 'Grace', 'Parker', '1106 Cedar Ln', '1989-09-30', 'Female', '1106 Cedar Ln', 'PO Box 837', '09-38901234', '0967-234-567', 'sophie.parker@example.com', 'Groom'),
(834, 'Jackson', 'Liam', 'Quinn', '1107 Birch Blvd', '1990-10-15', 'Male', '1107 Birch Blvd', 'PO Box 838', '09-39012345', '0968-345-678', 'jackson.quinn@example.com', 'Herbert'),
(835, 'Emma', 'Isabella', 'Roberts', '1108 Pine St', '1991-11-20', 'Female', '1108 Pine St', 'PO Box 839', '09-40123456', '0969-456-789', 'emma.roberts@example.com', 'Hinkler'),
(836, 'Liam', 'Ethan', 'Smith', '1109 Oak Dr', '1992-12-25', 'Male', '1109 Oak Dr', 'PO Box 840', '09-41234567', '0970-567-890', 'liam.smith@example.com', 'Kennedy'),
(837, 'Ava', 'Chloe', 'Taylor', '1110 Maple Ln', '1989-01-10', 'Female', '1110 Maple Ln', 'PO Box 841', '09-42345678', '0971-678-901', 'ava.taylor@example.com', 'Leichhardt'),
(838, 'Ethan', 'James', 'Usher', '1111 Cedar Ln', '1990-02-15', 'Male', '1111 Cedar Ln', 'PO Box 842', '09-43456789', '0972-789-012', 'ethan.usher@example.com', 'Lilley'),
(839, 'Sophie', 'Grace', 'Vaughn', '1112 Birch Blvd', '1991-03-20', 'Female', '1112 Birch Blvd', 'PO Box 843', '09-44567890', '0973-890-123', 'sophie.vaughn@example.com', 'Maranoa'),
(840, 'Jackson', 'Liam', 'Walker', '1113 Pine St', '1992-04-25', 'Male', '1113 Pine St', 'PO Box 844', '09-45678901', '0974-901-234', 'jackson.walker@example.com', 'McPherson'),
(841, 'Emma', 'Isabella', 'Xavier', '1114 Oak Dr', '1989-05-30', 'Female', '1114 Oak Dr', 'PO Box 845', '09-46789012', '0975-012-345', 'emma.xavier@example.com', 'Moncrieff'),
(842, 'Liam', 'Ethan', 'Young', '1115 Maple Ln', '1990-06-15', 'Male', '1115 Maple Ln', 'PO Box 846', '09-47890123', '0976-123-456', 'liam.young@example.com', 'Moreton'),
(843, 'Ava', 'Chloe', 'Zimmerman', '1116 Cedar Ln', '1991-07-20', 'Female', '1116 Cedar Ln', 'PO Box 847', '09-48901234', '0977-234-567', 'ava.zimmerman@example.com', 'Oxley'),
(844, 'Ethan', 'James', 'Alvarez', '1117 Birch Blvd', '1992-08-25', 'Male', '1117 Birch Blvd', 'PO Box 848', '09-49012345', '0978-345-678', 'ethan.alvarez@example.com', 'Petrie'),
(845, 'Sophie', 'Grace', 'Bennett', '1118 Pine St', '1989-09-30', 'Female', '1118 Pine St', 'PO Box 849', '09-50123456', '0979-456-789', 'sophie.bennett@example.com', 'Rankin'),
(846, 'Jackson', 'Liam', 'Cruz', '1119 Oak Dr', '1990-10-15', 'Male', '1119 Oak Dr', 'PO Box 850', '09-51234567', '0980-567-890', 'jackson.cruz@example.com', 'Ryan'),
(847, 'Emma', 'Isabella', 'Diaz', '1120 Maple Ln', '1991-11-20', 'Female', '1120 Maple Ln', 'PO Box 851', '09-52345678', '0981-678-901', 'emma.diaz@example.com', 'Wide Bay'),
(848, 'Liam', 'Ethan', 'Ellis', '1121 Cedar Ln', '1992-12-25', 'Male', '1121 Cedar Ln', 'PO Box 852', '09-53456789', '0982-789-012', 'liam.ellis@example.com', 'Adelaide'),
(849, 'Ava', 'Chloe', 'Foster', '1122 Birch Blvd', '1989-01-10', 'Female', '1122 Birch Blvd', 'PO Box 853', '09-54567890', '0983-890-123', 'ava.foster@example.com', 'Barker'),
(850, 'Ethan', 'James', 'Gibson', '1123 Pine St', '1990-02-15', 'Male', '1123 Pine St', 'PO Box 854', '09-55678901', '0984-901-234', 'ethan.gibson@example.com', 'Boothby'),
(851, 'Ava', 'Chloe', 'Grey', '1125 Maple Ln', '1992-04-10', 'Female', '1125 Maple Ln', 'PO Box 856', '09-57890123', '0986-123-456', 'ava.grey@example.com', 'Grey'),
(852, 'Ethan', 'James', 'Hindmarsh', '1126 Cedar Ln', '1989-05-15', 'Male', '1126 Cedar Ln', 'PO Box 857', '09-58901234', '0987-234-567', 'ethan.hindmarsh@example.com', 'Hindmarsh'),
(853, 'Sophie', 'Grace', 'Kingston', '1127 Birch Blvd', '1990-06-20', 'Female', '1127 Birch Blvd', 'PO Box 858', '09-59012345', '0988-345-678', 'sophie.kingston@example.com', 'Kingston'),
(854, 'Jackson', 'Liam', 'Makin', '1128 Pine St', '1991-07-25', 'Male', '1128 Pine St', 'PO Box 859', '09-60123456', '0989-456-789', 'jackson.makin@example.com', 'Makin'),
(855, 'Emma', 'Isabella', 'Mayo', '1129 Oak Dr', '1992-08-30', 'Female', '1129 Oak Dr', 'PO Box 860', '09-61234567', '0990-567-890', 'emma.mayo@example.com', 'Mayo'),
(856, 'Liam', 'Ethan', 'Sturt', '1130 Maple Ln', '1989-09-15', 'Male', '1130 Maple Ln', 'PO Box 861', '09-62345678', '0991-678-901', 'liam.sturt@example.com', 'Sturt'),
(857, 'Ava', 'Chloe', 'Bass', '1131 Cedar Ln', '1990-10-20', 'Female', '1131 Cedar Ln', 'PO Box 862', '09-63456789', '0992-789-012', 'ava.bass@example.com', 'Bass'),
(858, 'Ethan', 'James', 'Braddon', '1132 Birch Blvd', '1991-11-25', 'Male', '1132 Birch Blvd', 'PO Box 863', '09-64567890', '0993-890-123', 'ethan.braddon@example.com', 'Braddon'),
(859, 'Sophie', 'Grace', 'Franklin', '1133 Pine St', '1992-12-30', 'Female', '1133 Pine St', 'PO Box 864', '09-65678901', '0994-901-234', 'sophie.franklin@example.com', 'Franklin'),
(860, 'Jackson', 'Liam', 'Lyons', '1134 Oak Dr', '1989-01-15', 'Male', '1134 Oak Dr', 'PO Box 865', '09-66789012', '0995-012-345', 'jackson.lyons@example.com', 'Lyons'),
(861, 'Emma', 'Isabella', 'Aston', '1135 Maple Ln', '1990-02-20', 'Female', '1135 Maple Ln', 'PO Box 866', '09-67890123', '0996-123-456', 'emma.aston@example.com', 'Aston'),
(862, 'Liam', 'Ethan', 'Ballarat', '1136 Cedar Ln', '1991-03-25', 'Male', '1136 Cedar Ln', 'PO Box 867', '09-68901234', '0997-234-567', 'liam.ballarat@example.com', 'Ballarat'),
(863, 'Ava', 'Chloe', 'Bendigo', '1137 Birch Blvd', '1992-04-30', 'Female', '1137 Birch Blvd', 'PO Box 868', '09-69012345', '0998-345-678', 'ava.bendigo@example.com', 'Bendigo'),
(864, 'Ethan', 'James', 'Bruce', '1138 Pine St', '1989-05-15', 'Male', '1138 Pine St', 'PO Box 869', '09-70123456', '0999-456-789', 'ethan.bruce@example.com', 'Bruce'),
(865, 'Sophie', 'Grace', 'Calwell', '1139 Oak Dr', '1990-06-20', 'Female', '1139 Oak Dr', 'PO Box 870', '09-71234567', '1000-567-890', 'sophie.calwell@example.com', 'Calwell'),
(866, 'Jackson', 'Liam', 'Casey', '1140 Maple Ln', '1991-07-25', 'Male', '1140 Maple Ln', 'PO Box 871', '09-72345678', '1001-678-901', 'jackson.casey@example.com', 'Casey'),
(867, 'Emma', 'Isabella', 'Chisholm', '1141 Cedar Ln', '1992-08-30', 'Female', '1141 Cedar Ln', 'PO Box 872', '09-73456789', '1002-789-012', 'emma.chisholm@example.com', 'Chisholm'),
(868, 'Liam', 'Ethan', 'Corio', '1142 Birch Blvd', '1989-09-15', 'Male', '1142 Birch Blvd', 'PO Box 873', '09-74567890', '1003-890-123', 'liam.corio@example.com', 'Corio'),
(869, 'Ava', 'Chloe', 'Deakin', '1143 Pine St', '1990-10-20', 'Female', '1143 Pine St', 'PO Box 874', '09-75678901', '1004-901-234', 'ava.deakin@example.com', 'Deakin'),
(870, 'Ethan', 'James', 'Dunkley', '1144 Oak Dr', '1991-11-25', 'Male', '1144 Oak Dr', 'PO Box 875', '09-76789012', '1005-012-345', 'ethan.dunkley@example.com', 'Dunkley'),
(871, 'Sophie', 'Grace', 'Flinders', '1145 Maple Ln', '1992-12-30', 'Female', '1145 Maple Ln', 'PO Box 876', '09-77890123', '1006-123-456', 'sophie.flinders@example.com', 'Flinders'),
(872, 'Jackson', 'Liam', 'Gellibrand', '1146 Cedar Ln', '1989-01-15', 'Male', '1146 Cedar Ln', 'PO Box 877', '09-78901234', '1007-234-567', 'jackson.gellibrand@example.com', 'Gellibrand'),
(873, 'Emma', 'Isabella', 'Gippsland', '1147 Birch Blvd', '1990-02-20', 'Female', '1147 Birch Blvd', 'PO Box 878', '09-79012345', '1008-345-678', 'emma.gippsland@example.com', 'Gippsland'),
(874, 'Liam', 'Ethan', 'Goldstein', '1148 Pine St', '1991-03-25', 'Male', '1148 Pine St', 'PO Box 879', '09-80123456', '1009-456-789', 'liam.goldstein@example.com', 'Goldstein'),
(875, 'Ava', 'Chloe', 'Higgins', '1149 Oak Dr', '1992-04-30', 'Female', '1149 Oak Dr', 'PO Box 880', '09-81234567', '1010-567-890', 'ava.higgins@example.com', 'Higgins'),
(876, 'Olivia', 'Sophia', 'Holt', '1150 Maple Ln', '1988-05-05', 'Female', '1150 Maple Ln', 'PO Box 881', '09-82345678', '1011-678-901', 'olivia.holt@example.com', 'Holt'),
(877, 'Noah', 'Liam', 'Hotham', '1151 Cedar Ln', '1989-06-10', 'Male', '1151 Cedar Ln', 'PO Box 882', '09-83456789', '1012-789-012', 'noah.hotham@example.com', 'Hotham'),
(878, 'Emma', 'Isabella', 'Indi', '1152 Birch Blvd', '1990-07-15', 'Female', '1152 Birch Blvd', 'PO Box 883', '09-84567890', '1013-890-123', 'emma.indi@example.com', 'Indi'),
(879, 'Liam', 'Ethan', 'Isaacs', '1153 Pine St', '1991-08-20', 'Male', '1153 Pine St', 'PO Box 884', '09-85678901', '1014-901-234', 'liam.isaacs@example.com', 'Isaacs'),
(880, 'Ava', 'Chloe', 'Jagajaga', '1154 Oak Dr', '1992-09-25', 'Female', '1154 Oak Dr', 'PO Box 885', '09-86789012', '1015-012-345', 'ava.jagajaga@example.com', 'Jagajaga'),
(881, 'Ethan', 'James', 'Kooyong', '1155 Maple Ln', '1988-10-30', 'Male', '1155 Maple Ln', 'PO Box 886', '09-87890123', '1016-123-456', 'ethan.kooyong@example.com', 'Kooyong'),
(882, 'Sophie', 'Grace', 'Lalor', '1156 Cedar Ln', '1989-11-05', 'Female', '1156 Cedar Ln', 'PO Box 887', '09-88901234', '1017-234-567', 'sophie.lalor@example.com', 'Lalor'),
(883, 'Jackson', 'Liam', 'La Trobe', '1157 Birch Blvd', '1990-12-10', 'Male', '1157 Birch Blvd', 'PO Box 888', '09-89012345', '1018-345-678', 'jackson.latrobe@example.com', 'La Trobe'),
(884, 'Emma', 'Isabella', 'Mallee', '1158 Pine St', '1991-01-15', 'Female', '1158 Pine St', 'PO Box 889', '09-90123456', '1019-456-789', 'emma.mallee@example.com', 'Mallee'),
(885, 'Liam', 'Ethan', 'Maribyrnong', '1159 Oak Dr', '1992-02-20', 'Male', '1159 Oak Dr', 'PO Box 890', '1020-567-890', '1020-567-890', 'liam.maribyrnong@example.com', 'Maribyrnong'),
(886, 'Ava', 'Chloe', 'McEwen', '1160 Maple Ln', '1988-03-25', 'Female', '1160 Maple Ln', 'PO Box 891', '1021-678-901', '1021-678-901', 'ava.mcewen@example.com', 'McEwen'),
(887, 'Noah', 'Liam', 'Melbourne', '1161 Cedar Ln', '1989-04-30', 'Male', '1161 Cedar Ln', 'PO Box 892', '1022-789-012', '1022-789-012', 'noah.melbourne@example.com', 'Melbourne'),
(888, 'Emma', 'Isabella', 'Menzies', '1162 Birch Blvd', '1990-05-15', 'Female', '1162 Birch Blvd', 'PO Box 893', '1023-890-123', '1023-890-123', 'emma.menzies@example.com', 'Menzies'),
(889, 'Liam', 'Ethan', 'Scullin', '1163 Pine St', '1991-06-20', 'Male', '1163 Pine St', 'PO Box 894', '1024-901-234', '1024-901-234', 'liam.scullin@example.com', 'Scullin'),
(890, 'Ava', 'Chloe', 'Wannon', '1164 Oak Dr', '1992-07-25', 'Female', '1164 Oak Dr', 'PO Box 895', '1025-012-345', '1025-012-345', 'ava.wannon@example.com', 'Wannon'),
(891, 'Ethan', 'James', 'Wills', '1165 Maple Ln', '1988-08-30', 'Male', '1165 Maple Ln', 'PO Box 896', '1026-123-456', '1026-123-456', 'ethan.wills@example.com', 'Wills'),
(892, 'Sophie', 'Grace', 'Brand', '1166 Cedar Ln', '1989-09-15', 'Female', '1166 Cedar Ln', 'PO Box 897', '1027-234-567', '1027-234-567', 'sophie.brand@example.com', 'Brand'),
(893, 'Jackson', 'Liam', 'Canning', '1167 Birch Blvd', '1990-10-20', 'Male', '1167 Birch Blvd', 'PO Box 898', '1028-345-678', '1028-345-678', 'jackson.canning@example.com', 'Canning'),
(894, 'Emma', 'Isabella', 'Cowan', '1168 Pine St', '1991-11-25', 'Female', '1168 Pine St', 'PO Box 899', '1029-456-789', '1029-456-789', 'emma.cowan@example.com', 'Cowan'),
(895, 'Liam', 'Ethan', 'Curtin', '1169 Oak Dr', '1992-12-30', 'Male', '1169 Oak Dr', 'PO Box 900', '1030-567-890', '1030-567-890', 'liam.curtin@example.com', 'Curtin'),
(896, 'Ava', 'Chloe', 'Forrest', '1170 Maple Ln', '1988-01-15', 'Female', '1170 Maple Ln', 'PO Box 901', '1031-678-901', '1031-678-901', 'ava.forrest@example.com', 'Forrest'),
(897, 'Ethan', 'James', 'Fremantle', '1171 Cedar Ln', '1989-02-20', 'Male', '1171 Cedar Ln', 'PO Box 902', '1032-789-012', '1032-789-012', 'ethan.fremantle@example.com', 'Fremantle'),
(898, 'Sophie', 'Grace', 'Moore', '1172 Birch Blvd', '1990-03-25', 'Female', '1172 Birch Blvd', 'PO Box 903', '1033-890-123', '1033-890-123', 'sophie.moore@example.com', 'Moore'),
(899, 'Jackson', 'Liam', 'O''Connor', '1173 Pine St', '1991-04-30', 'Male', '1173 Pine St', 'PO Box 904', '1034-901-234', '1034-901-234', 'jackson.oconnor@example.com', 'O''Connor'),
(900, 'Emma', 'Isabella', 'Pearce', '1174 Oak Dr', '1992-05-15', 'Female', '1174 Oak Dr', 'PO Box 905', '1035-012-345', '1035-012-345', 'emma.pearce@example.com', 'Pearce');
INSERT INTO VoterRegistry (VoterID, FirstName, MiddleNames, LastName, Address, DateofBirth, Gender, ResidentialAddress, PostalAddress, ContactPhone, ContactMobile, ContactEmail, DivisionName)
VALUES
(901, 'Aiden', 'James', 'Perth', '1175 Maple Ln', '1988-06-20', 'Male', '1175 Maple Ln', 'PO Box 906', '1036-123-456', '1036-123-456', 'aiden.perth@example.com', 'Perth'),
(902, 'Isabella', 'Marie', 'Swan', '1176 Cedar Ln', '1989-07-25', 'Female', '1176 Cedar Ln', 'PO Box 907', '1037-234-567', '1037-234-567', 'isabella.swan@example.com', 'Swan'),
(903, 'Mason', 'Alexander', 'Tangney', '1177 Birch Blvd', '1990-08-30', 'Male', '1177 Birch Blvd', 'PO Box 908', '1038-345-678', '1038-345-678', 'mason.tangney@example.com', 'Tangney'),
(904, 'Olivia', 'Sophia', 'Paterson', '1178 Pine St', '1991-09-15', 'Female', '1178 Pine St', 'PO Box 909', '1039-456-789', '1039-456-789', 'olivia.paterson@example.com', 'Paterson'),
(905, 'Liam', 'Noah', 'Riverina', '1179 Oak Dr', '1992-10-20', 'Male', '1179 Oak Dr', 'PO Box 910', '1040-567-890', '1040-567-890', 'liam.riverina@example.com', 'Riverina'),
(906, 'Emma', 'Isabella', 'Watson', '1180 Maple Ln', '1988-11-25', 'Female', '1180 Maple Ln', 'PO Box 911', '1041-678-901', '1041-678-901', 'emma.watson@example.com', 'Watson'),
(907, 'Ethan', 'James', 'Dickson', '1181 Cedar Ln', '1989-12-30', 'Male', '1181 Cedar Ln', 'PO Box 912', '1042-789-012', '1042-789-012', 'ethan.dickson@example.com', 'Dickson'),
(908, 'Ava', 'Chloe', 'Longman', '1182 Birch Blvd', '1990-01-15', 'Female', '1182 Birch Blvd', 'PO Box 913', '1043-890-123', '1043-890-123', 'ava.longman@example.com', 'Longman'),
(909, 'Noah', 'Liam', 'Blair', '1183 Pine St', '1991-02-20', 'Male', '1183 Pine St', 'PO Box 914', '1044-901-234', '1044-901-234', 'noah.blair@example.com', 'Blair'),
(910, 'Emma', 'Grace', 'Hasluck', '1184 Oak Dr', '1992-03-25', 'Female', '1184 Oak Dr', 'PO Box 915', '1045-012-345', '1045-012-345', 'emma.hasluck@example.com', 'Hasluck'),
(911, 'Liam', 'Jackson', 'Lingiari', '1185 Maple Ln', '1988-04-30', 'Male', '1185 Maple Ln', 'PO Box 916', '1046-123-456', '1046-123-456', 'liam.lingiari@example.com', 'Lingiari'),
(912, 'Sophie', 'Grace', 'Solomon', '1186 Cedar Ln', '1989-05-15', 'Female', '1186 Cedar Ln', 'PO Box 917', '1047-234-567', '1047-234-567', 'sophie.solomon@example.com', 'Solomon'),
(913, 'Jackson', 'Liam', 'Gorton', '1187 Birch Blvd', '1990-06-20', 'Male', '1187 Birch Blvd', 'PO Box 918', '1048-345-678', '1048-345-678', 'jackson.gorton@example.com', 'Gorton'),
(914, 'Emma', 'Isabella', 'Bonner', '1188 Pine St', '1991-07-25', 'Female', '1188 Pine St', 'PO Box 919', '1049-456-789', '1049-456-789', 'emma.bonner@example.com', 'Bonner'),
(915, 'Liam', 'Ethan', 'Flynn', '1189 Oak Dr', '1992-08-30', 'Male', '1189 Oak Dr', 'PO Box 920', '1050-567-890', '1050-567-890', 'liam.flynn@example.com', 'Flynn'),
(916, 'Ava', 'Chloe', 'Durack', '1190 Maple Ln', '1988-09-15', 'Female', '1190 Maple Ln', 'PO Box 921', '1051-678-901', '1051-678-901', 'ava.durack@example.com', 'Durack'),
(917, 'Ethan', 'James', 'McMahon', '1191 Cedar Ln', '1989-10-20', 'Male', '1191 Cedar Ln', 'PO Box 922', '1052-789-012', '1052-789-012', 'ethan.mcmahon@example.com', 'McMahon'),
(918, 'Sophie', 'Grace', 'Wright', '1192 Birch Blvd', '1990-11-25', 'Female', '1192 Birch Blvd', 'PO Box 923', '1053-890-123', '1053-890-123', 'sophie.wright@example.com', 'Wright'),
(919, 'Jackson', 'Liam', 'Burt', '1193 Pine St', '1991-12-30', 'Male', '1193 Pine St', 'PO Box 924', '1054-901-234', '1054-901-234', 'jackson.burt@example.com', 'Burt'),
(920, 'Emma', 'Isabella', 'Bean', '1194 Oak Dr', '1992-01-15', 'Female', '1194 Oak Dr', 'PO Box 925', '1055-012-345', '1055-012-345', 'emma.bean@example.com', 'Bean'),
(921, 'Liam', 'Ethan', 'Clark', '1195 Maple Ln', '1988-02-20', 'Male', '1195 Maple Ln', 'PO Box 926', '1056-123-456', '1056-123-456', 'liam.clark@example.com', 'Clark'),
(922, 'Ava', 'Chloe', 'Cooper', '1196 Cedar Ln', '1989-03-25', 'Female', '1196 Cedar Ln', 'PO Box 927', '1057-234-567', '1057-234-567', 'ava.cooper@example.com', 'Cooper'),
(923, 'Ethan', 'James', 'Fraser', '1197 Birch Blvd', '1990-04-30', 'Male', '1197 Birch Blvd', 'PO Box 928', '1058-345-678', '1058-345-678', 'ethan.fraser@example.com', 'Fraser'),
(924, 'Sophie', 'Grace', 'Macnamara', '1198 Pine St', '1991-05-15', 'Female', '1198 Pine St', 'PO Box 929', '1059-456-789', '1059-456-789', 'sophie.macnamara@example.com', 'Macnamara'),
(925, 'Jackson', 'Liam', 'Monash', '1199 Oak Dr', '1992-06-20', 'Male', '1199 Oak Dr', 'PO Box 930', '1060-567-890', '1060-567-890', 'jackson.monash@example.com', 'Monash'),
(926, 'Olivia', 'Mae', 'Nicholls', '1201 Maple Ln', '1989-08-15', 'Female', '1201 Maple Ln', 'PO Box 931', '1061-678-901', '1061-678-901', 'olivia.nicholls@example.com', 'Nicholls'),
(927, 'Ethan', 'Alexander', 'Spence', '1202 Cedar Ln', '1990-09-20', 'Male', '1202 Cedar Ln', 'PO Box 932', '1062-789-012', '1062-789-012', 'ethan.spence@example.com', 'Spence'),
(928, 'Ava', 'Rose', 'Hawke', '1203 Birch Blvd', '1991-10-25', 'Female', '1203 Birch Blvd', 'PO Box 933', '1063-890-123', '1063-890-123', 'ava.hawke@example.com', 'Hawke'),
(929, 'Liam', 'Jackson', 'Corangamite', '1204 Pine St', '1992-11-30', 'Male', '1204 Pine St', 'PO Box 934', '1064-901-234', '1064-901-234', 'liam.corangamite@example.com', 'Corangamite'),
(930, 'Sophia', 'Isabella', 'Canberra', '1205 Oak Dr', '1988-12-15', 'Female', '1205 Oak Dr', 'PO Box 935', '1065-012-345', '1065-012-345', 'sophia.canberra@example.com', 'Canberra'),
(931, 'Jackson', 'Liam', 'Fenner', '1206 Maple Ln', '1989-01-20', 'Male', '1206 Maple Ln', 'PO Box 936', '1066-123-456', '1066-123-456', 'jackson.fenner@example.com', 'Fenner'),
(932, 'Emma', 'Chloe', 'Banks', '1207 Cedar Ln', '1990-02-25', 'Female', '1207 Cedar Ln', 'PO Box 937', '1067-234-567', '1067-234-567', 'emma.banks@example.com', 'Banks'),
(933, 'Ethan', 'James', 'Barton', '1208 Birch Blvd', '1991-03-30', 'Male', '1208 Birch Blvd', 'PO Box 938', '1068-345-678', '1068-345-678', 'ethan.barton@example.com', 'Barton'),
(934, 'Olivia', 'Grace', 'Bennelong', '1209 Pine St', '1992-04-15', 'Female', '1209 Pine St', 'PO Box 939', '1069-456-789', '1069-456-789', 'olivia.bennelong@example.com', 'Bennelong'),
(935, 'Liam', 'Alexander', 'Berowra', '1210 Oak Dr', '1988-05-20', 'Male', '1210 Oak Dr', 'PO Box 940', '1070-567-890', '1070-567-890', 'liam.berowra@example.com', 'Berowra'),
(936, 'Ava', 'Isabella', 'Blaxland', '1211 Maple Ln', '1989-06-25', 'Female', '1211 Maple Ln', 'PO Box 941', '1071-678-901', '1071-678-901', 'ava.blaxland@example.com', 'Blaxland'),
(937, 'Ethan', 'Noah', 'Bradfield', '1212 Cedar Ln', '1990-07-30', 'Male', '1212 Cedar Ln', 'PO Box 942', '1072-789-012', '1072-789-012', 'ethan.bradfield@example.com', 'Bradfield'),
(938, 'Olivia', 'Chloe', 'Calare', '1213 Birch Blvd', '1991-08-15', 'Female', '1213 Birch Blvd', 'PO Box 943', '1073-890-123', '1073-890-123', 'olivia.calare@example.com', 'Calare'),
(939, 'Liam', 'Jackson', 'Chifley', '1214 Pine St', '1992-09-20', 'Male', '1214 Pine St', 'PO Box 944', '1074-901-234', '1074-901-234', 'liam.chifley@example.com', 'Chifley'),
(940, 'Emma', 'Sophia', 'Cook', '1215 Oak Dr', '1988-10-25', 'Female', '1215 Oak Dr', 'PO Box 945', '1075-012-345', '1075-012-345', 'emma.cook@example.com', 'Cook'),
(941, 'Ethan', 'Liam', 'Cowper', '1216 Maple Ln', '1989-11-30', 'Male', '1216 Maple Ln', 'PO Box 946', '1076-123-456', '1076-123-456', 'ethan.cowper@example.com', 'Cowper'),
(942, 'Olivia', 'Grace', 'Cunningham', '1217 Cedar Ln', '1990-12-15', 'Female', '1217 Cedar Ln', 'PO Box 947', '1077-234-567', '1077-234-567', 'olivia.cunningham@example.com', 'Cunningham'),
(943, 'Liam', 'James', 'Dobell', '1218 Birch Blvd', '1991-01-20', 'Male', '1218 Birch Blvd', 'PO Box 948', '1078-345-678', '1078-345-678', 'liam.dobell@example.com', 'Dobell'),
(944, 'Ava', 'Chloe', 'Eden-Monaro', '1219 Pine St', '1992-02-25', 'Female', '1219 Pine St', 'PO Box 949', '1079-456-789', '1079-456-789', 'ava.eden-monaro@example.com', 'Eden-Monaro'),
(945, 'Ethan', 'Alexander', 'Farrer', '1220 Oak Dr', '1988-03-30', 'Male', '1220 Oak Dr', 'PO Box 950', '1080-567-890', '1080-567-890', 'ethan.farrer@example.com', 'Farrer'),
(946, 'Olivia', 'Isabella', 'Fowler', '1221 Maple Ln', '1989-04-15', 'Female', '1221 Maple Ln', 'PO Box 951', '1081-678-901', '1081-678-901', 'olivia.fowler@example.com', 'Fowler'),
(947, 'Liam', 'James', 'Gilmore', '1222 Cedar Ln', '1990-05-20', 'Male', '1222 Cedar Ln', 'PO Box 952', '1082-789-012', '1082-789-012', 'liam.gilmore@example.com', 'Gilmore'),
(948, 'Ava', 'Chloe', 'Grayndler', '1223 Birch Blvd', '1991-06-25', 'Female', '1223 Birch Blvd', 'PO Box 953', '1083-890-123', '1083-890-123', 'ava.grayndler@example.com', 'Grayndler'),
(949, 'Ethan', 'Alexander', 'Greenway', '1224 Pine St', '1992-07-30', 'Male', '1224 Pine St', 'PO Box 954', '1084-901-234', '1084-901-234', 'ethan.greenway@example.com', 'Greenway'),
(950, 'Olivia', 'Grace', 'Hughes', '1225 Oak Dr', '1988-08-15', 'Female', '1225 Oak Dr', 'PO Box 955', '1085-012-345', '1085-012-345', 'olivia.hughes@example.com', 'Hughes'),
(951, 'Liam', 'William', 'Greenway', '1226 Maple Ln', '1992-09-20', 'Male', '1226 Maple Ln', 'PO Box 956', '1086-123-456', '1086-123-456', 'liam.greenway@example.com', 'Greenway'),
(952, 'Emma', 'Sophia', 'Hughes', '1227 Cedar Ln', '1991-10-25', 'Female', '1227 Cedar Ln', 'PO Box 957', '1087-234-567', '1087-234-567', 'emma.hughes@example.com', 'Hughes'),
(953, 'Ava', 'Olivia', 'Hume', '1228 Birch Blvd', '1990-11-30', 'Female', '1228 Birch Blvd', 'PO Box 958', '1088-345-678', '1088-345-678', 'ava.hume@example.com', 'Hume'),
(954, 'Ethan', 'James', 'Hunter', '1229 Pine St', '1989-12-15', 'Male', '1229 Pine St', 'PO Box 959', '1089-456-789', '1089-456-789', 'ethan.hunter@example.com', 'Hunter'),
(955, 'Olivia', 'Grace', 'Kingsford Smith', '1230 Oak Dr', '1992-01-20', 'Female', '1230 Oak Dr', 'PO Box 960', '1090-567-890', '1090-567-890', 'olivia.kingsfordsmith@example.com', 'Kingsford Smith'),
(956, 'Liam', 'Alexander', 'Lindsay', '1231 Maple Ln', '1991-02-25', 'Male', '1231 Maple Ln', 'PO Box 961', '1091-678-901', '1091-678-901', 'liam.lindsay@example.com', 'Lindsay'),
(957, 'Emma', 'Chloe', 'Lyne', '1232 Cedar Ln', '1990-03-30', 'Female', '1232 Cedar Ln', 'PO Box 962', '1092-789-012', '1092-789-012', 'emma.lyne@example.com', 'Lyne'),
(958, 'Ava', 'Sophia', 'Macarthur', '1233 Birch Blvd', '1989-04-15', 'Female', '1233 Birch Blvd', 'PO Box 963', '1093-890-123', '1093-890-123', 'ava.macarthur@example.com', 'Macarthur'),
(959, 'Ethan', 'James', 'Mackellar', '1234 Pine St', '1992-05-20', 'Male', '1234 Pine St', 'PO Box 964', '1094-901-234', '1094-901-234', 'ethan.mackellar@example.com', 'Mackellar'),
(960, 'Olivia', 'Grace', 'Macquarie', '1235 Oak Dr', '1991-06-25', 'Female', '1235 Oak Dr', 'PO Box 965', '1095-012-345', '1095-012-345', 'olivia.macquarie@example.com', 'Macquarie'),
(961, 'Liam', 'Alexander', 'Mitchell', '1236 Maple Ln', '1990-07-30', 'Male', '1236 Maple Ln', 'PO Box 966', '1096-123-456', '1096-123-456', 'liam.mitchell@example.com', 'Mitchell'),
(962, 'Emma', 'Sophia', 'New England', '1237 Cedar Ln', '1989-08-15', 'Female', '1237 Cedar Ln', 'PO Box 967', '1097-234-567', '1097-234-567', 'emma.newengland@example.com', 'New England'),
(963, 'Ava', 'Chloe', 'Newcastle', '1238 Birch Blvd', '1992-09-20', 'Female', '1238 Birch Blvd', 'PO Box 968', '1098-345-678', '1098-345-678', 'ava.newcastle@example.com', 'Newcastle'),
(964, 'Ethan', 'James', 'North Sydney', '1239 Pine St', '1991-10-25', 'Male', '1239 Pine St', 'PO Box 969', '1099-456-789', '1099-456-789', 'ethan.northsydney@example.com', 'North Sydney'),
(965, 'Olivia', 'Grace', 'Page', '1240 Oak Dr', '1990-11-30', 'Female', '1240 Oak Dr', 'PO Box 970', '1100-567-890', '1100-567-890', 'olivia.page@example.com', 'Page'),
(966, 'Liam', 'Alexander', 'Parkes', '1241 Maple Ln', '1989-12-15', 'Male', '1241 Maple Ln', 'PO Box 971', '1101-678-901', '1101-678-901', 'liam.parkes@example.com', 'Parkes'),
(967, 'Emma', 'Sophia', 'Parramatta', '1242 Cedar Ln', '1992-01-20', 'Female', '1242 Cedar Ln', 'PO Box 972', '1102-789-012', '1102-789-012', 'emma.parramatta@example.com', 'Parramatta'),
(968, 'Ava', 'Chloe', 'Reid', '1243 Birch Blvd', '1991-02-25', 'Female', '1243 Birch Blvd', 'PO Box 973', '1103-890-123', '1103-890-123', 'ava.reid@example.com', 'Reid'),
(969, 'Ethan', 'James', 'Richmond', '1244 Pine St', '1990-03-30', 'Male', '1244 Pine St', 'PO Box 974', '1104-901-234', '1104-901-234', 'ethan.richmond@example.com', 'Richmond'),
(970, 'Olivia', 'Grace', 'Robertson', '1245 Oak Dr', '1989-04-15', 'Female', '1245 Oak Dr', 'PO Box 975', '1105-012-345', '1105-012-345', 'olivia.robertson@example.com', 'Robertson'),
(971, 'Liam', 'Alexander', 'Shortland', '1246 Maple Ln', '1992-05-20', 'Male', '1246 Maple Ln', 'PO Box 976', '1106-123-456', '1106-123-456', 'liam.shortland@example.com', 'Shortland'),
(972, 'Emma', 'Sophia', 'Sydney', '1247 Cedar Ln', '1991-06-25', 'Female', '1247 Cedar Ln', 'PO Box 977', '1107-234-567', '1107-234-567', 'emma.sydney@example.com', 'Sydney'),
(973, 'Ava', 'Chloe', 'Whitlam', '1248 Birch Blvd', '1990-07-30', 'Female', '1248 Birch Blvd', 'PO Box 978', '1108-345-678', '1108-345-678', 'ava.whitlam@example.com', 'Whitlam'),
(974, 'Ethan', 'James', 'Warringah', '1249 Pine St', '1989-08-15', 'Male', '1249 Pine St', 'PO Box 979', '1109-456-789', '1109-456-789', 'ethan.warringah@example.com', 'Warringah'),
(975, 'Olivia', 'Grace', 'Wentworth', '1250 Oak Dr', '1992-09-20', 'Female', '1250 Oak Dr', 'PO Box 980', '1110-567-890', '1110-567-890', 'olivia.wentworth@example.com', 'Wentworth'),
(976, 'Ethan', 'Aiden', 'Wide Bay', '1276 Oak Dr', '1991-11-10', 'Male', '1276 Oak Dr', 'PO Box 1005', '1135-012-345', '1135-012-345', 'ethan.widebay@example.com', 'Wide Bay'),
(977, 'Sophia', 'Ava', 'Werriwa', '1252 Maple Ln', '1991-11-20', 'Female', '1252 Maple Ln', 'PO Box 981', '1111-678-901', '1111-678-901', 'sophia.werriwa@example.com', 'Werriwa'),
(978, 'Jackson', 'Liam', 'Bowman', '1253 Cedar Ln', '1990-12-25', 'Male', '1253 Cedar Ln', 'PO Box 982', '1112-789-012', '1112-789-012', 'jackson.bowman@example.com', 'Bowman'),
(979, 'Mia', 'Olivia', 'Brisbane', '1254 Birch Blvd', '1989-01-30', 'Female', '1254 Birch Blvd', 'PO Box 983', '1113-890-123', '1113-890-123', 'mia.brisbane@example.com', 'Brisbane'),
(980, 'Ethan', 'Jacob', 'Capricornia', '1255 Pine St', '1992-02-28', 'Male', '1255 Pine St', 'PO Box 984', '1114-901-234', '1114-901-234', 'ethan.capricornia@example.com', 'Capricornia'),
(981, 'Olivia', 'Emma', 'Dawson', '1256 Oak Dr', '1991-03-15', 'Female', '1256 Oak Dr', 'PO Box 985', '1115-012-345', '1115-012-345', 'olivia.dawson@example.com', 'Dawson'),
(982, 'Ava', 'Chloe', 'Fadden', '1257 Maple Ln', '1990-04-20', 'Female', '1257 Maple Ln', 'PO Box 986', '1116-123-456', '1116-123-456', 'ava.fadden@example.com', 'Fadden'),
(983, 'Liam', 'Jackson', 'Fairfax', '1258 Cedar Ln', '1989-05-25', 'Male', '1258 Cedar Ln', 'PO Box 987', '1117-234-567', '1117-234-567', 'liam.fairfax@example.com', 'Fairfax'),
(984, 'Emma', 'Sophia', 'Fisher', '1259 Birch Blvd', '1992-06-30', 'Female', '1259 Birch Blvd', 'PO Box 988', '1118-345-678', '1118-345-678', 'emma.fisher@example.com', 'Fisher'),
(985, 'Mia', 'Ava', 'Forde', '1260 Pine St', '1991-07-15', 'Female', '1260 Pine St', 'PO Box 989', '1119-456-789', '1119-456-789', 'mia.forde@example.com', 'Forde'),
(986, 'Ethan', 'Noah', 'Griffith', '1261 Oak Dr', '1990-08-20', 'Male', '1261 Oak Dr', 'PO Box 990', '1120-567-890', '1120-567-890', 'ethan.griffith@example.com', 'Griffith'),
(987, 'Olivia', 'Isabella', 'Groom', '1262 Maple Ln', '1989-09-25', 'Female', '1262 Maple Ln', 'PO Box 991', '1121-678-901', '1121-678-901', 'olivia.groom@example.com', 'Groom'),
(988, 'Liam', 'Ethan', 'Herbert', '1263 Cedar Ln', '1992-10-30', 'Male', '1263 Cedar Ln', 'PO Box 992', '1122-789-012', '1122-789-012', 'liam.herbert@example.com', 'Herbert'),
(989, 'Emma', 'Charlotte', 'Hinkler', '1264 Birch Blvd', '1991-11-15', 'Female', '1264 Birch Blvd', 'PO Box 993', '1123-890-123', '1123-890-123', 'emma.hinkler@example.com', 'Hinkler'),
(990, 'Mia', 'Amelia', 'Kennedy', '1265 Pine St', '1990-12-20', 'Female', '1265 Pine St', 'PO Box 994', '1124-901-234', '1124-901-234', 'mia.kennedy@example.com', 'Kennedy'),
(991, 'Ethan', 'James', 'Leichhardt', '1266 Oak Dr', '1989-01-10', 'Male', '1266 Oak Dr', 'PO Box 995', '1125-012-345', '1125-012-345', 'ethan.leichhardt@example.com', 'Leichhardt'),
(992, 'Olivia', 'Grace', 'Lilley', '1267 Maple Ln', '1992-02-15', 'Female', '1267 Maple Ln', 'PO Box 996', '1126-123-456', '1126-123-456', 'olivia.lilley@example.com', 'Lilley'),
(993, 'Liam', 'Alexander', 'Maranoa', '1268 Cedar Ln', '1991-03-20', 'Male', '1268 Cedar Ln', 'PO Box 997', '1127-234-567', '1127-234-567', 'liam.maranoa@example.com', 'Maranoa'),
(994, 'Emma', 'Sophie', 'McPherson', '1269 Birch Blvd', '1990-04-25', 'Female', '1269 Birch Blvd', 'PO Box 998', '1128-345-678', '1128-345-678', 'emma.mcpherson@example.com', 'McPherson'),
(995, 'Mia', 'Emily', 'Moncrieff', '1270 Pine St', '1989-05-30', 'Female', '1270 Pine St', 'PO Box 999', '1129-456-789', '1129-456-789', 'mia.moncrieff@example.com', 'Moncrieff'),
(996, 'Ethan', 'Oliver', 'Moreton', '1271 Oak Dr', '1992-06-15', 'Male', '1271 Oak Dr', 'PO Box 1000', '1130-567-890', '1130-567-890', 'ethan.moreton@example.com', 'Moreton'),
(997, 'Olivia', 'Lily', 'Oxley', '1272 Maple Ln', '1991-07-20', 'Female', '1272 Maple Ln', 'PO Box 1001', '1131-678-901', '1131-678-901', 'olivia.oxley@example.com', 'Oxley'),
(998, 'Liam', 'Jackson', 'Petrie', '1273 Cedar Ln', '1990-08-25', 'Male', '1273 Cedar Ln', 'PO Box 1002', '1132-789-012', '1132-789-012', 'liam.petrie@example.com', 'Petrie'),
(999, 'Emma', 'Grace', 'Rankin', '1274 Birch Blvd', '1989-09-30', 'Female', '1274 Birch Blvd', 'PO Box 1003', '1133-890-123', '1133-890-123', 'emma.rankin@example.com', 'Rankin'),
(1000, 'Mia', 'Chloe', 'Ryan', '1275 Pine St', '1992-10-05', 'Female', '1275 Pine St', 'PO Box 1004', '1134-901-234', '1134-901-234', 'mia.ryan@example.com', 'Ryan');
-- Update the ElectionEventID in the VoterRegistry table based on the ElectoralDivisionID from the ElectoralDivision table
UPDATE VoterRegistry v
JOIN ElectoralDivision e
    ON v.DivisionName = e.DivisionName
SET v.ElectionEventID = 20220521000 + e.ElectoralDivisionID;



DELETE FROM PoliticalParty;
SELECT * FROM PoliticalParty;
-- Insert sample data into the PoliticalParty table
INSERT INTO PoliticalParty 
(PartyCode, PartyName, PartyLogo, PostalAddress, PartySecretary, ContactPersonName, ContactPersonPhone, ContactPersonMobile, ContactPersonEmail) 
VALUES
('ALP', 'Australian Labor Party', 'ALP_LOGO', 'Level 14, 300 Elizabeth Street, Melbourne VIC 3000', 'Paul Erickson', 'Sophie Collins', '03 9654 0000', '0412 345 678', 'sophie.collins@alp.org.au'),
('LNP', 'Liberal National Party', 'LNP_LOGO', 'PO Box 501, Brisbane QLD 4001', 'David Cruickshank', 'Mark Thomas', '07 3238 1111', '0421 234 567', 'mark.thomas@lnp.org.au'),
('GRN', 'Australian Greens', 'GRN_LOGO', 'Green House, 53 Victoria Street, Melbourne VIC 3000', 'Sandra DAngelo', 'Emily Johnson', '03 9654 0500', '0414 567 890', 'emily.johnson@greens.org.au'),
('NAT', 'The Nationals', 'NAT_LOGO', 'Level 6, 1 James Place, Canberra ACT 2600', 'Tom Bell', 'George Walker', '02 6273 2111', '0432 456 789', 'george.walker@nationals.org.au'),
('ONP', 'One Nation', 'ONP_LOGO', 'PO Box 127, Ipswich QLD 4305', 'Rebecca Smith', 'Claire Johnson', '07 3812 2200', '0423 456 789', 'claire.johnson@onenation.org.au'),
('PUP', 'Palmer United Party', 'PUP_LOGO', 'PO Box 228, Town of Queensland 4350', 'Andrew Davies', 'John Green', '07 4630 3300', '0415 678 901', 'john.green@palmerunitedparty.org.au'),
('CDP', 'Christian Democratic Party', 'CDP_LOGO', 'PO Box 445, Castle Hill NSW 2154', 'Nancy Harper', 'Sarah Wright', '02 9680 0000', '0422 234 567', 'sarah.wright@cdp.org.au'),
('LDP', 'Liberal Democrats', 'LDP_LOGO', 'Level 7, 201 Sussex Street, Sydney NSW 2000', 'Daniel Wong', 'Lisa Brown', '02 9264 0100', '0417 123 456', 'lisa.brown@libertarians.org.au'),
('SA', 'Sustainable Australia Party', 'SA_LOGO', 'PO Box 133, Melbourne VIC 3000', 'Margaret Scott', 'Emma Davis', '03 9654 0900', '0433 456 789', 'emma.davis@sustainableaustralia.org.au'),
('AM', 'Australian Monarchist League', 'AM_LOGO', 'PO Box 123, Sydney NSW 2000', 'Robert King', 'Julie Adams', '02 9256 0000', '0418 345 678', 'julie.adams@monarchists.org.au'),
('ADP', 'Australian Democrats Party', 'ADP_LOGO', 'PO Box 250, Melbourne VIC 3000', 'Helen Gray', 'Michael Clarke', '03 9654 1000', '0416 123 456', 'michael.clarke@australiandemocrats.org.au'),
('FDP', 'Family First Party', 'FDP_LOGO', 'PO Box 567, Adelaide SA 5000', 'Jessica Hill', 'David Lee', '08 8232 0000', '0420 987 654', 'david.lee@familyfirst.org.au'),
('SCP', 'Socialist Coalition Party', 'SCP_LOGO', 'PO Box 789, Perth WA 6000', 'Rachel Adams', 'Paul White', '08 9485 0000', '0430 987 654', 'paul.white@socialistcoalition.org.au'),
('UPP', 'United Australia Party', 'UPP_LOGO', 'PO Box 321, Brisbane QLD 4000', 'Daniel Hughes', 'Nancy Black', '07 3210 0000', '0419 876 543', 'nancy.black@unitedaustraliaparty.org.au'),
('CWP', 'Communist Workers Party', 'CWP_LOGO', 'PO Box 654, Sydney NSW 2000', 'Olivia Young', 'Richard Johnson', '02 9245 0000', '0424 678 901', 'richard.johnson@communistworkers.org.au'),
('DLP', 'Democratic Labour Party', 'DLP_LOGO', 'PO Box 987, Hobart TAS 7000', 'Thomas Walker', 'Laura Green', '03 6234 0000', '0411 234 567', 'laura.green@dlp.org.au'),
('LCP', 'Libertarian Coalition Party', 'LCP_LOGO', 'PO Box 432, Canberra ACT 2600', 'Liam Thomas', 'Isabella Martin', '02 6205 0000', '0435 678 123', 'isabella.martin@libertariancoalition.org.au'),
('MUP', 'Monarchist United Party', 'MUP_LOGO', 'PO Box 876, Melbourne VIC 3000', 'Emily Scott', 'John Brown', '03 9632 0000', '0412 345 678', 'john.brown@monarchistunited.org.au'),
('NLP', 'National Liberal Party', 'NLP_LOGO', 'PO Box 135, Sydney NSW 2000', 'Megan Harris', 'Chris Turner', '02 9223 0000', '0421 345 678', 'chris.turner@nationalliberal.org.au'),
('VGP', 'Victorian Greens Party', 'VGP_LOGO', 'PO Box 246, Melbourne VIC 3000', 'Andrew Davis', 'Tina Adams', '03 9654 1100', '0432 987 654', 'tina.adams@victoriangreens.org.au');
UPDATE Candidate c
JOIN ElectoralDivision e
    ON c.DivisionName = e.DivisionName
SET c.ElectionEventID = 20220521000 + e.ElectoralDivisionID;





DELETE FROM Candidate;
SELECT * FROM Candidate;
-- Insert sample data into the Candidate table with real Australian division names and corresponding political parties
INSERT INTO Candidate (CandidateID, Name, ContactAddress, ContactPhone, ContactMobile, ContactEmail, PartyCode, DivisionName) VALUES
(13321, 'Alice Thompson', '123 Maple St, Adelaide SA 5000', '08 1234 5678', '0412 345 678', 'alice.thompson@example.com', 'ALP', 'Adelaide'),
(17846, 'Bob Harris', '456 Oak St, Aston VIC 3080', '03 2345 6789', '0423 456 789', 'bob.harris@example.com', 'LNP', 'Aston'),
(17258, 'Charlie Brown', '789 Pine St, Ballarat VIC 3350', '03 3456 7890', '0434 567 890', 'charlie.brown@example.com', 'GRN', 'Ballarat'),
(20645, 'Diana Moore', '321 Cedar St, Banks NSW 2200', '02 4567 8901', '0445 678 901', 'diana.moore@example.com', 'NAT', 'Banks'),
(10268, 'Edward Clark', '654 Elm St, Barker SA 5341', '08 5678 9012', '0456 789 012', 'edward.clark@example.com', 'ONP', 'Barker'),
(20553, 'Fiona Lewis', '987 Birch St, Barton NSW 2000', '02 6789 0123', '0467 890 123', 'fiona.lewis@example.com', 'PUP', 'Barton');





DELETE FROM Ballot;
SELECT * FROM Ballot;
-- Insert 1000 ballots with BallotID from 1 to 1000, and set the ElectionEventID based on the VoterRegistry table
INSERT INTO Ballot (BallotID)
WITH RECURSIVE Numbers AS (
    SELECT 1 AS BallotID
    UNION ALL
    SELECT BallotID + 1
    FROM Numbers
    WHERE BallotID < 1000
)
SELECT BallotID FROM Numbers;
-- Update the ElectionEventID in the Ballot table based on the VoterRegistry table
UPDATE Ballot b
JOIN VoterRegistry vr
    ON b.BallotID = vr.VoterID
SET b.ElectionEventID = vr.ElectionEventID;





DELETE FROM IssuanceRecord;
SELECT * FROM IssuanceRecord;
-- Insert data into IssuanceRecord table with real polling stations based on Australian division names (without "Polling Station")
INSERT INTO IssuanceRecord (VoterID, ElectionEventID, IssueDate, Timestamp, PollingStation)
SELECT 
    vr.VoterID,
    vr.ElectionEventID,
    '2022-05-21',
    ADDTIME(
        '2022-05-21 09:00:00',
        SEC_TO_TIME(FLOOR(RAND() * 28800))
    ),
    CASE vr.DivisionName
        WHEN 'Adelaide' THEN 'Adelaide Convention Centre'
        WHEN 'Aston' THEN 'Aston Secondary College'
        WHEN 'Ballarat' THEN 'Ballarat Civic Centre'
        WHEN 'Banks' THEN 'Banks Public School'
        WHEN 'Barker' THEN 'Barker College'
        WHEN 'Barton' THEN 'Barton Town Hall'
        WHEN 'Bass' THEN 'Bass High School'
        WHEN 'Bean' THEN 'Bean High School'
        WHEN 'Bendigo' THEN 'Bendigo Secondary College'
        WHEN 'Bennelong' THEN 'Bennelong Public School'
        WHEN 'Berowra' THEN 'Berowra Civic Centre'
        WHEN 'Blair' THEN 'Blair Civic Centre'
        WHEN 'Blaxland' THEN 'Blaxland Civic Centre'
        WHEN 'Bonner' THEN 'Bonner Community Centre'
        WHEN 'Boothby' THEN 'Boothby Civic Centre'
        WHEN 'Bowman' THEN 'Bowman High School'
        WHEN 'Braddon' THEN 'Braddon Community Centre'
        WHEN 'Bradfield' THEN 'Bradfield Town Hall'
        WHEN 'Brand' THEN 'Brand Convention Centre'
        WHEN 'Brisbane' THEN 'Brisbane City Hall'
        WHEN 'Bruce' THEN 'Bruce Civic Centre'
        WHEN 'Burt' THEN 'Burt Convention Centre'
        WHEN 'Calare' THEN 'Calare Civic Centre'
        WHEN 'Calwell' THEN 'Calwell Community Centre'
        WHEN 'Canberra' THEN 'Canberra High School'
        WHEN 'Canning' THEN 'Canning Civic Centre'
        WHEN 'Capricornia' THEN 'Capricornia Community Centre'
        WHEN 'Casey' THEN 'Casey Community Centre'
        WHEN 'Chifley' THEN 'Chifley High School'
        WHEN 'Chisholm' THEN 'Chisholm Convention Centre'
        WHEN 'Cook' THEN 'Cook Civic Centre'
        WHEN 'Cooper' THEN 'Cooper High School'
        WHEN 'Corangamite' THEN 'Corangamite Community Centre'
        WHEN 'Corio' THEN 'Corio Town Hall'
        WHEN 'Cowan' THEN 'Cowan Convention Centre'
        WHEN 'Cowper' THEN 'Cowper Community Centre'
        WHEN 'Cunningham' THEN 'Cunningham Civic Centre'
        WHEN 'Curtin' THEN 'Curtin High School'
        WHEN 'Dawson' THEN 'Dawson Civic Centre'
        WHEN 'Deakin' THEN 'Deakin Town Hall'
        WHEN 'Dickson' THEN 'Dickson Community Centre'
        WHEN 'Dobell' THEN 'Dobell Civic Centre'
        WHEN 'Dunkley' THEN 'Dunkley Town Hall'
        WHEN 'Durack' THEN 'Durack Community Centre'
        WHEN 'Eden-Monaro' THEN 'Eden-Monaro Convention Centre'
        WHEN 'Fadden' THEN 'Fadden High School'
        WHEN 'Fairfax' THEN 'Fairfax Community Centre'
        WHEN 'Farrer' THEN 'Farrer High School'
        WHEN 'Fenner' THEN 'Fenner Convention Centre'
        WHEN 'Fisher' THEN 'Fisher Civic Centre'
        WHEN 'Flinders' THEN 'Flinders Community Centre'
        WHEN 'Flynn' THEN 'Flynn Community Centre'
        WHEN 'Forde' THEN 'Forde High School'
        WHEN 'Forrest' THEN 'Forrest Civic Centre'
        WHEN 'Fowler' THEN 'Fowler Town Hall'
        WHEN 'Franklin' THEN 'Franklin Community Centre'
        WHEN 'Fraser' THEN 'Fraser Town Hall'
        WHEN 'Fremantle' THEN 'Fremantle Convention Centre'
        WHEN 'Gellibrand' THEN 'Gellibrand High School'
        WHEN 'Gilmore' THEN 'Gilmore Convention Centre'
        WHEN 'Gippsland' THEN 'Gippsland Community Centre'
        WHEN 'Goldstein' THEN 'Goldstein High School'
        WHEN 'Gorton' THEN 'Gorton Town Hall'
        WHEN 'Grayndler' THEN 'Grayndler Community Centre'
        WHEN 'Greenway' THEN 'Greenway High School'
        WHEN 'Grey' THEN 'Grey Civic Centre'
        WHEN 'Griffith' THEN 'Griffith Convention Centre'
        WHEN 'Groom' THEN 'Groom Convention Centre'
        WHEN 'Hasluck' THEN 'Hasluck Community Centre'
        WHEN 'Hawke' THEN 'Hawke High School'
        WHEN 'Herbert' THEN 'Herbert Civic Centre'
        WHEN 'Higgins' THEN 'Higgins Community Centre'
        WHEN 'Hindmarsh' THEN 'Hindmarsh Community Centre'
        WHEN 'Hinkler' THEN 'Hinkler High School'
        WHEN 'Holt' THEN 'Holt Convention Centre'
        WHEN 'Hotham' THEN 'Hotham Convention Centre'
        WHEN 'Hughes' THEN 'Hughes Civic Centre'
        WHEN 'Hume' THEN 'Hume High School'
        WHEN 'Hunter' THEN 'Hunter Convention Centre'
        WHEN 'Indi' THEN 'Indi High School'
        WHEN 'Isaacs' THEN 'Isaacs Community Centre'
        WHEN 'Jagajaga' THEN 'Jagajaga Convention Centre'
        WHEN 'Kennedy' THEN 'Kennedy Civic Centre'
        WHEN 'Kingsford Smith' THEN 'Kingsford Smith Civic Centre'
        WHEN 'Kingston' THEN 'Kingston Civic Centre'
        WHEN 'Kooyong' THEN 'Kooyong Community Centre'
        WHEN 'La Trobe' THEN 'La Trobe Community Centre'
        WHEN 'Lalor' THEN 'Lalor Civic Centre'
        WHEN 'Leichhardt' THEN 'Leichhardt Convention Centre'
        WHEN 'Lilley' THEN 'Lilley Town Hall'
        WHEN 'Lindsay' THEN 'Lindsay Town Hall'
        WHEN 'Longman' THEN 'Longman Community Centre'
        WHEN 'Lyne' THEN 'Lyne Civic Centre'
        WHEN 'Lyons' THEN 'Lyons High School'
        WHEN 'Macarthur' THEN 'Macarthur Town Hall'
        WHEN 'Mackellar' THEN 'Mackellar Civic Centre'
        WHEN 'Macnamara' THEN 'Macnamara Town Hall'
        WHEN 'Macquarie' THEN 'Macquarie High School'
        WHEN 'Makin' THEN 'Makin Town Hall'
        WHEN 'Mallee' THEN 'Mallee Town Hall'
        WHEN 'Maranoa' THEN 'Maranoa Convention Centre'
        WHEN 'Maribyrnong' THEN 'Maribyrnong Community Centre'
        WHEN 'Mayo' THEN 'Mayo Community Centre'
        WHEN 'McEwen' THEN 'McEwen Civic Centre'
        WHEN 'McMahon' THEN 'McMahon Town Hall'
        WHEN 'McPherson' THEN 'McPherson Community Centre'
        WHEN 'Melbourne' THEN 'Melbourne Exhibition Centre'
        WHEN 'Menzies' THEN 'Menzies Civic Centre'
        WHEN 'Mitchell' THEN 'Mitchell Town Hall'
        WHEN 'Monash' THEN 'Monash High School'
        WHEN 'Moncrieff' THEN 'Moncrieff Convention Centre'
        WHEN 'Moore' THEN 'Moore Convention Centre'
        WHEN 'Moreton' THEN 'Moreton Community Centre'
        WHEN 'New England' THEN 'New England High School'
        WHEN 'Newcastle' THEN 'Newcastle Civic Theatre'
        WHEN 'Nicholls' THEN 'Nicholls Community Centre'
        WHEN 'North Sydney' THEN 'North Sydney Town Hall'
        WHEN 'O''Connor' THEN 'O''Connor Civic Centre'
        WHEN 'Oxley' THEN 'Oxley Town Hall'
        WHEN 'Page' THEN 'Page High School'
        WHEN 'Parkes' THEN 'Parkes Community Centre'
        WHEN 'Parramatta' THEN 'Parramatta Town Hall'
        WHEN 'Paterson' THEN 'Paterson Community Centre'
        WHEN 'Pearce' THEN 'Pearce Civic Centre'
        WHEN 'Perth' THEN 'Perth Convention and Exhibition Centre'
        WHEN 'Petrie' THEN 'Petrie Town Hall'
        WHEN 'Rankin' THEN 'Rankin High School'
        WHEN 'Reid' THEN 'Reid Community Centre'
        WHEN 'Richmond' THEN 'Richmond Town Hall'
        WHEN 'Riverina' THEN 'Riverina Civic Centre'
        WHEN 'Robertson' THEN 'Robertson High School'
        WHEN 'Ryan' THEN 'Ryan Community Centre'
        WHEN 'Scullin' THEN 'Scullin High School'
        WHEN 'Shortland' THEN 'Shortland Town Hall'
        WHEN 'Solomon' THEN 'Solomon Civic Centre'
        WHEN 'Spence' THEN 'Spence Community Centre'
        WHEN 'Sturt' THEN 'Sturt Community Centre'
        WHEN 'Swan' THEN 'Swan Civic Centre'
        WHEN 'Sydney' THEN 'Sydney Town Hall'
        WHEN 'Tangney' THEN 'Tangney Town Hall'
        WHEN 'Wannon' THEN 'Wannon Community Centre'
        WHEN 'Warringah' THEN 'Warringah High School'
        WHEN 'Watson' THEN 'Watson Town Hall'
        WHEN 'Wentworth' THEN 'Wentworth Community Centre'
        WHEN 'Werriwa' THEN 'Werriwa Civic Centre'
        WHEN 'Whitlam' THEN 'Whitlam High School'
        WHEN 'Wide Bay' THEN 'Wide Bay Community Centre'
        WHEN 'Wills' THEN 'Wills Town Hall'
        WHEN 'Wright' THEN 'Wright High School'
    END
FROM VoterRegistry vr
WHERE vr.VoterID BETWEEN 1 AND 1000;





DELETE FROM contests;
SELECT * FROM contests;
SELECT COUNT(DISTINCT ElectionEventID) FROM contests;
-- Insert statements to combine ElectionEventID from electionevent table and CandidateID from candidate table into contests table
INSERT INTO contests (ElectionEventID, CandidateID)
SELECT e.ElectionEventID, c.CandidateID
FROM electionevent e
CROSS JOIN candidate c;



