## SQL SELECT

### What is SELECT?

- SELECT is used to retrieve data from a database table.
- It allows us to fetch one or more columns.

### Syntax

```sql
SELECT column_name
FROM table_name;
```

### Select All Columns

```sql
SELECT *
FROM Customers;
```

- `*` means all columns.

### Select Specific Columns

```sql
SELECT CustomerName
FROM Customers;
```

### Select Multiple Columns

```sql
SELECT CustomerName,
       City,
       Country
FROM Customers;
```

### Best Practice

- Use `SELECT *` only for learning or testing.
- In real projects, select only the columns you need.