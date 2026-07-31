-- ======================================
-- SQL FULL OUTER JOIN (SQLite Alternative)
-- ======================================

SELECT
    C.CustomerName,
    O.OrderID,
    O.OrderDate,
    O.OrderAmount
FROM Customers AS C
LEFT JOIN Orders AS O
ON C.CustomerID = O.CustomerID

UNION

SELECT
    C.CustomerName,
    O.OrderID,
    O.OrderDate,
    O.OrderAmount
FROM Orders AS O
LEFT JOIN Customers AS C
ON O.CustomerID = C.CustomerID
WHERE C.CustomerID IS NULL;