## SQL UPDATE

### Definition

The `UPDATE` statement is used to modify existing records in a table.

### Syntax

```sql
UPDATE table_name
SET column1 = value1
WHERE condition;
```

### Examples

```sql
UPDATE Customers
SET City = 'Lahore'
WHERE CustomerID = 1;
```

```sql
UPDATE Customers
SET
City = 'Karachi',
Country = 'Pakistan'
WHERE CustomerID = 2;
```

### Key Points

- Updates existing records.
- Use `SET` to assign new values.
- Always use a `WHERE` clause unless you intentionally want to update every row.
- You can update one or multiple columns in a single statement.
- Verify records with `SELECT` before and after updating.

### Practice Questions

1. Update the City of CustomerID 1.
2. Update the Country of CustomerID 2.
3. Update both City and Country of CustomerID 3.
4. What happens if the WHERE clause is omitted?

### Mini Challenge

Update one customer's City and Country in a single query, then verify the changes using `SELECT`.