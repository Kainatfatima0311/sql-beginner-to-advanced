-- SQL NOT Examples

-- Customers except Mexico
SELECT *
FROM Customers
WHERE NOT Country = 'Mexico';

-- CustomerID except 3
SELECT *
FROM Customers
WHERE NOT CustomerID = 3;

-- Customers not living in London
SELECT CustomerName, City
FROM Customers
WHERE NOT City = 'London';

-- CustomerID less than or equal to 3
SELECT *
FROM Customers
WHERE NOT CustomerID > 3;