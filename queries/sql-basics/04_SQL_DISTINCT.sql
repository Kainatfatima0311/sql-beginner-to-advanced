-- SQL DISTINCT Examples

-- Display all cities (duplicates allowed)
SELECT City
FROM Customers;

-- Display only unique cities
SELECT DISTINCT City
FROM Customers;

-- Display unique countries
SELECT DISTINCT Country
FROM Customers;

-- Display unique City and Country combinations
SELECT DISTINCT City, Country
FROM Customers;

-- Count unique countries
SELECT COUNT(DISTINCT Country)
FROM Customers;