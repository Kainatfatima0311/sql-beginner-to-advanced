## SQL GROUP BY

### Definition

The `GROUP BY` clause groups rows that have the same values into summary rows. It is commonly used with aggregate functions.

### Syntax

```sql
SELECT column_name, AGGREGATE_FUNCTION(column)
FROM table_name
GROUP BY column_name;
```

### Examples

```sql
SELECT
    Country,
    COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY Country;
```

```sql
SELECT
    CustomerID,
    SUM(OrderAmount) AS TotalAmount
FROM Orders
GROUP BY CustomerID;
```

```sql
SELECT
    CustomerID,
    AVG(OrderAmount) AS AverageAmount
FROM Orders
GROUP BY CustomerID;
```

```sql
SELECT
    Country,
    COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY Country
ORDER BY TotalCustomers DESC;
```

```sql
SELECT
    C.Country,
    SUM(O.OrderAmount) AS TotalSales
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID
GROUP BY C.Country;
```

### Key Points

- Groups rows with the same values.
- Commonly used with `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.
- `GROUP BY` creates groups.
- `ORDER BY` sorts the result.

### Practice Questions

1. Count customers in each country.
2. Find total order amount for each customer.
3. Find average order amount for each customer.
4. Calculate total sales by country.
5. Sort countries by number of customers.

### Mini Challenge

Display each country with the total number of customers and sort the result in descending order.