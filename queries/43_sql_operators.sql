-- ======================================
-- SQL Operators
-- ======================================

-- Arithmetic

SELECT
OrderAmount,
OrderAmount + 500 AS BonusAmount
FROM Orders;


-- Comparison

SELECT *
FROM Orders
WHERE OrderAmount >= 3000;


-- Logical

SELECT *
FROM Customers
WHERE Country='Mexico'
AND CustomerID > 2;


-- IN

SELECT *
FROM Customers
WHERE Country IN ('Germany','UK');


-- BETWEEN

SELECT *
FROM Orders
WHERE OrderAmount BETWEEN 2000 AND 3500;


-- LIKE

SELECT *
FROM Customers
WHERE CustomerName LIKE 'A%';


-- EXISTS

SELECT
CustomerName
FROM Customers AS C
WHERE EXISTS
(
SELECT 1
FROM Orders AS O
WHERE O.CustomerID=C.CustomerID
);