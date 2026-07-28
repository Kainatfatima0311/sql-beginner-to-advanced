-- ======================================
-- SQL AVG()
-- W3Schools Products Example
-- ======================================

-- Find average product price

SELECT AVG(Price) AS AveragePrice
FROM Products;


-- Average price for CategoryID = 1

SELECT AVG(Price) AS AveragePrice
FROM Products
WHERE CategoryID = 1;


-- Average price for CategoryID = 2

SELECT AVG(Price) AS AveragePrice
FROM Products
WHERE CategoryID = 2;