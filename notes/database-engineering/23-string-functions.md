# SQL String Functions

## Definition

String functions are used to manipulate and process text values in SQL.

---

## CONCAT()

Combines two or more strings.

```sql
SELECT CONCAT(FirstName,' ',LastName)
FROM Employees;
```

---

## LENGTH()

Returns the number of characters.

```sql
SELECT LENGTH(FirstName)
FROM Employees;
```

---

## UPPER()

Converts text to uppercase.

```sql
SELECT UPPER(FirstName)
FROM Employees;
```

---

## LOWER()

Converts text to lowercase.

```sql
SELECT LOWER(FirstName)
FROM Employees;
```

---

## TRIM()

Removes leading and trailing spaces.

```sql
SELECT TRIM('   Ali   ');
```

---

## REPLACE()

Replaces one string with another.

```sql
SELECT REPLACE('Hello World','World','SQL');
```

---

## SUBSTRING()

Extracts part of a string.

```sql
SELECT SUBSTRING('Kainat',1,3);
```

---

## Key Points

- Used for text manipulation.
- Helpful for formatting data.
- Frequently used in reports and applications.
- Can be combined with `SELECT`, `WHERE`, and other SQL clauses.