CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(100)
);

INSERT INTO Students (StudentName)
VALUES ('Ali');

INSERT INTO Students (StudentName)
VALUES ('Sara');

INSERT INTO Students (StudentName)
VALUES
('Ahmed'),
('Hassan');

ALTER TABLE Students
AUTO_INCREMENT = 100;

CREATE TABLE Students_SQLServer (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    StudentName VARCHAR(100)
);