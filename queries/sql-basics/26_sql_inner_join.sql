-- ======================================
-- SQL INNER JOIN
-- Customers and Orders Tables
-- ======================================

-- Show customer names with their order IDs

SELECT
    C.CustomerName,
    O.OrderID
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID;


-- Show complete matching order details

SELECT
    C.CustomerName,
    C.Country,
    O.OrderID,
    O.OrderDate,
    O.OrderAmount
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID;


-- Show matching orders above 2500

SELECT
    C.CustomerName,
    O.OrderID,
    O.OrderAmount
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID
WHERE O.OrderAmount > 2500;


-- Sort matching orders by highest amount

SELECT
    C.CustomerName,
    O.OrderID,
    O.OrderAmount
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID
ORDER BY O.OrderAmount DESC;