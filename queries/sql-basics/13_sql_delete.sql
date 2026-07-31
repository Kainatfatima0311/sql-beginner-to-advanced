-- ======================================
-- SQL DELETE
-- Customers Table
-- ======================================

-- Step 1: Check the record before deleting

SELECT *
FROM Customers
WHERE CustomerID = 3;


-- Step 2: Delete one record

DELETE FROM Customers
WHERE CustomerID = 3;


-- Step 3: Verify the deletion

SELECT *
FROM Customers
WHERE CustomerID = 3;


-- Example only:
-- NEVER run this unless you want to remove ALL rows.

-- DELETE FROM Customers;