-- ======================================
-- SQL NULL Values
-- Customers Table
-- ======================================

-- Show customers whose City is NULL

SELECT *
FROM Customers
WHERE City IS NULL;


-- Show customers whose City is NOT NULL

SELECT *
FROM Customers
WHERE City IS NOT NULL;


-- Show customers whose ContactName is NULL

SELECT *
FROM Customers
WHERE ContactName IS NULL;


-- Show customers whose Country is NOT NULL

SELECT *
FROM Customers
WHERE Country IS NOT NULL;