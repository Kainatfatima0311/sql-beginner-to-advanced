-- ======================================
-- SQL Comments
-- ======================================


-- Display all customers

SELECT *
FROM Customers;


-- Display only Mexico customers

SELECT *
FROM Customers
WHERE Country='Mexico';


-- Display all orders

SELECT *
FROM Orders;


/*

Count customers
by country

*/

SELECT
Country,
COUNT(*) AS TotalCustomers

FROM Customers

GROUP BY Country;


-- Customer orders

SELECT
C.CustomerName,
O.OrderAmount

FROM Customers AS C

INNER JOIN Orders AS O

ON C.CustomerID=O.CustomerID;


-- Inline Comment Example

SELECT
CustomerName, -- Customer Name
Country
FROM Customers;