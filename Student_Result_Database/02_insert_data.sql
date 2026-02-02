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
