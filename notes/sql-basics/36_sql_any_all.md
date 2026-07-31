## SQL ANY and ALL Operators

### SQL ANY

The `ANY` operator returns `TRUE` if the condition is true for at least one value returned by the subquery.

### Syntax

```sql
SELECT columns
FROM table
WHERE value operator ANY (
    subquery
);
```

### Example

```sql
SELECT CustomerName
FROM Customers
WHERE CustomerID = ANY (
    SELECT CustomerID
    FROM Orders
    WHERE OrderAmount > 3000
);
```

---

### SQL ALL

The `ALL` operator returns `TRUE` only if the condition is true for every value returned by the subquery.

### Syntax

```sql
SELECT columns
FROM table
WHERE value operator ALL (
    subquery
);
```

### Example

```sql
SELECT *
FROM Orders
WHERE OrderAmount >= ALL (
    SELECT OrderAmount
    FROM Orders
);
```

### Key Points

- `ANY` requires at least one matching value.
- `ALL` requires every value to satisfy the condition.
- Both operators work with subqueries.

### Practice Questions

1. Find customers who placed orders above 3000.
2. Find the highest order using `ALL`.
3. Explain the difference between `ANY` and `ALL`.
4. Explain when each operator returns `TRUE`.
5. Write one example for both operators.

### Mini Challenge

Use `ANY` to find customers with high-value orders and use `ALL` to find the highest order amount.