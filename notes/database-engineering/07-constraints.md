# SQL Constraints

## Definition

Constraints are rules applied to table columns to ensure the accuracy, validity, and integrity of data.

---

## Types of Constraints

### NOT NULL

Prevents NULL values.

```sql
Name VARCHAR(100) NOT NULL
```

---

### UNIQUE

Ensures all values are unique.

```sql
Email VARCHAR(100) UNIQUE
```

---

### PRIMARY KEY

Uniquely identifies each record.

```sql
StudentID INT PRIMARY KEY
```

- Unique
- Not Null

---

### FOREIGN KEY

Creates a relationship between two tables.

```sql
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID)
```

---

### CHECK

Restricts values using a condition.

```sql
CHECK (Age >= 18)
```

---

### DEFAULT

Assigns a default value.

```sql
Status VARCHAR(20) DEFAULT 'Pending'
```

---

### INDEX

Improves query performance.

```sql
CREATE INDEX idx_name
ON Customers(Name);
```

---

### AUTO_INCREMENT (MySQL)

Automatically generates sequential values.

```sql
StudentID INT AUTO_INCREMENT PRIMARY KEY
```

---

## Key Points

- Improves data integrity.
- Prevents invalid data.
- Creates relationships between tables.
- Reduces duplicate and missing values.
- Makes searching faster using indexes.