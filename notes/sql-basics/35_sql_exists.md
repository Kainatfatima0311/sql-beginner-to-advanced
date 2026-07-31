## SQL EXISTS

### Definition

The `EXISTS` operator checks whether a subquery returns any rows. If at least one row is returned, the condition is `TRUE`.

### Syntax

```sql
SELECT columns
FROM table1
WHERE EXISTS (
    SELECT 1
    FROM table2
    WHERE table1.column = table2.column
);
```

### Examples

```sql
SELECT CustomerName
FROM Customers AS C
WHERE EXISTS (
    SELECT 1
    FROM Orders AS O
    WHERE O.CustomerID = C.CustomerID
);
```

```sql
SELECT CustomerName
FROM Customers AS C
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders AS O
    WHERE O.CustomerID = C.CustomerID
);
```

### Key Points

- Checks whether a subquery returns rows.
- Returns `TRUE` if at least one row exists.
- `NOT EXISTS` returns rows with no matching records.
- Commonly used with correlated subqueries.

### Practice Questions

1. Show customers who have orders.
2. Show customers who do not have orders.
3. Explain the difference between `EXISTS` and `IN`.
4. Why is `SELECT 1` commonly used?
5. Explain how `NOT EXISTS` works.

### Mini Challenge

Display all customers who have placed at least one order.