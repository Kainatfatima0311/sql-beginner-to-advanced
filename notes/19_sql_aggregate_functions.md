## SQL Aggregate Functions

### Definition

Aggregate functions perform a calculation on multiple rows and return a single result.

### Common Aggregate Functions

| Function | Purpose |
|----------|---------|
| `MIN()` | Returns the smallest value |
| `MAX()` | Returns the largest value |
| `COUNT()` | Counts rows |
| `SUM()` | Returns the total of numeric values |
| `AVG()` | Returns the average of numeric values |

### Examples

```sql
SELECT MIN(Balance) FROM Customers;

SELECT MAX(Balance) FROM Customers;

SELECT COUNT(*) FROM Customers;

SELECT SUM(Balance) FROM Customers;

SELECT AVG(Balance) FROM Customers;
```

### Key Points

- Returns a single value.
- Works on multiple rows.
- Can be used with `WHERE`.
- `SUM()` and `AVG()` require numeric columns.
- `COUNT(*)` counts all rows.

### Practice Questions

1. Find the minimum balance.
2. Find the maximum balance.
3. Count all customers.
4. Find the total balance.
5. Find the average balance.

### Mini Challenge

Write one query for each aggregate function using the `Customers` table.