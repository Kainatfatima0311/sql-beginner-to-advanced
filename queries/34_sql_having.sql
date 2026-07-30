-- ======================================
-- SQL HAVING
-- ======================================

-- Countries with more than one customer

SELECT
    Country,
    COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY Country
HAVING COUNT(*) > 1;


-- Customers with total order amount greater than 4000

SELECT
    CustomerID,
    SUM(OrderAmount) AS TotalAmount
FROM Orders
GROUP BY CustomerID
HAVING SUM(OrderAmount) > 4000;


-- Customers with average order amount greater than 2500

SELECT
    CustomerID,
    AVG(OrderAmount) AS AverageAmount
FROM Orders
GROUP BY CustomerID
HAVING AVG(OrderAmount) > 2500;


-- Countries with total sales greater than 4000

SELECT
    C.Country,
    SUM(O.OrderAmount) AS TotalSales
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID
GROUP BY C.Country
HAVING SUM(O.OrderAmount) > 4000;