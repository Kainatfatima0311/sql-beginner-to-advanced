## SQL NOT Operator

### What is NOT?

- The NOT operator reverses a condition.
- It returns rows where the condition is FALSE.
- Commonly used with the WHERE clause.

---

### Syntax

```sql
SELECT column_name
FROM table_name
WHERE NOT condition;
```

---

### Example 1

```sql
SELECT *
FROM Customers
WHERE NOT Country = 'Mexico';
```

Returns all customers except those from Mexico.

---

### Example 2

```sql
SELECT *
FROM Customers
WHERE NOT CustomerID = 3;
```

Returns all customers except CustomerID 3.

---

### Example 3

```sql
SELECT CustomerName, City
FROM Customers
WHERE NOT City = 'London';
```

Returns customers not living in London.

---

### Example 4

```sql
SELECT *
FROM Customers
WHERE NOT CustomerID > 3;
```

Returns customers whose CustomerID is less than or equal to 3.

---

### Key Points

- NOT reverses a condition.
- Mostly used with the WHERE clause.
- Useful for excluding specific records.