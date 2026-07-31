-- ======================================
-- SQL LIKE
-- Customers Table
-- ======================================

-- Customer names starting with A

SELECT *
FROM Customers
WHERE CustomerName LIKE 'A%';


-- Customer names ending with n

SELECT *
FROM Customers
WHERE CustomerName LIKE '%n';


-- Customer names containing "or"

SELECT *
FROM Customers
WHERE CustomerName LIKE '%or%';


-- Cities starting with M

SELECT *
FROM Customers
WHERE City LIKE 'M%';


-- Countries ending with y

SELECT *
FROM Customers
WHERE Country LIKE '%y';


-- Countries with exactly two letters ending in K

SELECT *
FROM Customers
WHERE Country LIKE '_K';