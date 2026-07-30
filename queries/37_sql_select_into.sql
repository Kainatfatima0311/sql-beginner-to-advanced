-- ======================================
-- SQL SELECT INTO
-- ======================================

-- SELECT INTO is not supported by SQLite.
-- SQLite uses CREATE TABLE AS SELECT.


-- Create a complete backup of Customers

DROP TABLE IF EXISTS CustomersBackup;

CREATE TABLE CustomersBackup AS
SELECT *
FROM Customers;


-- Copy selected customer columns

DROP TABLE IF EXISTS CustomerLocations;

CREATE TABLE CustomerLocations AS
SELECT
    CustomerName,
    Country
FROM Customers;


-- Copy only customers from Mexico

DROP TABLE IF EXISTS MexicoCustomers;

CREATE TABLE MexicoCustomers AS
SELECT
    CustomerID,
    CustomerName,
    Country
FROM Customers
WHERE Country = 'Mexico';


-- Create an Orders backup

DROP TABLE IF EXISTS OrdersBackup;

CREATE TABLE OrdersBackup AS
SELECT *
FROM Orders;


-- Copy high-value orders

DROP TABLE IF EXISTS HighValueOrders;

CREATE TABLE HighValueOrders AS
SELECT
    OrderID,
    CustomerID,
    OrderDate,
    OrderAmount
FROM Orders
WHERE OrderAmount > 3000;


-- View copied data

SELECT *
FROM CustomersBackup;

SELECT *
FROM CustomerLocations;

SELECT *
FROM MexicoCustomers;

SELECT *
FROM HighValueOrders;