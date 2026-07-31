## SQL NULL Values

### Definition

`NULL` represents a missing or unknown value in a database column. It is different from `0` and an empty string (`''`).

### Syntax

```sql
SELECT *
FROM Customers
WHERE column_name IS NULL;
```

```sql
SELECT *
FROM Customers
WHERE column_name IS NOT NULL;
```

### Examples

```sql
SELECT *
FROM Customers
WHERE City IS NULL;
```

```sql
SELECT *
FROM Customers
WHERE City IS NOT NULL;
```

### Key Points

- `NULL` means no value.
- `NULL` is not equal to `0`.
- `NULL` is not an empty string.
- Use `IS NULL` to find missing values.
- Use `IS NOT NULL` to find existing values.
- Never compare `NULL` using `=` or `!=`.

### Practice Questions

1. Find customers whose City is NULL.
2. Find customers whose City is NOT NULL.
3. Find customers whose ContactName is NULL.
4. Find customers whose Country is NOT NULL.

### Mini Challenge

Write two queries:
- Display customers with missing City.
- Display customers whose ContactName is available.