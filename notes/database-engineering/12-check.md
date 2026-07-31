# SQL CHECK Constraint

## Definition

The `CHECK` constraint limits the values that can be inserted into a column.

It ensures that data satisfies a specified condition.

---

## Create Table Example

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Age INT CHECK (Age >= 18)
);
```

---

## Valid Insert

```sql
INSERT INTO Employees
VALUES
(1,'Ali',22);
```

---

## Invalid Insert

```sql
INSERT INTO Employees
VALUES
(2,'Ahmed',15);
```

---

## CHECK with Another Column

```sql
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    CHECK (Price > 0)
);
```

---

## Add CHECK Constraint (MySQL)

```sql
ALTER TABLE Employees
ADD CONSTRAINT CHK_Age
CHECK (Age >= 18);
```

---

## SQL Server Syntax

```sql
ALTER TABLE Employees
ADD CONSTRAINT CHK_Age
CHECK (Age >= 18);
```

---

## Key Points

- Restricts invalid values.
- Uses logical conditions.
- Can be added during table creation or later using `ALTER TABLE`.
- Helps maintain data integrity.
- MySQL 8.0.16 and later enforce `CHECK` constraints.