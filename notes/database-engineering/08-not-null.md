# SQL NOT NULL Constraint

## Definition

The `NOT NULL` constraint ensures that a column cannot contain NULL values.

---

## Purpose

- Prevents empty values.
- Ensures required information is always provided.
- Improves data integrity.

---

## Create Table Example

```sql
CREATE TABLE Students (
    StudentID INT,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(50)
);
```

---

## Valid Insert

```sql
INSERT INTO Students
VALUES (1, 'Ali', 'Lahore');
```

---

## Invalid Insert

```sql
INSERT INTO Students
VALUES (2, NULL, 'Karachi');
```

---

## Add NOT NULL to an Existing Column (MySQL)

```sql
ALTER TABLE Students
MODIFY Name VARCHAR(100) NOT NULL;
```

---

## SQL Server Syntax

```sql
ALTER TABLE Students
ALTER COLUMN Name VARCHAR(100) NOT NULL;
```

---

## Key Points

- Does not allow NULL values.
- Used for required fields.
- Can be added during table creation.
- Can also be added using `ALTER TABLE`.