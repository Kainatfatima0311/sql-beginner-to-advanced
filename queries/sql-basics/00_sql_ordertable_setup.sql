-- ======================================
-- SQL JOIN Setup
-- Create and populate the Orders table
-- Run this file only once
-- ======================================

CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    OrderDate TEXT,
    OrderAmount REAL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderAmount)
VALUES
    (101, 1, '2026-07-20', 2500),
    (102, 2, '2026-07-21', 3200),
    (103, 1, '2026-07-22', 1800),
    (104, 3, '2026-07-23', 4500),
    (105, 4, '2026-07-24', 2900),
    (106, 3, '2026-07-25', 1500);

SELECT *
FROM Orders;