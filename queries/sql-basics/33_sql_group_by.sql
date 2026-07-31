-- ======================================
-- SQL GROUP BY
-- ======================================

-- Count customers in each country

SELECT
    Country,
    COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY Country;


-- Total order amount for each customer

SELECT
    CustomerID,
    SUM(OrderAmount) AS TotalAmount
FROM Orders
GROUP BY CustomerID;


-- Average order amount

SELECT
    CustomerID,
    AVG(OrderAmount) AS AverageAmount
FROM Orders
GROUP BY CustomerID;


-- Sort by total customers

SELECT
    Country,
    COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY Country
ORDER BY TotalCustomers DESC;


-- Total sales by country

SELECT
    C.Country,
    SUM(O.OrderAmount) AS TotalSales
FROM Customers AS C
INNER JOIN Orders AS O
ON C.CustomerID = O.CustomerID
GROUP BY C.Country;