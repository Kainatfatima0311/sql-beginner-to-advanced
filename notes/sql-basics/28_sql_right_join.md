## SQL RIGHT JOIN

### Definition

The `RIGHT JOIN` keyword returns all records from the right table and the matching records from the left table. If there is no match, `NULL` values are returned for the left table columns.

> **SQLite Note:** SQLite does not support `RIGHT JOIN`. Use a `LEFT JOIN` by reversing the table order.

### Syntax (MySQL / SQL Server)

```sql
SELECT columns
FROM table1
RIGHT JOIN table2
ON table1.common_column = table2.common_column;
```

### SQLite Equivalent

```sql
SELECT
    C.CustomerName,
    O.OrderID
FROM Orders AS O
LEFT JOIN Customers AS C
ON O.CustomerID = C.CustomerID;
```

### Key Points

- Returns all rows from the right table.
- Matching rows are returned from the left table.
- Unmatched rows contain `NULL` values.
- SQLite uses `LEFT JOIN` with reversed table order.

### Practice Questions

1. Explain the purpose of `RIGHT JOIN`.
2. Why doesn't SQLite support `RIGHT JOIN`?
3. Write the SQLite equivalent of a `RIGHT JOIN`.
4. Identify which table becomes the left table in SQLite.
5. Explain when `NULL` appears.

### Mini Challenge

Write the SQLite version of a `RIGHT JOIN` that displays all orders along with customer names.