## SQL LIKE

### Definition

The `LIKE` operator is used to search for a specified pattern in a text column.

### Wildcards

| Wildcard | Description |
|----------|-------------|
| `%` | Matches zero or more characters |
| `_` | Matches exactly one character |

### Syntax

```sql
SELECT column_name
FROM table_name
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
WHERE Country LIKE '%y';
```

```sql
SELECT *
FROM Customers
WHERE Country LIKE '_K';
```

### Key Points

- `LIKE` searches text patterns.
- `%` matches any number of characters.
- `_` matches exactly one character.
- Commonly used with the `WHERE` clause.
- Works only with text columns.

### Practice Questions

1. Find customers whose names start with `B`.
2. Find customers whose names end with `d`.
3. Find cities starting with `L`.
4. Find countries ending with `o`.
5. Find customer names containing `an`.

### Mini Challenge

Write queries to find:
- Customer names starting with `A`.
- Customer names containing `or`.
- Countries ending with `y`.