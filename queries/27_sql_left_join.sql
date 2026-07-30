-- ======================================
-- SQL LEFT JOIN
-- Customers and Orders Tables
-- ======================================

-- Show all customers with their orders

SELECT
    C.CustomerName,
    O.OrderID
FROM Customers AS C
LEFT JOIN Orders AS O
ON C.CustomerID = O.CustomerID;


-- Customer with country and order amount

SELECT
    C.CustomerName,
    C.Country,
    O.OrderAmount
FROM Customers AS C
LEFT JOIN Orders AS O
ON C.CustomerID = O.CustomerID;


-- Customers without any orders

SELECT
    C.CustomerName
FROM Customers AS C
LEFT JOIN Orders AS O
ON C.CustomerID = O.CustomerID
WHERE O.OrderID IS NULL;


-- Sort customers alphabetically

SELECT
    C.CustomerName,
    O.OrderAmount
FROM Customers AS C
LEFT JOIN Orders AS O
ON C.CustomerID = O.CustomerID
ORDER BY C.CustomerName;