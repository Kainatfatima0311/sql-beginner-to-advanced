# SQL Server Functions

## Definition

SQL Server functions are built-in operations used to process strings, numbers, dates, conversions, NULL values, conditions, and system information.

The main SQL Server function categories are:

- String Functions
- Numeric Functions
- Date Functions
- Conversion Functions
- Advanced Functions

## String Functions

### ASCII and Unicode Functions

- `ASCII()` returns the ASCII code of the first character.
- `CHAR()` returns a character from an ASCII code.
- `NCHAR()` returns a Unicode character from an integer code.
- `UNICODE()` returns the integer value of a Unicode character.

```sql
SELECT ASCII('A');
SELECT CHAR(65);
SELECT NCHAR(65);
SELECT UNICODE(N'A');
```

### String Combination Functions

- `CONCAT()` combines multiple expressions.
- The `+` operator combines strings in SQL Server.
- `CONCAT_WS()` combines values using a separator.

```sql
SELECT CONCAT('SQL', ' ', 'Server');
SELECT 'SQL' + ' ' + 'Server';
SELECT CONCAT_WS('-', 'SQL', 'Server', '2026');
```

### String Search Functions

- `CHARINDEX()` finds the position of a substring.
- `PATINDEX()` finds the position of a pattern.
- `DIFFERENCE()` compares the similarity of two strings.
- `SOUNDEX()` returns a phonetic code for a string.

```sql
SELECT CHARINDEX('SQL', 'Learn SQL Server');
SELECT PATINDEX('%Server%', 'Learn SQL Server');
SELECT DIFFERENCE('Smith', 'Smyth');
SELECT SOUNDEX('Smith');
```

### String Length Functions

- `LEN()` returns the number of characters and excludes trailing spaces.
- `DATALENGTH()` returns the number of bytes used by a value.

```sql
SELECT LEN('SQL Server');
SELECT DATALENGTH('SQL Server');
```

### Case Conversion Functions

- `LOWER()` converts text to lowercase.
- `UPPER()` converts text to uppercase.

```sql
SELECT LOWER('SQL SERVER');
SELECT UPPER('sql server');
```

### String Extraction Functions

- `LEFT()` extracts characters from the left.
- `RIGHT()` extracts characters from the right.
- `SUBSTRING()` extracts characters from a specified position.

```sql
SELECT LEFT('SQL Server', 3);
SELECT RIGHT('Kainat Fatima', 6);
SELECT SUBSTRING('Kainat Fatima', 8, 6);
```

### Trimming and Spacing Functions

- `LTRIM()` removes leading spaces.
- `RTRIM()` removes trailing spaces.
- `TRIM()` removes leading and trailing spaces.
- `SPACE()` returns a specified number of spaces.

```sql
SELECT LTRIM('   SQL Server');
SELECT RTRIM('SQL Server   ');
SELECT TRIM('   SQL Server   ');
SELECT 'SQL' + SPACE(3) + 'Server';
```

### String Modification Functions

- `REPLACE()` replaces matching text.
- `REPLICATE()` repeats text.
- `REVERSE()` reverses text.
- `STUFF()` deletes part of a string and inserts replacement text.
- `TRANSLATE()` replaces multiple individual characters.

```sql
SELECT REPLACE('Learn MySQL', 'MySQL', 'SQL Server');
SELECT REPLICATE('SQL ', 3);
SELECT REVERSE('SQL');
SELECT STUFF('Learn Java', 7, 4, 'SQL');
SELECT TRANSLATE('2*[3+4]', '[]{}', '()()');
```

### Formatting Functions

- `FORMAT()` formats numeric and date values.
- `STR()` converts numeric data to character data.
- `QUOTENAME()` creates a valid delimited identifier.

```sql
SELECT FORMAT(1234567.89, 'N2');
SELECT FORMAT(GETDATE(), 'dd-MM-yyyy');
SELECT STR(123.45, 8, 2);
SELECT QUOTENAME('Employee Name');
```

## Numeric Functions

### Basic Numeric Functions

