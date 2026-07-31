-- ======================================
-- SQL Stored Procedures
-- ======================================

-- SQL Server Example

CREATE PROCEDURE GetCustomers
AS
BEGIN

SELECT *
FROM Customers;

END;


EXEC GetCustomers;


-- Procedure with WHERE

CREATE PROCEDURE GetMexicoCustomers
AS
BEGIN

SELECT *
FROM Customers
WHERE Country='Mexico';

END;


EXEC GetMexicoCustomers;


-- Procedure with Parameter

CREATE PROCEDURE GetCustomersByCountry

@Country VARCHAR(50)

AS
BEGIN

SELECT *
FROM Customers
WHERE Country=@Country;

END;


EXEC GetCustomersByCountry
'Germany';


-- Orders Above Amount

CREATE PROCEDURE GetLargeOrders

@Amount REAL

AS
BEGIN

SELECT *
FROM Orders
WHERE OrderAmount>@Amount;

END;


EXEC GetLargeOrders
3000;