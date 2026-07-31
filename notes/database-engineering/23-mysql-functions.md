# MySQL Functions

## Definition

MySQL functions are built-in operations that process values and return results.

MySQL functions are divided into four major categories:

- String Functions
- Numeric Functions
- Date Functions
- Advanced Functions

## String Functions

### Character and Length Functions

- `ASCII()` returns the ASCII value of the first character.
- `CHAR_LENGTH()` returns the number of characters.
- `CHARACTER_LENGTH()` is the same as `CHAR_LENGTH()`.
- `LENGTH()` returns the number of bytes in a string.

```sql
SELECT ASCII('A');
SELECT CHAR_LENGTH('SQL');
SELECT CHARACTER_LENGTH('SQL');
SELECT LENGTH('SQL');
```

### String Combination Functions

- `CONCAT()` combines two or more expressions.
- `CONCAT_WS()` combines expressions using a separator.

```sql
SELECT CONCAT('Kainat', ' ', 'Fatima');
SELECT CONCAT_WS('-', 'AI', 'SQL', '2026');
```

### String Search Functions

- `FIELD()` returns the position of a value in a list.
- `FIND_IN_SET()` returns the position of a string in a comma-separated list.
- `INSTR()` returns the first position of a substring.
- `LOCATE()` returns the position of a substring.
- `POSITION()` returns the position of a substring.

```sql
SELECT FIELD('SQL', 'Python', 'SQL', 'Java');
SELECT FIND_IN_SET('SQL', 'Python,SQL,Java');
SELECT INSTR('Learn SQL', 'SQL');
SELECT LOCATE('SQL', 'Learn SQL');
SELECT POSITION('SQL' IN 'Learn SQL');
```

### Case Conversion Functions

- `LCASE()` converts text to lowercase.
- `LOWER()` converts text to lowercase.
- `UCASE()` converts text to uppercase.
- `UPPER()` converts text to uppercase.

### String Extraction Functions

- `LEFT()` extracts characters from the left.
- `RIGHT()` extracts characters from the right.
- `MID()` extracts a substring from a specified position.
- `SUBSTR()` extracts part of a string.
- `SUBSTRING()` extracts part of a string.
- `SUBSTRING_INDEX()` returns text before or after delimiter occurrences.

### Padding and Space Functions

- `LPAD()` pads the left side of a string.
- `RPAD()` pads the right side of a string.
- `LTRIM()` removes leading spaces.
- `RTRIM()` removes trailing spaces.
- `TRIM()` removes leading and trailing spaces.
- `SPACE()` returns a specified number of spaces.

### String Modification Functions

- `FORMAT()` formats a number with separators and decimal places.
- `INSERT()` replaces part of a string.
- `REPEAT()` repeats a string.
- `REPLACE()` replaces matching text.
- `REVERSE()` reverses a string.
- `STRCMP()` compares two strings.

## Numeric Functions

### Basic Numeric Functions

- `ABS()` returns an absolute value.
- `CEIL()` and `CEILING()` round upward.
- `FLOOR()` rounds downward.
- `ROUND()` rounds a number.
- `TRUNCATE()` removes extra decimal places without rounding.
- `SIGN()` returns `-1`, `0`, or `1`.
- `SQRT()` returns a square root.

### Arithmetic and Power Functions

- `DIV` performs integer division.
- `MOD()` returns the remainder.
- `POW()` and `POWER()` raise a number to a power.
- `EXP()` returns `e` raised to a power.
- `PI()` returns the value of PI.
- `GREATEST()` returns the largest argument.
- `LEAST()` returns the smallest argument.
- `RAND()` returns a random decimal value.

### Logarithmic Functions

- `LN()` returns the natural logarithm.
- `LOG()` returns a logarithm.
- `LOG10()` returns a base-10 logarithm.
- `LOG2()` returns a base-2 logarithm.

### Trigonometric Functions

- `ACOS()` returns the arc cosine.
- `ASIN()` returns the arc sine.
- `ATAN()` returns the arc tangent.
- `ATAN2()` returns the arc tangent of two values.
- `COS()` returns the cosine.
- `COT()` returns the cotangent.
- `SIN()` returns the sine.
- `TAN()` returns the tangent.
- `DEGREES()` converts radians to degrees.
- `RADIANS()` converts degrees to radians.

