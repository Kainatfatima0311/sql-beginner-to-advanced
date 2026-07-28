-- SQL AND Examples

-- Customers from Mexico and México D.F.
SELECT *
FROM Customers
WHERE Country = 'Mexico'
AND City = 'México D.F.';

-- Germany customer with ID 1
SELECT CustomerName, Country
FROM Customers
WHERE Country = 'Germany'
AND CustomerID = 1;

-- CustomerID between 3 and 4
SELECT *
FROM Customers
WHERE CustomerID > 2
AND CustomerID < 5;

-- Germany customer living in Berlin
SELECT CustomerName, City
FROM Customers
WHERE Country = 'Germany'
AND City = 'Berlin';