## SQL SUM()

### Definition

The `SUM()` function returns the total of all values in a numeric column.

### Syntax

```sql
SELECT SUM(column_name)
FROM table_name;
```

### Examples

```sql
SELECT SUM(Balance) AS TotalBalance
FROM Customers;
```

```sql
SELECT SUM(Balance) AS GermanyBalance
FROM Customers
WHERE Country = 'Germany';
```

```sql
SELECT SUM(DISTINCT Balance)
FROM Customers;
```

### Key Points

- Returns the total of numeric values.
- Works only with numeric columns.
- Ignores NULL values.
- Can be combined with `WHERE`.
- `SUM(DISTINCT column)` ignores duplicate values.

### Practice Questions

1. Find the total balance of all customers.
2. Find the total balance of German customers.
3. Find the total balance of UK customers.
4. Find the sum of unique balance values.
5. Why can't `SUM()` be used on `CustomerName`?

### Mini Challenge

Write queries to find:
- Total balance of all customers.
- Total balance of customers from Mexico.
- Total balance of customers from Sweden.