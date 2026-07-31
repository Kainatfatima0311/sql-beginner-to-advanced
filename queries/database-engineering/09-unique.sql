CREATE TABLE Users (
    UserID INT,
    Email VARCHAR(100) UNIQUE
);

INSERT INTO Users
VALUES (1, 'ali@gmail.com');

INSERT INTO Users
VALUES (2, 'sara@gmail.com');

ALTER TABLE Users
ADD UNIQUE (Email);

ALTER TABLE Users
ADD CONSTRAINT UC_Email UNIQUE (Email);

CREATE TABLE Students (
    StudentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    UNIQUE (FirstName, LastName)
);