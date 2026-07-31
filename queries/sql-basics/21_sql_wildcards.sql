-- ======================================
-- SQL Wildcards
-- Customers Table
-- ======================================

-- Starts with A

SELECT *
FROM Customers
WHERE CustomerName LIKE 'A%';


-- Ends with n

SELECT *
FROM Customers
WHERE CustomerName LIKE '%n';


-- Contains "or"

SELECT *
FROM Customers
WHERE CustomerName LIKE '%or%';


-- Starts with M (City)

SELECT *
FROM Customers
WHERE City LIKE 'M%';


-- Ends with y (Country)

SELECT *
FROM Customers
WHERE Country LIKE '%y';


-- Exactly two-letter country ending with K

SELECT *
FROM Customers
WHERE Country LIKE '_K';


-- Starts with A and ends with o

SELECT *
FROM Customers
WHERE CustomerName LIKE 'A%o';