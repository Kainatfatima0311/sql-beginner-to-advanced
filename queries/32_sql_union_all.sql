-- ======================================
-- SQL UNION ALL
-- ======================================

-- Customer names and countries

SELECT CustomerName AS Information
FROM Customers

UNION ALL

SELECT Country
FROM Customers;


-- Customer names and order dates

SELECT CustomerName AS Data
FROM Customers

UNION ALL

SELECT OrderDate
FROM Orders;


-- Sort combined results

SELECT CustomerName AS Data
FROM Customers

UNION ALL

SELECT Country
FROM Customers

ORDER BY Data;