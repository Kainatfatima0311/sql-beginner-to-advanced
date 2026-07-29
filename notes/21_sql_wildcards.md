## SQL Wildcards

### Definition

Wildcards are special characters used with the `LIKE` operator to search for patterns in text.

### Wildcards

| Wildcard | Description |
|----------|-------------|
| `%` | Matches zero or more characters |
| `_` | Matches exactly one character |

### Syntax

```sql
SELECT *
FROM Customers
WHERE column_name LIKE 'pattern';
```

### Examples

```sql
SELECT *
FROM Customers
WHERE CustomerName LIKE 'A%';
```

```sql
SELECT *
FROM Customers
WHERE CustomerName LIKE '%or%';
```

```sql
SELECT *
FROM Customers
WHERE CustomerName LIKE '%n';
```

```sql
SELECT *
FROM Customers
WHERE Country LIKE '_K';
```

### Key Points

- `%` matches zero or more characters.
- `_` matches exactly one character.
- Wildcards are used with the `LIKE` operator.
- Useful for flexible text searching.

### Practice Questions

1. Find customer names starting with `B`.
2. Find customer names ending with `s`.
3. Find customer names containing `an`.
4. Find countries ending with `y`.
5. Find countries with exactly two letters.

### Mini Challenge

Write queries to:

- Find customer names starting with `A`.
- Find customer names ending with `n`.
- Find customer names containing `or`.
- Find countries with exactly two letters.