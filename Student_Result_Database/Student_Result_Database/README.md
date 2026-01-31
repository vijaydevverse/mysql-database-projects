# Student Result Database

## Description
The Student Result Database is a MySQL-based project designed to manage student information, subjects, and examination marks. It supports academic performance analysis by identifying top-performing students, calculating department-wise averages, and detecting students who have failed multiple subjects.

## Database Structure

### Students Table
Stores basic student details such as Student ID, name, department, and academic year.

### Subjects Table
Maintains subject information including subject ID, subject name, and credit value.

### Marks Table
Stores marks obtained by students in each subject and links students with subjects using foreign key relationships.

## Key Features
- Relational database design using foreign keys
- Student and subject data management
- Marks tracking for multiple subjects
- Top 3 students per subject analysis
- Department-wise average marks calculation
- Identification of students failing in more than two subjects
- Cascade delete to maintain data integrity

## SQL Concepts Used
- CREATE DATABASE and CREATE TABLE
- PRIMARY KEY and FOREIGN KEY constraints
- INSERT, SELECT, JOIN queries
- Aggregate functions (AVG, COUNT)
- GROUP BY and HAVING clauses
- ORDER BY and LIMIT

## How to Run
1. Execute the database and table creation script.
2. Insert sample data into Students, Subjects, and Marks tables.
3. Run the query scripts to analyze student performance.

## Tools Used
- MySQL
- MySQL Workbench

## Author
Vijay Krishnan
