## SQL INSERT INTO

### Definition

The `INSERT INTO` statement is used to add new records (rows) into a table.

### Syntax

```sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```

### Examples

```sql
INSERT INTO Customers
(CustomerName, ContactName, City, Country)
VALUES
('Ali Traders','Ali','Karachi','Pakistan');
```

```sql
INSERT INTO Customers
(CustomerName, ContactName, City, Country)
VALUES
('ABC Store','Ahmed','Lahore','Pakistan'),
('Tech Hub','Bilal','Islamabad','Pakistan');
```

### Key Points

- Adds new rows into a table.
- Always specify column names whenever possible.
- Values must follow the same order as the columns.
- Text values use single quotes.
- Each statement ends with a semicolon.

### Practice Questions

1. Insert one customer from Lahore.
2. Insert one customer from Karachi.
3. Insert two customers in a single query.
4. Insert a customer using only CustomerName and Country.

### Mini Challenge

Insert three new customers into the Customers table using one INSERT statement.