## SQL ORDER BY

### What is ORDER BY?

- The ORDER BY clause is used to sort query results.
- By default, sorting is performed in ascending order (ASC).
- Use DESC to sort in descending order.
- Multiple columns can be used for sorting.

---

### Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name;
```

---

### Ascending Order

```sql
SELECT *
FROM Customers
ORDER BY CustomerName ASC;
```

Sorts data from A to Z.

---

### Descending Order

```sql
SELECT *
FROM Customers
ORDER BY CustomerName DESC;
```

Sorts data from Z to A.

---

### Numeric Sorting

```sql
SELECT *
FROM Customers
ORDER BY CustomerID DESC;
```

Returns records from highest ID to lowest.

---

### Multiple Columns

```sql
SELECT CustomerName, Country
FROM Customers
ORDER BY Country ASC, CustomerName ASC;
```

Sorts by Country first, then CustomerName.

---

### Key Points

- ORDER BY sorts query results.
- ASC is the default sorting order.
- DESC sorts in reverse order.
- Multiple columns can be sorted together.