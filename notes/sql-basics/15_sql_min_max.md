## SQL MIN() and MAX()

### Definition

`MIN()` returns the smallest value in a column.

`MAX()` returns the largest value in a column.

### Syntax

```sql
SELECT MIN(column_name)
FROM table_name;
```

```sql
SELECT MAX(column_name)
FROM table_name;
```

### Examples

```sql
SELECT MIN(CustomerID) AS SmallestID
FROM Customers;
```

```sql
SELECT MAX(CustomerID) AS LargestID
FROM Customers;
```

```sql
SELECT MIN(CustomerName)
FROM Customers;
```

```sql
SELECT MAX(CustomerName)
FROM Customers;
```

### Key Points

- `MIN()` returns the smallest value.
- `MAX()` returns the largest value.
- Works with numeric and text columns.
- Returns a single value.
- Can be combined with `WHERE`.

### Practice Questions

1. Find the smallest CustomerID.
2. Find the largest CustomerID.
3. Find the alphabetically first CustomerName.
4. Find the alphabetically last CustomerName.
5. Find the largest CustomerID for customers from Germany.

### Mini Challenge

Write one query to find the smallest CustomerID and another to find the largest CustomerID.