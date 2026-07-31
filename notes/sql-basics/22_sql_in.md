## SQL IN Operator

### Definition

The `IN` operator allows you to specify multiple values in a `WHERE` clause.

### Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name IN (value1, value2, value3);
```

### Examples

```sql
SELECT *
FROM Customers
WHERE Country IN ('Germany', 'Mexico', 'UK');
```

```sql
SELECT CustomerName, Country
FROM Customers
WHERE Country IN ('Germany', 'Sweden');
```

```sql
SELECT *
FROM Customers
WHERE Country NOT IN ('Germany', 'UK');
```

### Key Points

- `IN` checks multiple values.
- `NOT IN` excludes multiple values.
- `IN` is a shorter alternative to multiple `OR` conditions.
- Improves query readability.

### Practice Questions

1. Find customers from Germany or France.
2. Find customers from Mexico, UK, or Spain.
3. Find customers not from Germany.
4. Find customers not from Germany or Mexico.
5. Rewrite an `OR` query using `IN`.

### Mini Challenge

Write queries to:

- Show customers from Germany, UK, and Sweden.
- Show customers not from Germany and UK.