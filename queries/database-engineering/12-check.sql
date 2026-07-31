CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Age INT CHECK (Age >= 18)
);

INSERT INTO Employees
VALUES
(1,'Ali',22);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    CHECK (Price > 0)
);

ALTER TABLE Employees
ADD CONSTRAINT CHK_Age
CHECK (Age >= 18);