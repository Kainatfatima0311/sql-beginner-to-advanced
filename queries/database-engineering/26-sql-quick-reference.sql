CREATE DATABASE quick_reference_db;

USE quick_reference_db;

CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    DepartmentID INT,
    Salary DECIMAL(10,2) CHECK (Salary > 0),
    JoiningDate DATE,
    Status VARCHAR(20) DEFAULT 'Active',
    FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID)
);

INSERT INTO Departments (DepartmentName)
VALUES
('AI'),
('Data'),
('Development');

INSERT INTO Employees (
    FullName,
    Email,
    DepartmentID,
    Salary,
    JoiningDate
)
VALUES
('Ali Khan', 'ali@example.com', 1, 75000, '2025-01-15'),
('Sara Ahmed', 'sara@example.com', 2, 85000, '2024-08-10'),
('Ahmed Raza', 'ahmed@example.com', 3, 65000, '2023-05-20'),
('Kainat Fatima', 'kainat@example.com', 1, 95000, '2026-07-01');

SELECT *
FROM Employees;

SELECT FullName, Salary
FROM Employees;

SELECT DISTINCT DepartmentID
FROM Employees;

SELECT *
FROM Employees
WHERE Salary > 70000;

SELECT *
FROM Employees
WHERE DepartmentID = 1
AND Salary >= 70000;

SELECT *
FROM Employees
WHERE DepartmentID = 1
OR DepartmentID = 2;

SELECT *
FROM Employees
WHERE NOT DepartmentID = 3;

SELECT *
FROM Employees
ORDER BY Salary ASC;

SELECT *
FROM Employees
ORDER BY Salary DESC;

SELECT *
FROM Employees
LIMIT 3;

SELECT *
FROM Employees
WHERE FullName LIKE 'A%';

SELECT *
FROM Employees
WHERE FullName LIKE '%Ahmed%';

SELECT *
FROM Employees
WHERE DepartmentID IN (1, 2);

SELECT *
FROM Employees
WHERE Salary BETWEEN 60000 AND 90000;

SELECT COUNT(*) AS TotalEmployees
FROM Employees;

SELECT SUM(Salary) AS TotalSalary
FROM Employees;

SELECT AVG(Salary) AS AverageSalary
FROM Employees;

SELECT MIN(Salary) AS MinimumSalary
FROM Employees;

SELECT MAX(Salary) AS MaximumSalary
FROM Employees;

SELECT
    DepartmentID,
    COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY DepartmentID;

SELECT
    DepartmentID,
    AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID
HAVING AVG(Salary) >= 70000;

SELECT
    Employees.FullName,
    Departments.DepartmentName,
    Employees.Salary
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

SELECT
    Employees.FullName,
    Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

SELECT *
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
);

SELECT
    FullName,
    Salary,
    CASE
        WHEN Salary >= 90000 THEN 'High'
        WHEN Salary >= 70000 THEN 'Medium'
        ELSE 'Standard'
    END AS SalaryLevel
FROM Employees;

UPDATE Employees
SET Salary = 90000
WHERE EmployeeID = 2;

DELETE FROM Employees
WHERE EmployeeID = 3;

CREATE VIEW ActiveEmployees AS
SELECT
    FullName,
    Salary,
    JoiningDate
FROM Employees
WHERE Status = 'Active';

SELECT *
FROM ActiveEmployees;

CREATE INDEX idx_employee_name
ON Employees (FullName);

SHOW DATABASES;

SHOW TABLES;

DESCRIBE Employees;

SHOW INDEX FROM Employees;

DROP VIEW ActiveEmployees;

ALTER TABLE Employees
DROP INDEX idx_employee_name;