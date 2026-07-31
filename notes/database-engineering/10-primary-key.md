# SQL PRIMARY KEY Constraint

## Definition

The `PRIMARY KEY` constraint uniquely identifies each record in a table.

A primary key:

- Must be unique.
- Cannot contain NULL values.
- There can be only one primary key in a table.

---

## Create Table Example

```sql
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    City VARCHAR(50)
);
```

---

## Valid Insert

```sql
INSERT INTO Students
VALUES
(1,'Ali','Lahore'),
(2,'Sara','Karachi');
```

---

## Invalid Duplicate

```sql
INSERT INTO Students
VALUES
(1,'Ahmed','Islamabad');
```

---

## Invalid NULL

```sql
INSERT INTO Students
VALUES
(NULL,'Ahmed','Islamabad');
```

---

## Add PRIMARY KEY (MySQL)

```sql
ALTER TABLE Students
ADD PRIMARY KEY (StudentID);
```

---

## SQL Server Syntax

```sql
ALTER TABLE Students
ADD CONSTRAINT PK_Students
PRIMARY KEY (StudentID);
```

---

## Composite PRIMARY KEY

```sql
CREATE TABLE Enrollment (
    StudentID INT,
    CourseID INT,
    PRIMARY KEY (StudentID, CourseID)
);
```

---

## Key Points

- Uniquely identifies each row.
- Does not allow duplicate values.
- Does not allow NULL values.
- Only one primary key is allowed per table.
- Can consist of one or multiple columns.