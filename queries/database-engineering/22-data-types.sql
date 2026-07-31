CREATE TABLE Employees (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    Salary DECIMAL(10,2),
    JoiningDate DATE,
    IsActive BOOLEAN
);

CREATE TABLE Products (
    ProductID BIGINT,
    ProductName VARCHAR(200),
    Description TEXT,
    Price DECIMAL(10,2),
    Weight FLOAT
);

CREATE TABLE Attendance (
    AttendanceID INT,
    CheckIn TIME,
    CreatedAt DATETIME,
    UpdatedAt TIMESTAMP
);