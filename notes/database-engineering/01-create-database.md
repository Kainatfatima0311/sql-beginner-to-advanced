# SQL CREATE DATABASE

## Overview

A database is an organized collection of related data. It is used to store, manage, and retrieve information efficiently.

A database can contain multiple tables, and each table stores a specific type of data.

---

## Why Do We Need a Database?

Databases help us:

- Store data in an organized way.
- Retrieve information quickly.
- Reduce duplicate data.
- Update records easily.
- Maintain data consistency and security.

---

## CREATE DATABASE Statement

The `CREATE DATABASE` statement is used to create a new database.

### Syntax

```sql
CREATE DATABASE database_name;
```

### Example

```sql
CREATE DATABASE LibraryDB;
```

---

## Using the Database

After creating a database, it is usually selected before creating tables.

```sql
USE LibraryDB;
```

> **Note:** The `USE` statement is available in database systems like MySQL and SQL Server.

---

## SQLite Difference

SQLite works differently from server-based database systems.

- SQLite does **not** support the `CREATE DATABASE` statement.
- Every `.db` file is itself a complete database.
- Creating a new database simply means creating a new `.db` file.

### Examples

- `practice.db`
- `learning_sql.db`
- `library_management.db`

---

## Database vs Table

| Database | Table |
|----------|-------|
| Stores multiple tables | Stores records (rows) |
| Acts as a container | Stores actual data |
| Can contain many tables | Contains columns and rows |

---

## Best Practices

- Create a separate database for each major project.
- Use meaningful database names.
- Avoid mixing unrelated projects in the same database.
- Keep practice databases separate from production databases.

---

## SQLite vs MySQL/PostgreSQL

| SQLite | MySQL / PostgreSQL |
|---------|--------------------|
| Database is a `.db` file | Database exists inside a server |
| No database server required | Database server required |
| Lightweight | Enterprise-level |
| Great for learning and local development | Suitable for production systems |

---

## Key Takeaways

- A database stores multiple tables.
- `CREATE DATABASE` creates a new database in server-based systems.
- SQLite uses `.db` files instead of the `CREATE DATABASE` command.
- A well-organized database makes applications easier to build and maintain.