-- ======================================
-- SQL SELECT TOP (SQLite: LIMIT)
-- Customers Table
-- ======================================

-- Show first 5 customers

SELECT *
FROM Customers
LIMIT 5;


-- Show first 3 customer names

SELECT CustomerName
FROM Customers
LIMIT 3;


-- Show first 5 customers alphabetically

SELECT *
FROM Customers
ORDER BY CustomerName ASC
LIMIT 5;


-- Skip first 5 rows and show next 5

SELECT *
FROM Customers
LIMIT 5 OFFSET 5;