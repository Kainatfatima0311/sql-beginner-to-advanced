# SQL Parameterized Queries

## Definition

Parameterized queries separate SQL statements from user input.

They are the recommended way to prevent SQL Injection attacks.

---

## Unsafe Example

```python
query = "SELECT * FROM Users WHERE Username = '" + username + "'"
```

---

## Safe Example

```python
query = "SELECT * FROM Users WHERE Username = %s"

cursor.execute(query, (username,))
```

---

## Multiple Parameters

```python
query = """
SELECT *
FROM Users
WHERE Username = %s
AND Password = %s
"""

cursor.execute(query, (username, password))
```

---

## Advantages

- Prevents SQL Injection.
- Separates SQL code from user input.
- Improves application security.
- Easier to maintain.

---

## Key Points

- Always use parameterized queries.
- Never concatenate user input into SQL statements.
- Use placeholders provided by the database driver.
- Treat all user input as untrusted.