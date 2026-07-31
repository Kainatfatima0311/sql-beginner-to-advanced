-- ======================================
-- SQL RIGHT JOIN (SQLite Alternative)
-- ======================================

-- SQLite equivalent of RIGHT JOIN

SELECT
    C.CustomerName,
    O.OrderID,
    O.OrderDate,
    O.OrderAmount
FROM Orders AS O
LEFT JOIN Customers AS C
ON O.CustomerID = C.CustomerID;


-- Display all orders with customer country

SELECT
    C.CustomerName,
    C.Country,
    O.OrderAmount
FROM Orders AS O
LEFT JOIN Customers AS C
ON O.CustomerID = C.CustomerID;