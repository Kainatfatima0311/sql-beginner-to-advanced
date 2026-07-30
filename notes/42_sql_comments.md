## SQL Comments

### Definition

Comments are notes added to SQL code. They are ignored by the database engine.

### Single-Line Comment

```sql
-- This is a comment
```

### Example

```sql
-- Display all customers

SELECT *
FROM Customers;
```

### Multi-Line Comment

```sql
/*****

This is a
multi-line comment

*****/
```

### Example

```sql
/*

Show all customers

*/

SELECT *
FROM Customers;
```

### Inline Comment

```sql
SELECT
CustomerName, -- Customer Name
Country
FROM Customers;
```

### Key Points

- Comments improve readability.
- Comments are ignored during execution.
- Use `--` for single-line comments.
- Use `/* ... */` for multiple lines.

### Practice Questions

1. Write a single-line comment.
2. Write a multi-line comment.
3. Add comments to a JOIN query.
4. Explain why comments are useful.
5. Comment out a query temporarily.

### Mini Challenge

Write a query that displays all customers and include meaningful comments.