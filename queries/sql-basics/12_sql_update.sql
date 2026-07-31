-- ======================================
-- SQL UPDATE
-- Customers Table
-- ======================================

-- Check the record before updating

SELECT *
FROM Customers
WHERE CustomerID = 1;


-- Update one column

UPDATE Customers
SET City = 'Lahore'
WHERE CustomerID = 1;


-- Verify the update

SELECT *
FROM Customers
WHERE CustomerID = 1;


-- Update multiple columns

UPDATE Customers
SET
City = 'Karachi',
Country = 'Pakistan'
WHERE CustomerID = 2;


-- Verify the second update

SELECT *
FROM Customers
WHERE CustomerID = 2;


-- Example only:
-- NEVER run this unless you want to update every record.

-- UPDATE Customers
-- SET Country = 'Pakistan';