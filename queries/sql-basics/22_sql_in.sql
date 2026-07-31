-- ======================================
-- SQL IN Operator
-- Customers Table
-- ======================================

-- Customers from Germany, Mexico, or UK

SELECT *
FROM Customers
WHERE Country IN ('Germany', 'Mexico', 'UK');


-- Customers from Germany or Sweden

SELECT CustomerName, Country
FROM Customers
WHERE Country IN ('Germany', 'Sweden');


-- Exclude Germany and UK

SELECT *
FROM Customers
WHERE Country NOT IN ('Germany', 'UK');


-- Exclude Mexico and Sweden

SELECT CustomerName, Country
FROM Customers
WHERE Country NOT IN ('Mexico', 'Sweden');