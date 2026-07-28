-- ======================================
-- SQL COUNT()
-- Customers Table
-- ======================================

-- Count all customers

SELECT COUNT(*) AS TotalCustomers
FROM Customers;


-- Count customers with a City value

SELECT COUNT(City) AS CustomersWithCity
FROM Customers;


-- Count customers from Germany

SELECT COUNT(*) AS GermanCustomers
FROM Customers
WHERE Country = 'Germany';


-- Count unique countries

SELECT COUNT(DISTINCT Country) AS UniqueCountries
FROM Customers;


-- Count customers with ContactName

SELECT COUNT(ContactName) AS CustomersWithContact
FROM Customers;