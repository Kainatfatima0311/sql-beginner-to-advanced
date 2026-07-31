## SQL SELECT INTO

### Definition

The `SELECT INTO` statement creates a new table and copies selected data from an existing table into it.

### Standard Syntax

```sql
SELECT column1, column2
INTO new_table
FROM existing_table
WHERE condition;
```

### Complete Table Copy

```sql
SELECT *
INTO CustomersBackup
FROM Customers;
```

### Copy Selected Columns

```sql
SELECT
    CustomerName,
    Country
INTO CustomerLocations
FROM Customers;
```

### Copy Filtered Records

```sql
SELECT
    CustomerID,
    CustomerName,
    Country
INTO MexicoCustomers
FROM Customers
WHERE Country = 'Mexico';
```

### Create an Empty Table

```sql
SELECT *
INTO EmptyCustomers
FROM Customers
WHERE 1 = 0;
```

## SQLite Alternative

SQLite does not support the `SELECT INTO` syntax.

Use `CREATE TABLE AS SELECT` instead.

### SQLite Syntax

```sql
CREATE TABLE new_table AS
SELECT columns
FROM existing_table
WHERE condition;
```

### SQLite Examples

```sql
CREATE TABLE CustomersBackup AS
SELECT *
FROM Customers;
```

```sql
CREATE TABLE CustomerLocations AS
SELECT
    CustomerName,
    Country
FROM Customers;
```

```sql
CREATE TABLE HighValueOrders AS
SELECT *
FROM Orders
WHERE OrderAmount > 3000;
```

### Key Points

- `SELECT INTO` creates a new table.
- It copies data from an existing table.
- It can copy all columns or selected columns.
- A `WHERE` condition can control which rows are copied.
- SQLite uses `CREATE TABLE AS SELECT`.
- Constraints, indexes, and triggers are not normally copied automatically.

### Practice Questions

1. Create a backup copy of the `Customers` table.
2. Create a table containing only customer names and countries.
3. Create a table containing only customers from Mexico.
4. Create a table containing orders above 3000.
5. Explain the difference between `SELECT INTO` and `INSERT INTO SELECT`.

### Mini Challenge

Create a table named `LargeOrders` containing orders whose amount is greater than 2500.