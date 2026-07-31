# SQL AUTO_INCREMENT

## Definition

`AUTO_INCREMENT` automatically generates a unique number for a new record.

It is commonly used with a `PRIMARY KEY`.

---

## Create Table Example

```sql
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(100)
);
```

---

## Insert Records

```sql
INSERT INTO Students (StudentName)
VALUES ('Ali');
```

```sql
INSERT INTO Students (StudentName)
VALUES ('Sara');
```

---

## Multiple Records

```sql
INSERT INTO Students (StudentName)
VALUES
('Ahmed'),
('Hassan');
```

---

## Change Starting Value

```sql
ALTER TABLE Students
AUTO_INCREMENT = 100;
```

---

## SQL Server Equivalent

```sql
CREATE TABLE Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    StudentName VARCHAR(100)
);
```

---

## Key Points

- Automatically generates sequential numbers.
- Commonly used with `PRIMARY KEY`.
- Default starting value is `1`.
- Starting value can be changed.
- Eliminates the need to manually enter IDs.