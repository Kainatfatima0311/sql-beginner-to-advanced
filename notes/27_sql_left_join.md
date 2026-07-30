## SQL LEFT JOIN

### Definition

The `LEFT JOIN` keyword returns all records from the left table and the matching records from the right table. If there is no match, `NULL` values are returned for the right table columns.

### Syntax

```sql
SELECT columns
FROM left_table
LEFT JOIN right_table
ON left_table.common_column = right_table.common_column;
```

### Examples

```sql
SELECT
    C.CustomerName,
    O.OrderID
FROM Customers AS C
LEFT JOIN Orders AS O
ON C.CustomerID = O.CustomerID;
```

```sql
SELECT
    C.CustomerName,
    C.Country,
    O.OrderAmount
FROM Customers AS C
LEFT JOIN Orders AS O
ON C.CustomerID = O.CustomerID;
```

```sql
SELECT
    C.CustomerName
FROM Customers AS C
LEFT JOIN Orders AS O
ON C.CustomerID = O.CustomerID
WHERE O.OrderID IS NULL;
```

### Key Points

- Returns all rows from the left table.
- Returns matching rows from the right table.
- Unmatched right table values become `NULL`.
- Useful for finding records without matches.

### Practice Questions

1. Show all customers with their order IDs.
2. Show customer names and order amounts.
3. Find customers without orders.
4. Sort customers by name.
5. Explain why `NULL` appears in the result.

### Mini Challenge

Write a query to display every customer with their country and order amount. Also identify customers who have never placed an order.