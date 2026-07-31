# SQL CREATE INDEX

## Definition

The `CREATE INDEX` statement creates an index on one or more columns of a table to improve query performance.

---

## Purpose

- Speeds up data retrieval.
- Improves `SELECT` query performance.
- Useful for frequently searched columns.

---

## Syntax

```sql
CREATE INDEX index_name
ON table_name (column_name);
```

---

## Example

```sql
CREATE INDEX idx_customer_name
ON Customers (CustomerName);
```

---

## Multiple Columns

```sql
CREATE INDEX idx_customer
ON Customers (LastName, FirstName);
```

---

## UNIQUE INDEX

```sql
CREATE UNIQUE INDEX idx_email
ON Users (Email);
```

---

## Drop Index (MySQL)

```sql
ALTER TABLE Customers
DROP INDEX idx_customer_name;
```

---

## SQL Server Syntax

```sql
DROP INDEX Customers.idx_customer_name;
```

---

## Key Points

- Improves search performance.
- Best for frequently searched columns.
- Too many indexes may slow down INSERT, UPDATE, and DELETE operations.
- Does not change the actual data.