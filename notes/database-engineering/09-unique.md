# SQL UNIQUE Constraint

## Definition

The `UNIQUE` constraint ensures that all values in a column are different.

---

## Purpose

- Prevents duplicate values.
- Maintains data integrity.
- Commonly used for emails, usernames, and national IDs.

---

## Create Table Example

```sql
CREATE TABLE Users (
    UserID INT,
    Email VARCHAR(100) UNIQUE
);
```

---

## Valid Insert

```sql
INSERT INTO Users
VALUES (1, 'ali@gmail.com');

INSERT INTO Users
VALUES (2, 'sara@gmail.com');
```

---

## Invalid Insert

```sql
INSERT INTO Users
VALUES (3, 'ali@gmail.com');
```

---

## Add UNIQUE to an Existing Table (MySQL)

```sql
ALTER TABLE Users
ADD UNIQUE (Email);
```

---

## SQL Server Syntax

```sql
ALTER TABLE Users
ADD CONSTRAINT UC_Email UNIQUE (Email);
```

---

## UNIQUE on Multiple Columns

```sql
CREATE TABLE Students (
    StudentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    UNIQUE (FirstName, LastName)
);
```

---

## Key Points

- Prevents duplicate values.
- Multiple UNIQUE constraints can exist in one table.
- Can be applied during table creation or later using `ALTER TABLE`.
- A `PRIMARY KEY` is always unique, but a `UNIQUE` constraint is not a primary key.