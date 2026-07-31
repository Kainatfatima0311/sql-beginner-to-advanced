## SQL JOINs

### Definition

A SQL JOIN combines related records from two or more tables using a common column.

### Related Tables

The `Customers` and `Orders` tables are connected through the `CustomerID` column.

### Syntax

```sql
SELECT columns
FROM table1
JOIN table2
ON table1.common_column = table2.common_column;
```

### Example

```sql
SELECT
    Orders.OrderID,
    Customers.CustomerName,
    Orders.OrderDate,
    Orders.OrderAmount
FROM Orders
JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;
```

### Example with Table Aliases

```sql
SELECT
    O.OrderID,
    C.CustomerName,
    O.OrderDate,
    O.OrderAmount
FROM Orders AS O
JOIN Customers AS C
ON O.CustomerID = C.CustomerID;
```

### Common JOIN Types

| JOIN Type | Description |
|---|---|
| `INNER JOIN` | Returns matching records from both tables |
| `LEFT JOIN` | Returns all records from the left table |
| `RIGHT JOIN` | Returns all records from the right table |
| `FULL OUTER JOIN` | Returns all records from both tables |

### Key Points

- A JOIN combines data from multiple tables.
- Tables must have a related column.
- `CustomerID` connects the `Customers` and `Orders` tables.
- The `ON` clause defines the relationship.
- Table aliases make JOIN queries shorter and clearer.

### Practice Questions

1. Display every order with its customer name.
2. Display the order ID, customer name, and order amount.
3. Rewrite the JOIN query using table aliases.
4. Explain the purpose of the `ON` clause.
5. Identify the common column between `Customers` and `Orders`.

### Mini Challenge

Display the customer name, country, order date, and order amount for every matching order.