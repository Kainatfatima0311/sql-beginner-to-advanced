-- ======================================
-- SQL SELF JOIN
-- ======================================

-- Customers in the same city

SELECT
    A.CustomerName AS Customer1,
    B.CustomerName AS Customer2,
    A.City
FROM Customers AS A
INNER JOIN Customers AS B
ON A.City = B.City
WHERE A.CustomerID <> B.CustomerID;


-- Customers in the same country

SELECT
    A.CustomerName AS Customer1,
    B.CustomerName AS Customer2,
    A.Country
FROM Customers AS A
INNER JOIN Customers AS B
ON A.Country = B.Country
WHERE A.CustomerID <> B.CustomerID;


-- Sort by city

SELECT
    A.CustomerName AS Customer1,
    B.CustomerName AS Customer2,
    A.City
FROM Customers AS A
INNER JOIN Customers AS B
ON A.City = B.City
WHERE A.CustomerID <> B.CustomerID
ORDER BY A.City;