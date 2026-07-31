# SQL DROP TABLE

## Definition

The `DROP TABLE` statement permanently removes a table from the database.

It deletes:

- Table structure
- All records
- Indexes
- Constraints

---

## Syntax

```sql
DROP TABLE table_name;
```

---

## IF EXISTS

Use `IF EXISTS` to avoid an error if the table does not exist.

```sql
DROP TABLE IF EXISTS table_name;
```

---

## Example

```sql
DROP TABLE Persons;
```

Safe version:

```sql
DROP TABLE IF EXISTS Persons;
```

---

## Difference

| Command | Deletes Data | Deletes Table |
|----------|--------------|---------------|
| DELETE | Yes | No |
| TRUNCATE | Yes | No |
| DROP TABLE | Yes | Yes |

---

## Key Points

- Permanently removes the table.
- Deletes all data and table structure.
- Cannot be recovered unless backed up.
- Use `IF EXISTS` to prevent errors.