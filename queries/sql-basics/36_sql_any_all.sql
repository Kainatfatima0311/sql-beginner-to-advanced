-- ======================================
-- SQL ANY
-- ======================================

SELECT CustomerName
FROM Customers
WHERE CustomerID = ANY (
    SELECT CustomerID
    FROM Orders
    WHERE OrderAmount > 3000
);


-- ======================================
-- SQL ALL
-- ======================================

SELECT *
FROM Orders
WHERE OrderAmount >= ALL (
    SELECT OrderAmount
    FROM Orders
);