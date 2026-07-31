# SQL Quick Reference

## Definition

SQL Quick Reference provides a compact summary of frequently used SQL commands and syntax.

## Database Commands

```sql
CREATE DATABASE database_name;
USE database_name;
DROP DATABASE database_name;
```

## Table Commands

```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype
);
```

```sql
ALTER TABLE table_name
ADD column_name datatype;
```

```sql
ALTER TABLE table_name
MODIFY column_name datatype;
```

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

```sql
TRUNCATE TABLE table_name;
DROP TABLE table_name;
```

## INSERT

```sql
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);
```

## SELECT

```sql
SELECT *
FROM table_name;
```

```sql
SELECT column1, column2
FROM table_name;
```

```sql
SELECT DISTINCT column_name
FROM table_name;
```

## WHERE

```sql
SELECT *
FROM table_name
WHERE condition;
```

## Logical Operators

```sql
WHERE condition1 AND condition2;
WHERE condition1 OR condition2;
WHERE NOT condition;
```

## ORDER BY

```sql
SELECT *
FROM table_name
ORDER BY column_name ASC;
```

```sql
SELECT *
FROM table_name
ORDER BY column_name DESC;
```

## LIMIT

```sql
SELECT *
FROM table_name
LIMIT number;
```

## UPDATE

```sql
UPDATE table_name
SET column_name = value
WHERE condition;
```

## DELETE

```sql
DELETE FROM table_name
WHERE condition;
```

## NULL

```sql
WHERE column_name IS NULL;
```

```sql
WHERE column_name IS NOT NULL;
```

## LIKE

```sql
WHERE column_name LIKE 'A%';
WHERE column_name LIKE '%A';
WHERE column_name LIKE '%A%';
WHERE column_name LIKE 'A_';
```

## IN

```sql
WHERE column_name IN (value1, value2);
```

## BETWEEN

```sql
WHERE column_name BETWEEN value1 AND value2;
```

## Aggregate Functions

```sql
SELECT COUNT(*) FROM table_name;
SELECT SUM(column_name) FROM table_name;
SELECT AVG(column_name) FROM table_name;
SELECT MIN(column_name) FROM table_name;
SELECT MAX(column_name) FROM table_name;
```

## GROUP BY

```sql
SELECT column_name, COUNT(*)
FROM table_name
GROUP BY column_name;
```

## HAVING

```sql
SELECT column_name, COUNT(*)
FROM table_name
GROUP BY column_name
HAVING COUNT(*) > 1;
```

## INNER JOIN

```sql
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
```

## LEFT JOIN

```sql
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
```

## RIGHT JOIN

```sql
SELECT columns
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
```

## UNION

```sql
SELECT column_name FROM table1
UNION
SELECT column_name FROM table2;
```

## UNION ALL

```sql
SELECT column_name FROM table1
UNION ALL
SELECT column_name FROM table2;
```

## Subquery

```sql
SELECT *
FROM table_name
WHERE column_name > (
    SELECT AVG(column_name)
    FROM table_name
);
```

## CASE

```sql
SELECT
    CASE
        WHEN condition THEN result
        ELSE result
    END
FROM table_name;
```

## Constraints

```sql
NOT NULL
UNIQUE
PRIMARY KEY
FOREIGN KEY
CHECK
DEFAULT
AUTO_INCREMENT
```

## View

```sql
CREATE VIEW view_name AS
SELECT columns
FROM table_name;
```

```sql
SELECT *
FROM view_name;
```

```sql
DROP VIEW view_name;
```

## Index

```sql
CREATE INDEX index_name
ON table_name (column_name);
```

```sql
CREATE UNIQUE INDEX index_name
ON table_name (column_name);
```

## MySQL Inspection Commands

```sql
SHOW DATABASES;
SHOW TABLES;
DESCRIBE table_name;
SHOW INDEX FROM table_name;
```

## Key Points

- SQL commands are not case-sensitive, but uppercase keywords improve readability.
- Use `WHERE` carefully with `UPDATE` and `DELETE`.
- Use aliases to make output easier to understand.
- Use constraints to maintain data integrity.
- Use indexes on frequently searched columns.
- Syntax may vary between MySQL, SQL Server, PostgreSQL, Oracle, and MS Access.