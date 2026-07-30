## SQL HAVING

### Definition

The `HAVING` clause is used to filter grouped data after the `GROUP BY` clause. It is commonly used with aggregate functions.

### Syntax

```sql
SELECT column_name, AGGREGATE_FUNCTION(column)
FROM table_name
GROUP BY column_name
HAVING condition;
```

### Examples

```sql
SELECT
    Country,
    COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY Country
HAVING COUNT(*) > 1;
```

```sql
SELECT
    CustomerID,
    SUM(OrderAmount) AS TotalAmount
FROM Orders
GROUP BY CustomerID
HAVING SUM(OrderAmount) > 4000;
```

```sql
SELECT
    CustomerID,
    AVG(OrderAmount) AS AverageAmount
FROM Orders
GROUP BY CustomerID
HAVING AVG(OrderAmount) > 2500;
```

```sql
SELECT
    C.Country,
    SUM(O.OrderAmount) AS TotalSales
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID
GROUP BY C.Country
HAVING SUM(O.OrderAmount) > 4000;
```

### Key Points

- Filters grouped data.
- Used after `GROUP BY`.
- Commonly used with aggregate functions.
- Different from `WHERE`, which filters individual rows.

### Practice Questions

1. Show countries with more than one customer.
2. Find customers whose total orders exceed 4000.
3. Find customers with an average order above 2500.
4. Show countries with total sales greater than 4000.
5. Explain the difference between `WHERE` and `HAVING`.

### Mini Challenge

Display countries that have more than one customer and sort the result by customer count in descending order.