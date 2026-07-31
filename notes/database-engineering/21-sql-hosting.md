# SQL Hosting

## Definition

SQL Hosting means storing a database on a server so that applications can access it over a network or the internet.

---

## Local Database

- Runs on your own computer.
- Commonly used for development.
- Example: MySQL on `localhost`.

---

## Hosted Database

- Runs on a remote server.
- Accessible through the internet.
- Used in production applications.

---

## Required Connection Information

- Host
- Port
- Database Name
- Username
- Password

---

## Python Connection Example

```python
import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password",
    database="practice_db"
)
```

---

## Advantages

- Online access
- Centralized data
- Multi-user support
- Better backup and security

---

## Key Points

- Local databases are mainly for development.
- Hosted databases are used in production.
- Applications connect using host, port, username, password, and database name.