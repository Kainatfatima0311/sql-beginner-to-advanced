-- ======================================
-- SQL MIN() and MAX()
-- Customers Table
-- ======================================

-- Find the smallest CustomerID

SELECT MIN(CustomerID) AS SmallestID
FROM Customers;


-- Find the largest CustomerID

SELECT MAX(CustomerID) AS LargestID
FROM Customers;


-- Alphabetically first customer

SELECT MIN(CustomerName) AS FirstCustomer
FROM Customers;


-- Alphabetically last customer

SELECT MAX(CustomerName) AS LastCustomer
FROM Customers;


-- Largest CustomerID from Germany

SELECT MAX(CustomerID) AS LargestGermanCustomerID
FROM Customers
WHERE Country = 'Germany';