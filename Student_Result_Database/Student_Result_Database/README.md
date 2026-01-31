# Student Result Database

## Description
The Student Result Database is a MySQL-based project created to store and analyze student academic performance. It manages students, subjects, and marks, and supports ranking students, calculating department-wise average marks, and identifying students who have failed in multiple subjects.

## Database Schema

### Students Table
Stores student details including Student ID, name, department, and academic year.

### Subjects Table
Stores subject information such as subject ID, subject name, and credit value.

### Marks Table
Stores marks obtained by students in different subjects and connects students with subjects using foreign key relationships with cascade delete.

## Features Implemented
- Student and subject data management
- Marks tracking for multiple subjects
- Top 3 students per subject identification
- Department-wise average marks calculation
- Detection of students failing in more than two subjects
- Support for multiple data insertions
- Referential integrity using foreign keys

## SQL Concepts Used
- CREATE DATABASE and CREATE TABLE
- PRIMARY KEY and FOREIGN KEY constraints
- AUTO_INCREMENT
- INSERT and SELECT queries
- JOIN operations
- Aggregate functions (AVG, COUNT)
- GROUP BY and HAVING clauses
- ORDER BY and LIMIT

## How to Execute
1. Run the database and table creation queries.
2. Insert student, subject, and marks data.
3. Execute the analytical queries to evaluate student performance.

## Tools Used
- MySQL
- MySQL Workbench

## Author
Vijay Krishnan

