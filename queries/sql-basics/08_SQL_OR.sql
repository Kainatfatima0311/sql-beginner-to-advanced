-- SQL OR Examples

-- Germany or UK
SELECT *
FROM Customers
WHERE Country = 'Germany'
OR Country = 'UK';

-- CustomerID 1 or 5
SELECT *
FROM Customers
WHERE CustomerID = 1
OR CustomerID = 5;

-- Germany or Sweden
SELECT CustomerName, Country
FROM Customers
WHERE Country = 'Germany'
OR Country = 'Sweden';

-- Berlin or London
SELECT CustomerName, City
FROM Customers
WHERE City = 'Berlin'
OR City = 'London';