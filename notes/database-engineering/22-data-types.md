# SQL Data Types

## Definition

A data type defines the kind of value that a column can store.

---

## String Data Types

### CHAR

Stores fixed-length text.

```sql
CHAR(10)
```

### VARCHAR

Stores variable-length text.

```sql
VARCHAR(100)
```

### TEXT

Stores long text values.

```sql
TEXT
```

---

## Numeric Data Types

### INT

Stores whole numbers.

```sql
INT
```

### BIGINT

Stores very large whole numbers.

```sql
BIGINT
```

### DECIMAL

Stores exact decimal numbers.

```sql
DECIMAL(10,2)
```

### FLOAT

Stores approximate decimal numbers.

```sql
FLOAT
```

---

## Date & Time Data Types

### DATE

```sql
DATE
```

### TIME

```sql
TIME
```

### DATETIME

```sql
DATETIME
```

### TIMESTAMP

```sql
TIMESTAMP
```

---

## Boolean Data Type

```sql
BOOLEAN
```

---

## Example

```sql
CREATE TABLE Employees (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    Salary DECIMAL(10,2),
    JoiningDate DATE,
    IsActive BOOLEAN
);
```

---

## Key Points

- Every column must have a data type.
- Choose the smallest suitable data type.
- `VARCHAR` is the most commonly used text type.
- `DECIMAL` is recommended for financial values.
- `DATE`, `TIME`, and `DATETIME` store date and time values.