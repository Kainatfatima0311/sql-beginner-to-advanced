## SQL Stored Procedures

### Definition

A Stored Procedure is a saved collection of SQL statements that can be executed whenever needed.

### SQL Server Syntax

```sql
CREATE PROCEDURE ProcedureName
AS
BEGIN

SQL Statements

END;
```

### Execute Procedure

```sql
EXEC ProcedureName;
```

### Example

```sql
CREATE PROCEDURE GetCustomers
AS
BEGIN

SELECT *
FROM Customers;

END;
```

### Procedure with WHERE

```sql
CREATE PROCEDURE GetMexicoCustomers
AS
BEGIN

SELECT *
FROM Customers
WHERE Country='Mexico';

END;
```

### Procedure with Parameter

```sql
CREATE PROCEDURE GetCustomersByCountry

@Country VARCHAR(50)

AS
BEGIN

SELECT *
FROM Customers
WHERE Country=@Country;

END;
```

### SQLite Alternative

SQLite does not support Stored Procedures.

Use reusable SQL queries or application code instead.

### Key Points

- Stores reusable SQL code.
- Improves maintainability.
- Can accept parameters.
- SQLite does not support Stored Procedures.

### Practice Questions

1. Create a procedure to display all customers.
2. Create a procedure to display Mexico customers.
3. Create a procedure that accepts a country parameter.
4. Explain why SQLite does not support procedures.
5. List the benefits of Stored Procedures.

### Mini Challenge

Write a stored procedure that displays orders greater than a specified amount.