## SQL BETWEEN Operator

### Definition

The `BETWEEN` operator selects values within a given range. It includes both the starting and ending values.

### Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

### Examples

```sql
SELECT CustomerName, Balance
FROM Customers
WHERE Balance BETWEEN 5000 AND 10000;
```

```sql
SELECT CustomerName
FROM Customers
WHERE CustomerName BETWEEN 'A' AND 'C';
```

```sql
SELECT CustomerName, Balance
FROM Customers
WHERE Balance NOT BETWEEN 5000 AND 10000;
```

### Key Points

- Includes both boundary values.
- Works with numbers, text, and dates.
- `NOT BETWEEN` excludes the specified range.
- Improves query readability.

### Practice Questions

1. Find balances between 6000 and 9000.
2. Find balances not between 7000 and 12000.
3. Find customer names between A and D.
4. Write a query using `BETWEEN` instead of `>=` and `<=`.
5. Explain why `BETWEEN` is inclusive.

### Mini Challenge

Write queries to:

- Find balances between 5000 and 10000.
- Find balances outside this range.
- Find customer names between A and C.