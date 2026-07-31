## SQL INSERT INTO SELECT

### Definition

The `INSERT INTO SELECT` statement copies data from one table into another existing table.

### Syntax

```sql
INSERT INTO destination_table
SELECT *
FROM source_table;
```

### Copy Entire Table

```sql
INSERT INTO CustomerBackup
SELECT *
FROM Customers;
```

### Copy Selected Columns

```sql
INSERT INTO CustomerLocations
(
    CustomerName,
    Country
)
SELECT
    CustomerName,
    Country
FROM Customers;
```

### Copy Filtered Rows

```sql
INSERT INTO CustomerBackup
SELECT *
FROM Customers
WHERE Country = 'Mexico';
```

### Key Points

- Destination table must already exist.
- Number of columns must match.
- Data types should be compatible.
- Can copy all rows or filtered rows.

### Practice Questions

1. Copy all customers into a backup table.
2. Copy only names and countries.
3. Copy only Mexican customers.
4. Copy orders greater than 3000.
5. Explain the difference between `SELECT INTO` and `INSERT INTO SELECT`.

### Mini Challenge

Insert all high-value orders into an existing `LargeOrders` table.