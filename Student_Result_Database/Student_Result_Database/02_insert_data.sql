-- Students 
INSERT INTO Students VALUES
(777,'Vijay','Computer Science',2),
(555,'Greeshma','Computer Science',2),
(333,'Adithya','Commerce',2),
(666,'Midhun','Computer Science',3),
(444,'Sreerag','Commerce',3),
(111,'Priya','BCA',2),
(222,'Kailas','BCA',3),
(999,'Jothish','BSC',3),
(888,'Lokesh','BSC',3),
(100,'Parvathy','Commerce',2);

-- Subjects 
INSERT INTO Subjects VALUES
('ML007','Machine Learning',4),
('M008','Mathematics',3),
('CC009','Cloud Computing',3);

-- Marks 
INSERT INTO Marks(StudentID,SubjectID,Marks) VALUES
(777,'ML007',85),
(777,'M008',78),
(777,'CC009',90),
(555,'ML007',88),
(555,'M008',92),
(555,'CC009',95),
(333,'ML007',35),
(333,'M008',67),
(333,'CC009',78);

-- Again inserting the values to the Students and Marks to find students who are failed.
INSERT INTO Students VALUES
(101,'Arun','Computer Science',2),
(102,'Meera','BCA',2),
(103,'Rahul','Commerce',3),
(104,'Sneha','BSC',2),
(105,'Fahad','Computer Science',3);

INSERT INTO Marks(StudentID,SubjectID,Marks) VALUES
(101,'ML007',25),
(101,'M008',30),
(101,'CC009',28),
(102,'ML007',35),
(102,'M008',72),
(102,'CC009',20),
(103,'ML007',10),
(103,'M008',22),
(103,'CC009',33),
(104,'ML007',66),
(104,'M008',58),
(104,'CC009',74),
(105,'ML007',39),
(105,'M008',15),
(105,'CC009',29);
