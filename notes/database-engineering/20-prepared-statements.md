# SQL Prepared Statements

## Definition

A prepared statement is a precompiled SQL statement that can be executed multiple times with different parameter values.

---

## Advantages

- Prevents SQL Injection.
- Improves performance.
- Reuses the same SQL statement.
- Makes code cleaner and easier to maintain.

---

## MySQL Example

### Prepare

```sql
PREPARE GetUser
FROM 'SELECT * FROM Users WHERE UserID = ?';
```

### Set Parameter

```sql
SET @id = 1;
```

### Execute

```sql
EXECUTE GetUser USING @id;
```

### Release

```sql
DEALLOCATE PREPARE GetUser;
```

---

## Key Points

- Prepared once, executed many times.
- Uses placeholders (`?`) for parameters.
- Improves security.
- Improves execution efficiency.
- Commonly used in application development.