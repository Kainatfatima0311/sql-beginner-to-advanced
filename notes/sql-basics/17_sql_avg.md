## SQL AVG()

### Definition

The `AVG()` function returns the average value of a numeric column.

### Syntax

```sql
SELECT AVG(column_name)
FROM table_name;
```

### Examples

```sql
SELECT AVG(Price) AS AveragePrice
FROM Products;
```

```sql
SELECT AVG(Price) AS AveragePrice
FROM Products
WHERE CategoryID = 1;
```

### Key Points

- Returns the average of numeric values.
- Works only with numeric columns.
- Ignores NULL values.
- Can be combined with `WHERE`.
- Returns a single value.

### Practice Questions

1. Find the average product price.
2. Find the average price for CategoryID = 1.
3. Does `AVG()` include NULL values?
4. Can `AVG()` be used on text columns?
5. Why is `AVG(CustomerName)` invalid?

### Mini Challenge

Write a query to find the average product price for products with `CategoryID = 2`.