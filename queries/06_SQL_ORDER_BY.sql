-- SQL ORDER BY Examples

-- Sort by Customer Name (Ascending)
SELECT *
FROM Customers
ORDER BY CustomerName;

-- Sort by Customer Name (Descending)
SELECT *
FROM Customers
ORDER BY CustomerName DESC;

-- Sort by CustomerID (Descending)
SELECT *
FROM Customers
ORDER BY CustomerID DESC;

-- Sort by Country
SELECT *
FROM Customers
ORDER BY Country;

-- Sort by Country then Customer Name
SELECT CustomerName, Country
FROM Customers
ORDER BY Country ASC, CustomerName ASC;