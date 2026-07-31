## SQL SELECT TOP

### Definition

The `SELECT TOP` statement is used to return only a specified number of rows from a table.

> In SQLite and MySQL, `LIMIT` is used instead of `TOP`.

### Syntax

**SQL Server**

```sql
SELECT TOP number *
FROM table_name;
```

**SQLite**

```sql
SELECT *
FROM table_name
LIMIT number;
```

### Examples

```sql
SELECT *
FROM Customers
LIMIT 5;
```

```sql
SELECT CustomerName
FROM Customers
LIMIT 3;
```

```sql
SELECT *
FROM Customers
ORDER BY CustomerName ASC
LIMIT 5;
```

### Key Points

- Returns only a limited number of rows.
- SQLite uses `LIMIT`.
- SQL Server uses `TOP`.
- `ORDER BY` is recommended for consistent results.
- `OFFSET` skips rows before returning results.

### Practice Questions

1. Display the first 5 customers.
2. Display the first 3 customer names.
3. Display the first 5 customers ordered by CustomerName.
4. Display 5 customers after skipping the first 5.

### Mini Challenge

Display the first 4 customers sorted by Country.