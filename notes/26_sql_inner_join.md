## SQL INNER JOIN

### Definition

The `INNER JOIN` keyword returns only the records that have matching values in both tables.

### Syntax

```sql
SELECT columns
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;
```

### Example

```sql
SELECT
    Customers.CustomerName,
    Orders.OrderID
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

### Example with Table Aliases

```sql
SELECT
    C.CustomerName,
    O.OrderID,
    O.OrderDate,
    O.OrderAmount
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID;
```

### Example with WHERE

```sql
SELECT
    C.CustomerName,
    O.OrderID,
    O.OrderAmount
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID
WHERE O.OrderAmount > 2500;
```

### Example with ORDER BY

```sql
SELECT
    C.CustomerName,
    O.OrderID,
    O.OrderAmount
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID
ORDER BY O.OrderAmount DESC;
```

### Key Points

- Returns only matching records from both tables.
- Uses the `ON` clause to define the relationship.
- `CustomerID` connects the `Customers` and `Orders` tables.
- Customers without orders are not included.
- One customer may appear multiple times if they have multiple orders.
- `JOIN` behaves like `INNER JOIN` by default.

### Practice Questions

1. Display all customers who have placed an order.
2. Display customer names with order IDs and order amounts.
3. Show matching orders with amounts greater than 2500.
4. Sort matching orders by amount in descending order.
5. Explain why a customer without an order does not appear.

### Mini Challenge

Display the customer name, country, order date, and order amount for all matching records. Sort the result by order amount from highest to lowest.