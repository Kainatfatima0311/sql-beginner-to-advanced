## SQL SELF JOIN

### Definition

A `SELF JOIN` joins a table with itself by using table aliases.

### Syntax

```sql
SELECT columns
FROM table_name AS A
INNER JOIN table_name AS B
ON A.column = B.column;
```

### Example

```sql
SELECT
    A.CustomerName AS Customer1,
    B.CustomerName AS Customer2,
    A.City
FROM Customers AS A
INNER JOIN Customers AS B
ON A.City = B.City
WHERE A.CustomerID <> B.CustomerID;
```

### Key Points

- Uses only one table.
- Requires table aliases.
- Compares rows within the same table.
- Commonly used for hierarchical and comparison queries.

### Practice Questions

1. Find customers living in the same city.
2. Find customers from the same country.
3. Explain why aliases are required.
4. Why is `WHERE A.CustomerID <> B.CustomerID` used?
5. Sort results by city.

### Mini Challenge

Display pairs of customers who belong to the same country without matching a customer with themselves.