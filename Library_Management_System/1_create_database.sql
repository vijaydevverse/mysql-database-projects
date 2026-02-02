-- CREATE DATABASE SQL
CREATE DATABASE IF NOT EXISTS LibraryDataBase;
USE LibraryDataBase;

-- BOOKS table
CREATE TABLE BOOKS(book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255) NOT NULL,
genre VARCHAR(255) NOT NULL,
published_year YEAR,
is_available BOOLEAN DEFAULT TRUE);

-- Members table
CREATE TABLE Members(member_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
email VARCHAR(255),
phone_number VARCHAR(15),
join_date DATE DEFAULT(CURRENT_DATE));

-- Librarians table
CREATE TABLE Librarians(librarian_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
email VARCHAR(255),
phone_number VARCHAR(15),
hire_date DATE DEFAULT(CURRENT_DATE));

-- Borrowing table
CREATE TABLE Borrowing(loan_id INT AUTO_INCREMENT PRIMARY KEY,
book_id INT,
member_id INT,
borrow_date DATE DEFAULT (CURRENT_DATE),
return_date DATE,
librarian_id INT,
FOREIGN KEY(book_id) REFERENCES Books(book_id),
FOREIGN KEY(member_id) REFERENCES Members(member_id),
FOREIGN KEY(librarian_id) REFERENCES Librarians(librarian_id));
