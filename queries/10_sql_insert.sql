-- ======================================
-- SQL INSERT INTO
-- Customers Table
-- ======================================

-- Insert one customer

INSERT INTO Customers
(CustomerName, ContactName, City, Country)
VALUES
('Ali Traders', 'Ali', 'Karachi', 'Pakistan');


-- Insert another customer

INSERT INTO Customers
(CustomerName, ContactName, City, Country)
VALUES
('Tech House', 'Bilal', 'Lahore', 'Pakistan');


-- Insert multiple customers

INSERT INTO Customers
(CustomerName, ContactName, City, Country)
VALUES
('Future Store', 'Hamza', 'Islamabad', 'Pakistan'),
('Digital Point', 'Ayesha', 'Multan', 'Pakistan');


-- Insert using selected columns only

INSERT INTO Customers
(CustomerName, Country)
VALUES
('Smart Shop', 'Pakistan');