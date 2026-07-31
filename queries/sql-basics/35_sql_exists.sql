-- ======================================
-- SQL EXISTS
-- ======================================

-- Customers with orders

SELECT
    CustomerName
FROM Customers AS C
WHERE EXISTS (
    SELECT 1
    FROM Orders AS O
    WHERE O.CustomerID = C.CustomerID
);


-- Customers without orders

SELECT
    CustomerName
FROM Customers AS C
WHERE NOT EXISTS (
    SELECT 1
    FROM Orders AS O
    WHERE O.CustomerID = C.CustomerID
);


-- Countries with customers who have orders

SELECT
    Country
FROM Customers AS C
WHERE EXISTS (
    SELECT 1
    FROM Orders AS O
    WHERE O.CustomerID = C.CustomerID
);