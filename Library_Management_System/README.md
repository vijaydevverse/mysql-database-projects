# Library Management System – MySQL

## Overview
This project is a backend-only Library Management System built using MySQL. It manages books, members, librarians, and borrowing transactions. The system supports book availability tracking, borrowing and return operations, member loan history, and overdue book identification using structured SQL queries.

## Database Structure
The project consists of four relational tables connected using foreign keys:

### Books
Stores book information including title, author, genre, published year, and availability status.

### Members
Stores member details such as name, email, phone number, and join date.

### Librarians
Stores librarian information including name, contact details, and hire date.

### Borrowing
Handles book borrowing transactions, tracking borrow date, return date, and the librarian involved.

## Features
- Add and manage books in the library
- Borrow and return books
- Track available and borrowed books
- View member borrowing history
- Identify overdue books (14+ days and 30+ days)
- Filter books by author, genre, and publication year
- Count total books and borrowings
- Track librarian borrowing activity

## SQL Concepts Used
- CREATE DATABASE and CREATE TABLE
- PRIMARY KEY and AUTO_INCREMENT
- FOREIGN KEY constraints
- INSERT, UPDATE, and SELECT queries
- INNER JOIN operations
- Aggregate functions (COUNT, AVG)
- GROUP BY and ORDER BY
- Date functions and INTERVAL

## Sample Queries Included
- Borrowing and returning books
- Listing available books
- Member loan history
- Overdue books report
- Books by a specific author
- Total books borrowed per member
- Top librarians by borrowings
- Currently borrowed books

## How to Run
1. Open MySQL Workbench
2. Execute the database and table creation queries
3. Insert sample data
4. Run the provided SELECT queries to test functionality

## Tools Used
- MySQL
- MySQL Workbench

## Future Enhancements
- Add a frontend using Python (Flask or Tkinter) or PHP
- Implement fine management for overdue returns
- Add advanced search and filtering options
- Introduce user authentication and role-based access

## Author
Vijay Krishnan
