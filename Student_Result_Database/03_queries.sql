-- Get top 3 students in each subject
SELECT st.Name,m.Marks
FROM Marks m
JOIN Students st ON m.StudentID=st.StudentID
WHERE m.SubjectID='ML007'
ORDER BY m.Marks DESC
LIMIT 3;

SELECT st.Name,m.Marks
FROM Marks m
JOIN Students st ON m.StudentID=st.StudentID
WHERE m.SubjectID='M008'
ORDER BY m.Marks DESC
LIMIT 3;

-- Calculate average marks per department 
SELECT st.Name,m.Marks
FROM Marks m
JOIN Students st ON m.StudentID=st.StudentID
WHERE m.SubjectID='CC009'
ORDER BY m.Marks DESC
LIMIT 3;

SELECT st.Department,
AVG(m.Marks) AS average_marks
FROM Marks m
JOIN Students st ON m.StudentID=st.StudentID
GROUP BY st.Department;

-- Find students who failed in more than 2 subjects 
SELECT st.Name,
COUNT(*) AS failed_subjects
FROM Marks m
JOIN Students st ON m.StudentID=st.StudentID
WHERE m.Marks<40
GROUP BY st.StudentID,st.Name
HAVING COUNT(*)>2;
