-- ======================================
-- SQL Aliases (AS)
-- Customers Table
-- ======================================

-- Column Alias

SELECT CustomerName AS Customer
FROM Customers;


-- Multiple Column Aliases

SELECT
    CustomerName AS Customer,
    Country AS Nation,
    Balance AS AccountBalance
FROM Customers;


-- Table Alias

SELECT C.CustomerName, C.Country
FROM Customers AS C;


-- Alias with Aggregate Function

SELECT SUM(Balance) AS TotalBalance
FROM Customers;


-- Alias with COUNT()

SELECT COUNT(*) AS TotalCustomers
FROM Customers;