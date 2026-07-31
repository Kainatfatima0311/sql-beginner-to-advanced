# SQL Dates

## Definition

SQL provides date and time data types to store and work with dates and times.

The standard date format is:

```text
YYYY-MM-DD
```

---

## DATE Data Type

```sql
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    OrderDate DATE
);
```

---

## Insert a Date

```sql
INSERT INTO Orders
VALUES
(1,'Ali','2026-07-31');
```

---

## Retrieve Records

```sql
SELECT *
FROM Orders;
```

---

## Filter by Date

```sql
SELECT *
FROM Orders
WHERE OrderDate = '2026-07-31';
```

---

## Date Comparison

```sql
SELECT *
FROM Orders
WHERE OrderDate > '2026-01-01';
```

---

## BETWEEN

```sql
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '2026-01-01' AND '2026-12-31';
```

---

## Current Date

```sql
SELECT CURRENT_DATE();
```

---

## Current Date and Time

```sql
SELECT CURRENT_TIMESTAMP();
```

---

## Data Types

| Data Type | Description |
|-----------|-------------|
| DATE | Stores date only |
| TIME | Stores time only |
| DATETIME | Stores date and time |

---

## Key Points

- Use `YYYY-MM-DD` format.
- `DATE` stores only the date.
- `DATETIME` stores both date and time.
- `CURRENT_DATE()` returns today's date.
- `CURRENT_TIMESTAMP()` returns the current date and time.