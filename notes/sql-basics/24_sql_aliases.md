## SQL Aliases (AS)

### Definition

An alias gives a temporary name to a column or table for the current query.

### Syntax

```sql
SELECT column_name AS alias_name
FROM table_name;
```

### Examples

```sql
SELECT CustomerName AS Customer
FROM Customers;
```

```sql
SELECT
    CustomerName AS Customer,
    Country AS Nation,
    Balance AS AccountBalance
FROM Customers;
```

```sql
SELECT C.CustomerName, C.Country
FROM Customers AS C;
```

```sql
SELECT SUM(Balance) AS TotalBalance
FROM Customers;
```

### Key Points

- Alias is temporary.
- Does not change the original table or column name.
- `AS` is optional.
- Improves query readability.
- Commonly used with aggregate functions and joins.

### Practice Questions

1. Rename `CustomerName` to `Customer`.
2. Rename `Country` to `Nation`.
3. Rename `Balance` to `AccountBalance`.
4. Use a table alias `C` for `Customers`.
5. Give an alias to `COUNT(*)`.

### Mini Challenge

Write queries to:

- Rename three columns using aliases.
- Use a table alias.
- Give an alias to `SUM(Balance)`.