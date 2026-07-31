## SQL WHERE Clause

### What is WHERE?

- The WHERE clause is used to filter records.
- It returns only the rows that satisfy the given condition.
- It is commonly used with SELECT, UPDATE, and DELETE statements.

---

### Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition;
```

---

### Equal Operator

```sql
SELECT *
FROM Customers
WHERE Country = 'Germany';
```

Returns customers from Germany.

---

### Greater Than

```sql
SELECT *
FROM Customers
WHERE CustomerID > 3;
```

Returns customers with CustomerID greater than 3.

---

### Not Equal

```sql
SELECT *
FROM Customers
WHERE Country <> 'Mexico';
```

Returns customers except those from Mexico.

---

### AND Operator

```sql
SELECT *
FROM Customers
WHERE Country = 'Mexico'
AND City = 'México D.F.';
```

Both conditions must be true.

---

### OR Operator

```sql
SELECT *
FROM Customers
WHERE Country = 'Germany'
OR Country = 'UK';
```

At least one condition must be true.

---

### NOT Operator

```sql
SELECT *
FROM Customers
WHERE NOT Country = 'Mexico';
```

Returns all customers except those from Mexico.

---

### Key Points

- WHERE filters rows.
- Text values should be enclosed in single quotes.
- Numeric values do not require quotes.
- Supports comparison and logical operators.