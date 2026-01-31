# Employee Payroll System

## Description
The Employee Payroll System is a MySQL-based database project designed to manage employee details, attendance records, salary structure, and payroll processing. The system calculates employee salaries using base salary, bonuses, and deductions, generates payslips, tracks attendance, and produces payroll reports.

## Database Schema

### Employee Table
Stores employee information including employee ID, name, department, position, hire date, and base salary.

### Attendance Table
Tracks daily attendance status (Present, Absent, Leave) for employees. Each record is linked to the Employee table using a foreign key with cascade delete.

### Salaries Table
Maintains monthly salary details such as base salary, bonus, deductions, month, and year for each employee.

### Payroll Table
Stores finalized payroll data including total salary paid and payment date for employees.

## Features Implemented
- Employee record management (insert, update, delete)
- Attendance tracking system
- Salary calculation using bonus and deductions
- Monthly payroll generation
- Payslip generation for individual employees
- Payroll reporting with attendance summary
- Automatic cascading deletion for related records

## SQL Operations Used
- CREATE DATABASE and CREATE TABLE
- PRIMARY KEY and AUTO_INCREMENT
- FOREIGN KEY with ON DELETE CASCADE
- INSERT, UPDATE, DELETE statements
- JOIN operations across multiple tables
- Aggregate functions (COUNT, SUM)
- Conditional calculations in SELECT queries
- Date functions (CURDATE)

## How to Execute
1. Run the database and table creation queries.
2. Insert sample employee, attendance, salary, and payroll data.
3. Execute update and delete operations to manage employee records.
4. Run salary calculation and payslip queries.
5. Generate payroll reports with attendance analysis.

## Tools Used
- MySQL
- MySQL Workbench

## Author
Vijay Krishnan
