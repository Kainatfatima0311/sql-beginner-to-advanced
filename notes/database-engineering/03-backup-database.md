# SQL BACKUP DATABASE

## Overview

A database backup is a copy of a database that can be used to restore data if the original database is lost, damaged, or accidentally deleted.

---

## Why Are Backups Important?

Database backups help recover data in situations such as:

- Hardware failure
- Accidental deletion
- System crashes
- Data corruption
- Human errors

---

## SQL Server

SQL Server provides the `BACKUP DATABASE` statement.

### Example

```sql
BACKUP DATABASE LibraryDB
TO DISK = 'D:\Backups\LibraryDB.bak';
```

---

## SQLite

SQLite does not use the `BACKUP DATABASE` statement.

Since every SQLite database is stored in a single `.db` file, creating a copy of that file creates a complete backup.

### Example

Original:

- `learning_sql.db`

Backup:

- `learning_sql_backup.db`

---

## Best Practices

- Create backups regularly.
- Store backups in a separate location.
- Keep multiple backup versions.
- Test backups before relying on them.

---

## Key Takeaways

- A backup is a copy of a database.
- SQL Server uses the `BACKUP DATABASE` statement.
- SQLite backups are created by copying the `.db` file.
- Regular backups help prevent permanent data loss.