# Computerised Federal Election Database System
Created by Christopher Owen, a modified portfolio based on university assignment in 7th semester.

## Brief Description
This portfolio repository showcase the creator's ability in creating a complex relational database management system based on real-world problems. This project implements a database backend for a computerised Australian federal election voting system designed for the House of Representatives elections.

## Overview
The objective of this project is to design and implement a high-performance, scalable, and integrity-preserving database architecture capable of supporting millions of registered voters while maintaining strict requirements for data confidentiality, integrity, and transparency in elections.

The system simulates the major operational components of the electoral process including:
- Voter registration management
- Election event management
- Electoral division administration
- Candidate and political party management
- Secure ballot issuance
- Storage of anonymised electronic ballots
- Vote counting using the preferential voting system

Special attention was given to database scalability, query optimization, and partitioning strategies to ensure efficient operation when handling extremely large datasets such as national voter registries and ballot records.

## System Architecture
The backend system is implemented using:
- Microsoft SQL Server
- T-SQL stored procedures and functions
- Relational database modelling
- Query optimisation techniques
- Partitioned storage strategies

The architecture follows a multi-entity relational schema representing the electoral ecosystem, including:
- Voters
- Electoral Divisions
- Election Events
- Political Parties
- Candidates
- Ballot Papers
- Issuance Records
- Election Results

The system was designed to handle over 17 million voters with projected growth over time, requiring scalable storage and indexing strategies.

## Database Design
### Conceptual Model
A complete Entity-Relationship (ER) Model was developed using UML notation to represent:
- Entity relationships
- Cardinalities
- Primary and foreign key dependencies

The conceptual model was translated into a normalized relational schema to reduce redundancy and maintain referential integrity.

### Large-Scale Data Considerations
Three tables were identified as extremely large and rapidly growing:
| Table | Reason |
|----------------|------------------------------------------|
| VoterRegistry | Stores millions of voters nationwide |
| BallotPapers | Stores ballot data for every vote cast |
| IssuanceRecord | Records ballot issuance for auditability |

With approximately **17.2 million** voters currently enrolled, these tables were designed with long-term scalability in mind.
Projected growth over a 10-year period with four election cycles was considered during schema design.

## Performance Optimisation
### Indexing Strategy
Indexes were designed to optimise common queries such as:
- Counting voters per division
- Retrieving candidate lists per election
- Detecting non-voters
Index types used include:
- Clustered indexes
- Non-clustered indexes
- Composite indexes

These indexes significantly reduce full table scans and improve query performance.

### Query Optimisation
SQL queries were analysed using execution plans to evaluate:
- Join algorithms
- Index utilisation
- Cost estimates
- Scan vs seek operations

Optimisation improvements were applied based on the SQL Server cost-based optimizer behaviour.

### Table Partitioning Strategy
To handle extremely large tables efficiently, partitioning strategies were implemented.
Partitioning improves:
- Query performance
- Data management
- Parallel processing
- Partition pruning

Partition keys were selected based on query access patterns, such as:
- ElectionEventID
- DivisionName
- ElectionDate

Partitioning allows the database to scan only relevant partitions instead of entire tables.

## Example SQL Capabilities Demonstrated
The project demonstrates advanced SQL capabilities including:
- Aggregation queries
- Randomized candidate ordering
- Subqueries using IN / NOT IN
- Index creation and management
- Stored procedures and functions
- Partitioned table design
- Query execution plan analysis
- Large dataset optimisation

## Technologies Used
| Technology | Purpose |
|----------------|------------------------------------------|
| Microsoft SQL Server | Database management system |
| T-SQL | Stored procedures and functions |
| Draw.io | Database design |
| Azure Data Studio | Query development and analysis |

## Learning Outcomes Demonstrated
This project demonstrates proficiency in:
- Relational database modelling
- Physical database schema design
- Index optimisation
- Query execution plan analysis
- Large dataset storage strategies
- Database partitioning
- Stored procedure development
- Secure data architecture

## Project Structure
```
/data
    sample_data.sql

/database-schema
    schema.sql

/docs
    database_report.docx
    ERD.png

/indexing
    index_strategy.sql
    partition_function.sql

/queries
    sample_query.sql

/stored-procedures
    distributePreferences.sql
    previouslyVoted.sql
    primaryVoteCount.sql
```

## Future Improvements
Possible future extensions include:
- Support for Senate elections
- Integration with polling station systems
- Real-time vote counting dashboards
- Advanced fraud detection mechanisms
- Distributed database scaling