### Aggregate Functions

- `AVG()` returns the average.
- `COUNT()` counts rows.
- `MAX()` returns the maximum value.
- `MIN()` returns the minimum value.
- `SUM()` returns the total.

## Date Functions

### Current Date and Time Functions

- `CURDATE()` and `CURRENT_DATE()` return the current date.
- `CURTIME()` and `CURRENT_TIME()` return the current time.
- `NOW()`, `CURRENT_TIMESTAMP()`, `LOCALTIME()`, `LOCALTIMESTAMP()`, and `SYSDATE()` return the current date and time.

### Date Part Functions

- `DATE()` extracts the date.
- `TIME()` extracts the time.
- `DAY()` and `DAYOFMONTH()` return the day of the month.
- `DAYNAME()` returns the weekday name.
- `DAYOFWEEK()` returns the weekday index.
- `DAYOFYEAR()` returns the day number of the year.
- `HOUR()` returns the hour.
- `MINUTE()` returns the minute.
- `SECOND()` returns the second.
- `MICROSECOND()` returns the microsecond part.
- `MONTH()` returns the month number.
- `MONTHNAME()` returns the month name.
- `QUARTER()` returns the quarter.
- `WEEK()` and `WEEKOFYEAR()` return a week number.
- `WEEKDAY()` returns the weekday number.
- `YEAR()` returns the year.
- `YEARWEEK()` returns the year and week.
- `EXTRACT()` extracts a specified date part.

### Date Calculation Functions

- `ADDDATE()` and `DATE_ADD()` add a date interval.
- `ADDTIME()` adds a time interval.
- `SUBDATE()` and `DATE_SUB()` subtract a date interval.
- `SUBTIME()` subtracts a time interval.
- `DATEDIFF()` returns the difference in days.
- `TIMEDIFF()` returns the difference between time values.
- `PERIOD_ADD()` adds months to a period.
- `PERIOD_DIFF()` returns the difference between periods.

### Date Creation and Conversion Functions

- `MAKEDATE()` creates a date.
- `MAKETIME()` creates a time.
- `FROM_DAYS()` converts a day number to a date.
- `TO_DAYS()` converts a date to a day number.
- `SEC_TO_TIME()` converts seconds to time.
- `TIME_TO_SEC()` converts time to seconds.
- `STR_TO_DATE()` converts text to a date.
- `TIMESTAMP()` creates a datetime value.
- `LAST_DAY()` returns the final date of a month.

### Date Formatting Functions

- `DATE_FORMAT()` formats a date.
- `TIME_FORMAT()` formats a time.

## Advanced Functions

### Binary and Conversion Functions

- `BIN()` converts a number to binary.
- `BINARY` converts a value to a binary string.
- `CONV()` converts between number systems.
- `CAST()` converts a value to a datatype.
- `CONVERT()` converts a datatype or character set.

### Conditional and NULL Functions

- `CASE` evaluates multiple conditions.
- `IF()` returns one of two values based on a condition.
- `COALESCE()` returns the first non-NULL value.
- `IFNULL()` replaces a NULL value.
- `ISNULL()` checks whether a value is NULL.
- `NULLIF()` returns NULL when two expressions are equal.

### System Information Functions

- `CONNECTION_ID()` returns the current connection ID.
- `CURRENT_USER()` returns the authenticated account.
- `DATABASE()` returns the current database.
- `LAST_INSERT_ID()` returns the most recent auto-generated ID.
- `SESSION_USER()` returns the connected user.
- `SYSTEM_USER()` returns the connected user.
- `USER()` returns the connected user.
- `VERSION()` returns the MySQL server version.

## Key Points

- String functions manipulate text.
- Numeric functions perform calculations.
- Date functions process date and time values.
- Advanced functions support conversion, conditions, NULL handling, and system information.
- Similar functions may exist as aliases, such as `LOWER()` and `LCASE()`.
- Aggregate functions process multiple rows and return summarized results.