- `ABS()` returns an absolute value.
- `CEILING()` rounds upward.
- `FLOOR()` rounds downward.
- `ROUND()` rounds a numeric value.
- `SIGN()` returns `-1`, `0`, or `1`.
- `SQRT()` returns the square root.
- `SQUARE()` returns the square of a number.
- `POWER()` raises a number to a power.
- `PI()` returns the value of PI.
- `RAND()` returns a random number.

### Trigonometric Functions

- `ACOS()` returns the arc cosine.
- `ASIN()` returns the arc sine.
- `ATAN()` returns the arc tangent.
- `ATN2()` returns the arc tangent of two values.
- `COS()` returns the cosine.
- `COT()` returns the cotangent.
- `SIN()` returns the sine.
- `TAN()` returns the tangent.
- `DEGREES()` converts radians into degrees.
- `RADIANS()` converts degrees into radians.

### Logarithmic Functions

- `EXP()` returns `e` raised to a power.
- `LOG()` returns the natural logarithm.
- `LOG10()` returns the base-10 logarithm.

### Aggregate Functions

- `AVG()` returns the average value.
- `COUNT()` counts records.
- `MAX()` returns the maximum value.
- `MIN()` returns the minimum value.
- `SUM()` returns the total value.

## Date Functions

### Current Date and Time

- `CURRENT_TIMESTAMP` returns the current date and time.
- `GETDATE()` returns the current server date and time.
- `GETUTCDATE()` returns the current UTC date and time.
- `SYSDATETIME()` returns the current date and time with greater precision.

### Date Calculation

- `DATEADD()` adds or subtracts a date interval.
- `DATEDIFF()` returns the difference between two dates.

```sql
SELECT DATEADD(DAY, 10, '2026-07-31');
SELECT DATEDIFF(DAY, '2026-07-31', '2026-08-10');
```

### Date Creation and Validation

- `DATEFROMPARTS()` creates a date from year, month, and day.
- `ISDATE()` checks whether an expression is a valid date.

### Date Part Functions

- `DATENAME()` returns a date part as text.
- `DATEPART()` returns a date part as an integer.
- `DAY()` returns the day.
- `MONTH()` returns the month.
- `YEAR()` returns the year.

## Conversion Functions

### CAST

`CAST()` converts an expression to another data type.

```sql
SELECT CAST('250' AS INT);
SELECT CAST('2026-07-31' AS DATE);
```

### CONVERT

`CONVERT()` converts an expression and supports SQL Server formatting styles.

```sql
SELECT CONVERT(INT, '250');
SELECT CONVERT(VARCHAR, GETDATE(), 103);
```

## Advanced Functions

### NULL Functions

- `COALESCE()` returns the first non-NULL expression.
- `ISNULL()` replaces a NULL value.
- `NULLIF()` returns NULL when two expressions are equal.

```sql
SELECT COALESCE(NULL, NULL, 'SQL Server');
SELECT ISNULL(NULL, 'Not Available');
SELECT NULLIF(10, 10);
```

### Conditional Functions

- `IIF()` returns one value when a condition is true and another value when it is false.

```sql
SELECT IIF(75 >= 50, 'Pass', 'Fail');
```

### Validation Functions

- `ISNUMERIC()` checks whether an expression can be converted to a numeric data type.

```sql
SELECT ISNUMERIC('250');
SELECT ISNUMERIC('SQL');
```

### User and Session Functions

- `CURRENT_USER` returns the current database user.
- `SESSION_USER` returns the current session user.
- `SYSTEM_USER` returns the current login.
- `USER_NAME()` returns a database user name.
- `SESSIONPROPERTY()` returns a session setting.

## Key Points

- SQL Server functions use Transact-SQL syntax.
- SQL Server functions may differ from MySQL functions.
- `LEN()` counts characters, while `DATALENGTH()` counts bytes.
- `DATEADD()` and `DATEDIFF()` perform date calculations.
- `CAST()` is standard SQL, while `CONVERT()` provides SQL Server-specific formatting.
- `ISNULL()` replaces NULL values in SQL Server.
- Aggregate functions summarize multiple rows.