-- Update Employee Information
UPDATE Employee SET department='Finance',
position='Senior Accountant',
base_salary=50000
WHERE employee_id=3;

-- Delete Employee Records 
DELETE FROM employee
WHERE employee_id=3;

-- Track Employee Attendence
INSERT INTO Attendance(employee_id,attendance_date,status) VALUES
(1,CURDATE(),'Present');

-- Calculate Salary
SELECT e.employee_id,e.Employee_name,
s.base_salary,
s.bonus,
s.deductions,
(s.base_salary+s.bonus-s.deductions) AS total_salary
FROM Employee e join Salaries s on e.employee_id=s.employee_id;

-- Manage Deductions and Bonuses
UPDATE Salaries
SET bonus=8000,deductions=1500
WHERE employee_id=1
AND month='January' AND year=2026;

-- Update Payroll Record   
INSERT INTO Payroll(employee_id,total_salary,payment_date)
SELECT employee_id,
(base_salary+bonus-deductions),
CURDATE()
FROM Salaries WHERE
Month='January' AND year=2026;
select * from payroll;

-- Generate Pay Slips
SELECT e.employee_id,e.Employee_name,
s.base_salary,
s.bonus,
s.deductions,
(s.base_salary+s.bonus-s.deductions) AS total_salary
FROM Employee e jOIN Salaries s ON e.employee_id=s.employee_id
WHERE e.employee_id=1;

SELECT e.employee_id,e.Employee_name,
s.base_salary,
s.bonus,
s.deductions,
(s.base_salary+s.bonus-s.deductions) AS total_salary
FROM Employee e jOIN Salaries s ON e.employee_id=s.employee_id
WHERE e.employee_id=2;

-- Generate Payroll Reports
SELECT e.employee_id,
e.employee_name,
e.department,
COUNT(a.attendance_id) AS total_days,
SUM(a.status='Present') AS present_days,
SUM(a.status='Absent') AS absent_days,
SUM(a.status='Leave') AS leave_days,
s.base_salary,
s.bonus,
s.deductions,
(s.base_salary+s.bonus-s.deductions) AS total_salary,
p.payment_date
FROM Employee e
JOIN Salaries s ON e.employee_id=s.employee_id
JOIN Payroll p ON e.employee_id=p.employee_id
LEFT JOIN Attendance a ON e.employee_id=a.employee_id
GROUP BY e.employee_id,e.employee_name,e.department,
s.base_salary,s.bonus,s.deductions,p.payment_date;
