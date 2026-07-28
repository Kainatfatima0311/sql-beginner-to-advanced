-- SQL WHERE Clause Examples

-- Customers from Germany
SELECT *
FROM Customers
WHERE Country = 'Germany';

-- Customers from London
SELECT CustomerName, City
FROM Customers
WHERE City = 'London';

-- CustomerID greater than 3
SELECT *
FROM Customers
WHERE CustomerID > 3;

-- Customers except Mexico
SELECT *
FROM Customers
WHERE Country <> 'Mexico';

-- AND operator
SELECT *
FROM Customers
WHERE Country = 'Mexico'
AND City = 'México D.F.';

-- OR operator
SELECT *
FROM Customers
WHERE Country = 'Germany'
OR Country = 'UK';

-- NOT operator
SELECT *
FROM Customers
WHERE NOT Country = 'Mexico';