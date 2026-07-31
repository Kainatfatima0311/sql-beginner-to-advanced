CREATE TABLE Employees (
    EmployeeID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

INSERT INTO Employees
VALUES
(1,'Ali','Khan'),
(2,'Sara','Ahmed'),
(3,'Kainat','Fatima');

SELECT CONCAT(FirstName,' ',LastName) AS FullName
FROM Employees;

SELECT LENGTH(FirstName)
FROM Employees;

SELECT UPPER(FirstName)
FROM Employees;

SELECT LOWER(FirstName)
FROM Employees;

SELECT TRIM('   Ali   ');

SELECT REPLACE('Hello World','World','SQL');

SELECT SUBSTRING('Kainat',1,3);