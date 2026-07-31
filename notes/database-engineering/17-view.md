# SQL VIEW

## Definition

A `VIEW` is a virtual table based on the result of a SQL query.

It does not store data itself. Instead, it displays data from one or more tables.

---

## Create a View

```sql
CREATE VIEW CustomerView AS
SELECT CustomerName, City
FROM Customers;
```

---

## Query a View

```sql
SELECT *
FROM CustomerView;
```

---

## Update a View

```sql
CREATE OR REPLACE VIEW CustomerView AS
SELECT CustomerName, City, Email
FROM Customers;
```

---

## Drop a View

```sql
DROP VIEW CustomerView;
```

---

## Advantages

- Simplifies complex queries.
- Improves code reusability.
- Provides data security by exposing selected columns.
- Always shows the latest data from the base table.

---

## Key Points

- A view is a virtual table.
- It stores a SQL query, not data.
- Data is retrieved from the original table.
- Updating the base table updates the view automatically.