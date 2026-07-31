CREATE INDEX idx_customer_name
ON Customers (CustomerName);

CREATE INDEX idx_customer
ON Customers (LastName, FirstName);

CREATE UNIQUE INDEX idx_email
ON Users (Email);

ALTER TABLE Customers
DROP INDEX idx_customer_name;

DROP INDEX Customers.idx_customer_name;