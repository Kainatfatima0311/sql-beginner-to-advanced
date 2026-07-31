## SQL CASE Expression

### Definition

The `CASE` expression is used to apply conditional logic in SQL. It works like an `IF...ELSE` statement.

### Syntax

```sql
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ELSE result
END
```

### Examples

```sql
SELECT
    CustomerName,
    Country,
    CASE
        WHEN Country = 'Germany' THEN 'Europe'
        WHEN Country = 'UK' THEN 'Europe'
        WHEN Country = 'Mexico' THEN 'North America'
        ELSE 'Other'
    END AS Region
FROM Customers;
```

```sql
SELECT
    OrderID,
    OrderAmount,
    CASE
        WHEN OrderAmount >= 4000 THEN 'High'
        WHEN OrderAmount >= 2500 THEN 'Medium'
        ELSE 'Low'
    END AS OrderLevel
FROM Orders;
```

```sql
SELECT
    CustomerName,
    Country
FROM Customers
ORDER BY
CASE
    WHEN Country = 'Germany' THEN 1
    WHEN Country = 'UK' THEN 2
    ELSE 3
END;
```

### Key Points

- Works like `IF...ELSE`.
- Returns the first matching result.
- `ELSE` is optional.
- Returns `NULL` if no condition matches and `ELSE` is omitted.

### Practice Questions

1. Categorize customers by region.
2. Categorize orders by amount.
3. Sort customers using `CASE`.
4. Use `CASE` with `COUNT()`.
5. Explain what happens if `ELSE` is omitted.

### Mini Challenge

Display each order with a category:
- High (>= 4000)
- Medium (2500–3999)
- Low (< 2500)