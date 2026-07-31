CREATE VIEW CustomerView AS
SELECT CustomerName, City
FROM Customers;

SELECT *
FROM CustomerView;

CREATE OR REPLACE VIEW CustomerView AS
SELECT CustomerName, City, Email
FROM Customers;

DROP VIEW CustomerView;