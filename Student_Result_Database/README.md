# Student Result Database

## Description
The Student Result Database is a MySQL-based academic database project designed to manage students, subjects, and their marks. It enables analysis of student performance through ranking, department-wise averages, and identification of students who failed in multiple subjects.

## Database Overview
The database consists of three related tables:
- Students
- Subjects
- Marks

Foreign key constraints are used to maintain referential integrity with cascading deletes.

## Tables Description

### Students
Stores student details such as student ID, name, department, and academic year.

### Subjects
Stores subject information including subject ID, subject name, and credit value.

### Marks
Stores marks obtained by students in each subject and links students with subjects using foreign keys.

## Features Implemented
- Creation of normalized relational tables
- Insertion of student, subject, and marks data
- Retrieval of top 3 students per subject
- Department-wise average marks calculation
- Identification of students who failed in more than two subjects
- Use of cascading deletes for data consistency

## SQL Concepts Used
- CREATE DATABASE and CREATE TABLE
- PRIMARY KEY and AUTO_INCREMENT
- FOREIGN KEY with ON DELETE CASCADE
- INSERT INTO statements
- INNER JOIN operations
- Aggregate functions (AVG, COUNT)
- GROUP BY and HAVING clauses
- ORDER BY and LIMIT

## Sample Queries Included
- Top 3 students in each subject
- Average marks per department
- Students failing in more than two subjects

## How to Run
1. Execute the database and table creation script.
2. Insert the provided student, subject, and marks data.
3. Run the SELECT queries to analyze results.

## Tools Used
- MySQL
- MySQL Workbench

## Author
Vijay Krishnan
