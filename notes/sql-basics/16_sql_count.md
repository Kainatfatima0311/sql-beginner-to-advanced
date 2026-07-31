## SQL COUNT()

### Definition

The `COUNT()` function returns the number of rows that match a condition.

### Syntax

```sql
SELECT COUNT(*)
FROM table_name;
```

```sql
SELECT COUNT(column_name)
FROM table_name;
```

```sql
SELECT COUNT(DISTINCT column_name)
FROM table_name;
```

### Examples

```sql
SELECT COUNT(*) AS TotalCustomers
FROM Customers;
```

```sql
SELECT COUNT(City)
FROM Customers;
```

```sql
SELECT COUNT(*)
FROM Customers
WHERE Country = 'Germany';
```

```sql
SELECT COUNT(DISTINCT Country)
FROM Customers;
```

### Key Points

- `COUNT(*)` counts all rows.
- `COUNT(column)` counts only non-NULL values.
- `COUNT(DISTINCT column)` counts unique values.
- Can be combined with `WHERE`.
- Returns a single numeric value.

### Practice Questions

1. Count all customers.
2. Count customers with a City value.
3. Count customers from Germany.
4. Count the number of unique countries.
5. Count customers whose ContactName is not NULL.

### Mini Challenge

Find:
- Total customers.
- Total unique countries.
- Total customers from Brazil.