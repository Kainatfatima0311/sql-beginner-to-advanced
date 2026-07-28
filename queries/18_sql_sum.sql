-- ======================================
-- SQL SUM()
-- Customers Table
-- ======================================

-- Total balance of all customers

SELECT SUM(Balance) AS TotalBalance
FROM Customers;


-- Total balance of Germany customers

SELECT SUM(Balance) AS GermanyBalance
FROM Customers
WHERE Country = 'Germany';


-- Total balance of UK customers

SELECT SUM(Balance) AS UKBalance
FROM Customers
WHERE Country = 'UK';


-- Sum of unique balances

SELECT SUM(DISTINCT Balance) AS UniqueBalanceTotal
FROM Customers;