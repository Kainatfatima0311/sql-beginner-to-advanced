## SQL DISTINCT

### What is DISTINCT?

- The DISTINCT keyword is used to return only unique values.
- It removes duplicate values from the query result.
- It does not modify the actual data stored in the table.
- It can be used with one or multiple columns.
- It can also be used with COUNT() to count unique values.

---

### Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

---

### Select Unique Values

```sql
SELECT DISTINCT City
FROM Customers;
```

Returns only unique cities.

---

### Multiple Columns

```sql
SELECT DISTINCT City, Country
FROM Customers;
```

Returns unique combinations of City and Country.

---

### Count Unique Values

```sql
SELECT COUNT(DISTINCT Country)
FROM Customers;
```

Returns the total number of unique countries.

---

### When to Use DISTINCT

- Remove duplicate values.
- Display unique records.
- Generate reports.
- Count unique values.
- Analyze data efficiently.

---

### Key Points

- DISTINCT affects only the query output.
- Original table data remains unchanged.
- Works with one or multiple columns.