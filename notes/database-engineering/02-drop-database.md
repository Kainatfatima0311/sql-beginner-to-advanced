# SQL DROP DATABASE

## Overview

The `DROP DATABASE` statement is used to permanently delete an existing database.

Once a database is dropped, all tables, records, indexes, and other objects inside it are removed.

---

## Syntax

```sql
DROP DATABASE database_name;
```

### Example

```sql
DROP DATABASE LibraryDB;
```

---

## SQLite Difference

SQLite does not support the `DROP DATABASE` statement.

Each SQLite database is stored as a `.db` file.

To remove a database, simply delete the corresponding `.db` file.

Example:

- `learning_sql.db`
- `practice.db`

Deleting the file permanently removes the database.

---

## Best Practices

- Never delete a production database without a backup.
- Delete only databases that are no longer needed.
- Keep practice and project databases separate.

---

## Key Takeaways

- `DROP DATABASE` permanently deletes a database.
- Server-based databases use the `DROP DATABASE` statement.
- SQLite deletes databases by removing the `.db` file.