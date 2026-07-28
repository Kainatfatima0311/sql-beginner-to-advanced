## SQL AND Operator

### What is AND?

- The AND operator combines multiple conditions.
- All conditions must be TRUE for a row to be returned.
- Commonly used with the WHERE clause.

---

### Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition1
AND condition2;
```

---

### Example 1

```sql
SELECT *
FROM Customers
WHERE Country = 'Mexico'
AND City = 'México D.F.';
```

Returns customers from Mexico whose city is México D.F.

---

### Example 2

```sql
SELECT CustomerName, Country
FROM Customers
WHERE Country = 'Germany'
AND CustomerID = 1;
```

Returns the matching customer.

---

### Example 3

```sql
SELECT *
FROM Customers
WHERE CustomerID > 2
AND CustomerID < 5;
```

Returns customers with IDs between 3 and 4.

---

### Key Points

- AND combines multiple conditions.
- Every condition must be TRUE.
- Mostly used with the WHERE clause.