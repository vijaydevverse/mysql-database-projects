-- INSERTING VALUES TO THE TABLE
-- Employee  
INSERT INTO Employee(employee_name,department,position,hire_date,base_salary) VALUES
('Vijay Krishnan','IT','Developer','2023-06-15',40000),
('Greeshma','HR','HR Manager','2022-03-10',52000),
('Adihya','Finance','Accountant','2021-09-01',45000);

-- Attendence 
INSERT INTO Attendance(employee_id,attendance_date,status) VALUES
(1,'2026-01-01','Present'),
(1,'2026-01-02','Present'),
(2,'2026-01-01','Absent'),
(3,'2026-01-01','Leave');

-- Salary
INSERT INTO Salaries(employee_id,base_salary,bonus,deductions,month,year) VALUES
(1,40000,10000,2000,'January',2026),
(2,52000,5000,1000,'January',2026),
(3,45000,6500,1100,'January',2026);

-- Payroll 
INSERT INTO Payroll(employee_id,total_salary,payment_date) VALUES
(1,48000,'2026-01-31'),
(2,56000,'2026-01-31'),
(3,50400,'2026-01-31');
