CREATE DATABASE Employee;
USE Employee;

-- Employee Table
CREATE TABLE Employee(
employee_id INT PRIMARY KEY AUTO_INCREMENT,
employee_name VARCHAR(255) NOT NULL,
department VARCHAR(100),
position VARCHAR(100),
hire_date DATE,
base_salary DECIMAL(10,2)
);

-- Attendance Table
CREATE TABLE Attendance(
attendance_id INT PRIMARY KEY AUTO_INCREMENT,
employee_id INT,
attendance_date DATE,
status ENUM('Present','Absent','Leave'),
FOREIGN KEY(employee_id) REFERENCES Employee(employee_id)
ON DELETE CASCADE
);

-- Salary Table 
CREATE TABLE Salaries(
salary_id INT PRIMARY KEY AUTO_INCREMENT,
employee_id INT,
base_salary DECIMAL(10,2),
bonus DECIMAL(10,2),
deductions DECIMAL(10,2),
month VARCHAR(20),
year INT,
FOREIGN KEY(employee_id) REFERENCES Employee(employee_id)
ON DELETE CASCADE
);

-- Payroll Table 
CREATE TABLE Payroll(
payroll_id INT PRIMARY KEY AUTO_INCREMENT,
employee_id INT,
total_salary DECIMAL(10,2),
payment_date DATE,
FOREIGN KEY(employee_id) REFERENCES Employee(employee_id)
ON DELETE CASCADE
);
