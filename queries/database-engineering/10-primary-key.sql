CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    City VARCHAR(50)
);

INSERT INTO Students
VALUES
(1,'Ali','Lahore'),
(2,'Sara','Karachi');

ALTER TABLE Students
ADD PRIMARY KEY (StudentID);

ALTER TABLE Students
ADD CONSTRAINT PK_Students
PRIMARY KEY (StudentID);

CREATE TABLE Enrollment (
    StudentID INT,
    CourseID INT,
    PRIMARY KEY (StudentID, CourseID)
);