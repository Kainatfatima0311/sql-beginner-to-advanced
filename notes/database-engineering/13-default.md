# SQL DEFAULT Constraint

## Definition

The `DEFAULT` constraint assigns a default value to a column when no value is provided during an `INSERT` operation.

---

## Create Table Example

```sql
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Status VARCHAR(20) DEFAULT 'Pending'
);
```

---

## Insert Without Status

```sql
INSERT INTO Orders (OrderID, CustomerName)
VALUES (1, 'Ali');
```

Result:

```text
Status = Pending
```

---

## Insert With Status

```sql
INSERT INTO Orders
VALUES
(2,'Sara','Delivered');
```

Result:

```text
Status = Delivered
```

---

## DEFAULT with CURRENT_DATE

```sql
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE DEFAULT (CURRENT_DATE)
);
```

---

## Add DEFAULT Constraint (MySQL)

```sql
ALTER TABLE Orders
ALTER Status SET DEFAULT 'Pending';
```

---

## SQL Server Syntax

```sql
ALTER TABLE Orders
ADD CONSTRAINT DF_Status
DEFAULT 'Pending' FOR Status;
```

---

## Key Points

- Assigns a default value automatically.
- Used when no value is provided.
- Reduces NULL values.
- Can use fixed values or functions such as `CURRENT_DATE`.
- Can be added while creating or altering a table.