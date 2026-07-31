# SQL ALTER TABLE

## Definition

The `ALTER TABLE` statement is used to modify the structure of an existing table.

It can be used to:

- Add a new column
- Delete a column
- Change a column data type
- Rename a column

---

## Add Column

### Syntax

```sql
ALTER TABLE table_name
ADD column_name datatype;
```

### Example

```sql
ALTER TABLE Customers
ADD Email VARCHAR(100);
```

---

## Drop Column

### Syntax

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

### Example

```sql
ALTER TABLE Customers
DROP COLUMN Email;
```

---

## Modify Column (MySQL)

### Syntax

```sql
ALTER TABLE table_name
MODIFY COLUMN column_name datatype;
```

### Example

```sql
ALTER TABLE Customers
MODIFY COLUMN Phone VARCHAR(30);
```

---

## Rename Column (MySQL)

### Syntax

```sql
ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;
```

### Example

```sql
ALTER TABLE Customers
RENAME COLUMN Name TO FullName;
```

---

## SQL Server Syntax

```sql
ALTER TABLE Customers
ALTER COLUMN Phone VARCHAR(30);
```

---

## Key Points

- Changes the structure of an existing table.
- Does not recreate the table.
- Can add, remove, rename, or modify columns.
- Syntax may vary between database systems.