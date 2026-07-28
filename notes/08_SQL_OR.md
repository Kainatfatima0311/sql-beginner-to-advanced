## SQL OR Operator

### What is OR?

- The OR operator combines multiple conditions.
- A row is returned if at least one condition is TRUE.
- It is commonly used with the WHERE clause.

---

### Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition1
OR condition2;
```

---

### Example 1

```sql
SELECT *
FROM Customers
WHERE Country = 'Germany'
OR Country = 'UK';
```

Returns customers from Germany or the UK.

---

### Example 2

```sql
SELECT *
FROM Customers
WHERE CustomerID = 1
OR CustomerID = 5;
```

Returns customers with ID 1 or 5.

---

### Example 3

```sql
SELECT CustomerName, Country
FROM Customers
WHERE Country = 'Germany'
OR Country = 'Sweden';
```

Returns customers from Germany or Sweden.

---

### Example 4

```sql
SELECT CustomerName, City
FROM Customers
WHERE City = 'Berlin'
OR City = 'London';
```

Returns customers living in Berlin or London.

---

### Key Points

- OR combines multiple conditions.
- At least one condition must be TRUE.
- Mostly used with the WHERE clause.