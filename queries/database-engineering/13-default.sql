CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Status VARCHAR(20) DEFAULT 'Pending'
);

INSERT INTO Orders (OrderID, CustomerName)
VALUES (1, 'Ali');

INSERT INTO Orders
VALUES
(2,'Sara','Delivered');

CREATE TABLE OrderHistory (
    OrderID INT PRIMARY KEY,
    OrderDate DATE DEFAULT (CURRENT_DATE)
);

ALTER TABLE Orders
ALTER Status SET DEFAULT 'Pending';

ALTER TABLE Orders
ADD CONSTRAINT DF_Status
DEFAULT 'Pending' FOR Status;