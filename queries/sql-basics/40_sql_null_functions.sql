-- ======================================
-- SQL NULL Functions
-- ======================================

-- Add Discount column (Run only once)

ALTER TABLE Orders
ADD COLUMN Discount REAL;


-- Sample Data (Run only once)

UPDATE Orders
SET Discount = 100
WHERE OrderID = 101;

UPDATE Orders
SET Discount = NULL
WHERE OrderID = 102;

UPDATE Orders
SET Discount = 50
WHERE OrderID = 103;

UPDATE Orders
SET Discount = NULL
WHERE OrderID = 104;

UPDATE Orders
SET Discount = 200
WHERE OrderID = 105;

UPDATE Orders
SET Discount = NULL
WHERE OrderID = 106;


-- ======================================
-- IFNULL Example
-- ======================================

SELECT
    OrderID,
    Discount,
    IFNULL(Discount, 0) AS FinalDiscount
FROM Orders;


-- ======================================
-- COALESCE Example
-- ======================================

SELECT
    OrderID,
    Discount,
    COALESCE(Discount, 0) AS FinalDiscount
FROM Orders;


-- ======================================
-- Price After Discount Example
-- ======================================

SELECT
    OrderID,
    OrderAmount,
    Discount,
    OrderAmount - IFNULL(Discount, 0) AS FinalAmount
FROM Orders;


-- Same Query Using COALESCE

SELECT
    OrderID,
    OrderAmount,
    Discount,
    OrderAmount - COALESCE(Discount, 0) AS FinalAmount
FROM Orders;