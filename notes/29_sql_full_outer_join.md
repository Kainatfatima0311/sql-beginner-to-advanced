## SQL FULL OUTER JOIN

### Definition

The `FULL OUTER JOIN` keyword returns all matching and non-matching rows from both tables. If there is no match, `NULL` values are returned.

> SQLite does not support `FULL OUTER JOIN` directly. Use two `LEFT JOIN` queries with `UNION`.

### Syntax (MySQL / SQL Server / PostgreSQL)

```sql
SELECT columns
FROM table1
FULL OUTER JOIN table2
ON table1.common_column = table2.common_column;
```

### SQLite Equivalent

```sql
SELECT
    C.CustomerName,
    O.OrderID
FROM Customers AS C
LEFT JOIN Orders AS O
ON C.CustomerID = O.CustomerID

UNION

SELECT
    C.CustomerName,
    O.OrderID
FROM Orders AS O
LEFT JOIN Customers AS C
ON O.CustomerID = C.CustomerID
WHERE C.CustomerID IS NULL;
```

### Key Points

- Returns all rows from both tables.
- Matching rows are combined.
- Unmatched rows contain `NULL`.
- SQLite uses `LEFT JOIN + UNION`.

### Practice Questions

1. Explain the purpose of `FULL OUTER JOIN`.
2. Why doesn't SQLite support it?
3. Write the SQLite alternative.
4. Explain why `UNION` is required.
5. Identify unmatched customers and orders.

### Mini Challenge

Display all customers and all orders, including unmatched records.