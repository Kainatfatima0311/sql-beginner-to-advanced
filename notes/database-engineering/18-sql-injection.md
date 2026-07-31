# SQL Injection

## Definition

SQL Injection is a security vulnerability where an attacker inserts malicious SQL code into an application's SQL query.

---

## Risks

- Unauthorized login
- Data theft
- Data modification
- Data deletion
- Database compromise

---

## Example of an Unsafe Query

```sql
SELECT *
FROM Users
WHERE Username = 'Ali'
AND Password = '12345';
```

---

## Injection Example

```text
' OR 1=1 --
```

---

## Prevention

### Use Prepared Statements

```python
cursor.execute(
    "SELECT * FROM Users WHERE Username=%s AND Password=%s",
    (username, password)
)
```

### Validate User Input

- Accept only expected values.
- Reject invalid input.

### Apply Least Privilege

- Grant only required database permissions.

### Avoid String Concatenation

Do not build SQL queries using user input directly.

---

## Key Points

- SQL Injection is a security attack.
- Never trust user input.
- Use parameterized queries.
- Validate input.
- Limit database permissions.