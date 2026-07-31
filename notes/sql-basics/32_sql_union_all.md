## SQL UNION ALL

### Definition

The `UNION ALL` operator combines the results of two or more `SELECT` statements and keeps all rows, including duplicates.

### Syntax

```sql
SELECT column_name
FROM table1

UNION ALL

SELECT column_name
FROM table2;
```

### Examples

```sql
SELECT CustomerName AS Information
FROM Customers

UNION ALL

SELECT Country
FROM Customers;
```

```sql
SELECT CustomerName AS Data
FROM Customers

UNION ALL

SELECT OrderDate
FROM Orders;
```

```sql
SELECT CustomerName AS Data
FROM Customers

UNION ALL

SELECT Country
FROM Customers

ORDER BY Data;
```

### Key Points

- Combines result sets.
- Keeps duplicate rows.
- Does not join tables.
- Faster than `UNION` because no duplicate removal is performed.

### Practice Questions

1. Combine customer names and countries using `UNION ALL`.
2. Combine customer names and order dates.
3. Sort the combined result.
4. Explain the difference between `UNION` and `UNION ALL`.
5. Why is `UNION ALL` usually faster?

### Mini Challenge

Combine customer names and countries using `UNION ALL` and sort the result alphabetically.