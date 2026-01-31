CREATE DATABASE StudentResultDataBase;
USE StudentResultDataBase;
 
-- Students Table
CREATE TABLE Students(
StudentID INT PRIMARY KEY,
Name VARCHAR(100),
Department VARCHAR(100),
Year INT
);

-- Subjects Table
CREATE TABLE Subjects(
SubjectID INT(10) PRIMARY KEY,
SubjectName VARCHAR(100),
Credits INT
);

-- Marks Table
CREATE TABLE Marks(
MarkID INT PRIMARY KEY AUTO_INCREMENT,
StudentID INT,
SubjectID INT(10),
Marks INT,
FOREIGN KEY(StudentID) REFERENCES Students(StudentID) ON DELETE CASCADE,
FOREIGN KEY(SubjectID) REFERENCES Subjects(SubjectID) ON DELETE CASCADE
);
