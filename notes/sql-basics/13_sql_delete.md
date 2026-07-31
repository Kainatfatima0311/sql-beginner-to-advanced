## SQL DELETE

### Definition

The `DELETE` statement is used to remove existing rows from a table.

### Syntax

```sql
DELETE FROM table_name
WHERE condition;
```

### Examples

```sql
DELETE FROM Customers
WHERE CustomerID = 2;
```

### Key Points

- Deletes existing rows from a table.
- Always use a `WHERE` clause unless you intentionally want to delete all rows.
- `DELETE` removes data but keeps the table structure.
- Verify the records before and after deleting.

### Practice Questions

1. Delete CustomerID = 3.
2. Delete CustomerID = 5.
3. Verify that the deleted records are gone.
4. What happens if the `WHERE` clause is omitted?

### Mini Challenge

Delete one customer using `CustomerID`, then verify the result using `SELECT`.