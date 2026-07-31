# SQL FOREIGN KEY Constraint

## Definition

A `FOREIGN KEY` is a field that links one table to another.

It creates a relationship between two tables and ensures referential integrity.

---

## Parent Table

```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);
```

---

## Child Table

```sql
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
);
```

---

## Valid Insert

```sql
INSERT INTO Customers
VALUES
(1,'Ali'),
(2,'Sara');

INSERT INTO Orders
VALUES
(101,1);
```

---

## Invalid Insert

```sql
INSERT INTO Orders
VALUES
(102,5);
```

---

## Add FOREIGN KEY (MySQL)

```sql
ALTER TABLE Orders
ADD CONSTRAINT FK_Customer
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);
```

---

## Key Points

- Creates relationships between tables.
- References the PRIMARY KEY of another table.
- Prevents invalid references.
- Maintains referential integrity.
- One parent record can have many child records.