-- ======================================
-- SQL INSERT INTO SELECT
-- ======================================

-- Create destination tables (Run only once)

DROP TABLE IF EXISTS CustomerBackup;

CREATE TABLE CustomerBackup AS
SELECT *
FROM Customers
WHERE 1 = 0;


DROP TABLE IF EXISTS CustomerLocations;

CREATE TABLE CustomerLocations
(
    CustomerName TEXT,
    Country TEXT
);


DROP TABLE IF EXISTS HighValueOrders;

CREATE TABLE HighValueOrders
(
    OrderID INTEGER,
    CustomerID INTEGER,
    OrderDate TEXT,
    OrderAmount REAL
);


-- ======================================
-- Insert all customers
-- ======================================

INSERT INTO CustomerBackup
SELECT *
FROM Customers;


-- ======================================
-- Insert selected columns
-- ======================================

INSERT INTO CustomerLocations
(
    CustomerName,
    Country
)
SELECT
    CustomerName,
    Country
FROM Customers;


-- ======================================
-- Insert only Mexico customers
-- ======================================

INSERT INTO CustomerBackup
SELECT *
FROM Customers
WHERE Country = 'Mexico';


-- ======================================
-- Insert high-value orders
-- ======================================

INSERT INTO HighValueOrders
(
    OrderID,
    CustomerID,
    OrderDate,
    OrderAmount
)
SELECT
    OrderID,
    CustomerID,
    OrderDate,
    OrderAmount
FROM Orders
WHERE OrderAmount > 3000;


-- ======================================
-- View Results
-- ======================================

SELECT * FROM CustomerBackup;

SELECT * FROM CustomerLocations;

SELECT * FROM HighValueOrders;