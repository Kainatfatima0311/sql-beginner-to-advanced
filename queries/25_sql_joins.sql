-- ======================================
-- SQL JOIN Overview
-- Customers and Orders Tables
-- ======================================

-- Combine orders with customer information

SELECT
    Orders.OrderID,
    Customers.CustomerName,
    Orders.OrderDate,
    Orders.OrderAmount
FROM Orders
JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;


-- Same query using table aliases

SELECT
    O.OrderID,
    C.CustomerName,
    C.Country,
    O.OrderDate,
    O.OrderAmount
FROM Orders AS O
JOIN Customers AS C
ON O.CustomerID = C.CustomerID;