-- ======================================
-- SQL BETWEEN Operator
-- Customers Table
-- ======================================

-- Balance between 5000 and 10000

SELECT CustomerName, Balance
FROM Customers
WHERE Balance BETWEEN 5000 AND 10000;


-- Balance outside the range

SELECT CustomerName, Balance
FROM Customers
WHERE Balance NOT BETWEEN 5000 AND 10000;


-- Customer names alphabetically between A and C

SELECT CustomerName
FROM Customers
WHERE CustomerName BETWEEN 'A' AND 'C';


-- BETWEEN with ORDER BY

SELECT CustomerName, Balance
FROM Customers
WHERE Balance BETWEEN 5000 AND 10000
ORDER BY Balance DESC;