-- ======================================
-- SQL CASE Expression
-- ======================================

-- Customer Region

SELECT
    CustomerName,
    Country,
    CASE
        WHEN Country = 'Germany' THEN 'Europe'
        WHEN Country = 'UK' THEN 'Europe'
        WHEN Country = 'Mexico' THEN 'North America'
        ELSE 'Other'
    END AS Region
FROM Customers;


-- Order Category

SELECT
    OrderID,
    OrderAmount,
    CASE
        WHEN OrderAmount >= 4000 THEN 'High'
        WHEN OrderAmount >= 2500 THEN 'Medium'
        ELSE 'Low'
    END AS OrderLevel
FROM Orders;


-- Custom Sort

SELECT
    CustomerName,
    Country
FROM Customers
ORDER BY
CASE
    WHEN Country = 'Germany' THEN 1
    WHEN Country = 'UK' THEN 2
    ELSE 3
END;


-- CASE with GROUP BY

SELECT
    CASE
        WHEN OrderAmount >= 3000 THEN 'Expensive'
        ELSE 'Affordable'
    END AS Category,
    COUNT(*) AS TotalOrders
FROM Orders
GROUP BY
CASE
    WHEN OrderAmount >= 3000 THEN 'Expensive'
    ELSE 'Affordable'
END;