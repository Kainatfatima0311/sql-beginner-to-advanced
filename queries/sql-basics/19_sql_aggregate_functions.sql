-- ======================================
-- SQL Aggregate Functions
-- Customers Table
-- ======================================

-- Smallest Balance

SELECT MIN(Balance) AS MinimumBalance
FROM Customers;


-- Largest Balance

SELECT MAX(Balance) AS MaximumBalance
FROM Customers;


-- Total Customers

SELECT COUNT(*) AS TotalCustomers
FROM Customers;


-- Total Balance

SELECT SUM(Balance) AS TotalBalance
FROM Customers;


-- Average Balance

SELECT AVG(Balance) AS AverageBalance
FROM Customers;