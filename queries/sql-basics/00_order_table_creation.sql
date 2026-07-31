CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    OrderDate TEXT,
    OrderAmount REAL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);