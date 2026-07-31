## SQL UNION

### Definition

The `UNION` operator combines the results of two or more `SELECT` statements and removes duplicate rows.

### Syntax

```sql
SELECT column_name
FROM table1

UNION

SELECT column_name
FROM table2;
```

### Examples

```sql
SELECT CustomerName AS Information
FROM Customers

UNION

SELECT Country
FROM Customers;
```

```sql
SELECT CustomerName AS Data
FROM Customers

UNION

SELECT OrderDate
FROM Orders;
```

```sql
SELECT CustomerName AS Data
FROM Customers

UNION

SELECT Country
FROM Customers

ORDER BY Data;
```

### Rules

- Both queries must return the same number of columns.
- The data types should be compatible.
- Column names come from the first `SELECT`.
- `ORDER BY` is written only once at the end.

### Key Points

- Combines result sets.
- Removes duplicate rows.
- Does not join tables.
- Different from `JOIN`.

### Practice Questions

1. Combine customer names and countries.
2. Combine customer names and order dates.
3. Sort the combined result.
4. Explain why duplicate rows are removed.
5. List the rules of `UNION`.

### Mini Challenge

Combine customer names and countries into one result and sort them alphabetically.