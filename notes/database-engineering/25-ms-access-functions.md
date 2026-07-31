# MS Access Functions

## Definition

MS Access functions are built-in operations used to process strings, numbers, dates, validation results, environment information, and user information.

The main MS Access function categories are:

- String Functions
- Numeric Functions
- Date Functions
- Other Functions

## String Functions

### Character Functions

- `Asc()` returns the ASCII value of a character.
- `Chr()` returns a character from an ASCII code.

```sql
SELECT Asc("A");
SELECT Chr(65);
```

### String Concatenation

MS Access uses the `&` operator to combine strings.

```sql
SELECT "Kainat" & " " & "Fatima";
```

### String Search Functions

- `InStr()` returns the first position of a substring.
- `InStrRev()` searches from the end of a string.

```sql
SELECT InStr(1, "Learn SQL", "SQL");
SELECT InStrRev("SQL Access SQL", "SQL");
```

### Case Functions

- `LCase()` converts text to lowercase.
- `UCase()` converts text to uppercase.
- `StrConv()` converts text using a specified conversion mode.

```sql
SELECT LCase("MS ACCESS");
SELECT UCase("ms access");
SELECT StrConv("kainat fatima", 3);
```

### String Extraction Functions

- `Left()` extracts characters from the left.
- `Right()` extracts characters from the right.
- `Mid()` extracts characters from a specified position.

```sql
SELECT Left("Kainat Fatima", 6);
SELECT Right("Kainat Fatima", 6);
SELECT Mid("Kainat Fatima", 8, 6);
```

### Length and Trimming Functions

- `Len()` returns the length of a string.
- `LTrim()` removes leading spaces.
- `RTrim()` removes trailing spaces.
- `Trim()` removes leading and trailing spaces.

```sql
SELECT Len("MS Access");
SELECT LTrim("   MS Access");
SELECT RTrim("MS Access   ");
SELECT Trim("   MS Access   ");
```

### String Modification Functions

- `Replace()` replaces matching text.
- `StrReverse()` reverses text.
- `Space()` creates spaces.
- `Split()` divides a string into an array.
- `StrComp()` compares two strings.
- `Str()` converts a number into a string.

```sql
SELECT Replace("Learn MySQL", "MySQL", "MS Access");
SELECT StrReverse("SQL");
SELECT "MS" & Space(3) & "Access";
SELECT Split("AI,SQL,Python", ",")(1);
SELECT StrComp("SQL", "SQL");
SELECT Str(125.50);
```

### Formatting and Directory Functions

- `Format()` formats values.
- `CurDir()` returns the current directory path.

```sql
SELECT Format(12500.5, "Currency");
SELECT CurDir();
```

## Numeric Functions

### Basic Numeric Functions

- `Abs()` returns an absolute value.
- `Fix()` removes the decimal part and rounds toward zero.
- `Int()` rounds down to the nearest integer.
- `Round()` rounds a number.
- `Sgn()` returns the sign of a number.
- `Sqr()` returns the square root.
- `Val()` converts the numeric beginning of a string into a number.

```sql
SELECT Abs(-25);
SELECT Fix(4.9);
SELECT Int(4.9);
SELECT Round(15.567, 2);
SELECT Sgn(-25);
SELECT Sqr(64);
SELECT Val("250 AI");
```

### Mathematical Functions

- `Atn()` returns the arc tangent.
- `Cos()` returns the cosine.
- `Exp()` returns `e` raised to a power.
- `Rnd()` returns a random number.
- `Randomize` initializes the random number generator.

### Aggregate Functions

- `Avg()` returns an average.
- `Count()` counts records.
- `Max()` returns the maximum value.
- `Min()` returns the minimum value.
- `Sum()` returns the total value.

```sql
SELECT Avg(Salary) FROM FunctionEmployees;
SELECT Count(*) FROM FunctionEmployees;
SELECT Max(Salary) FROM FunctionEmployees;
SELECT Min(Salary) FROM FunctionEmployees;
SELECT Sum(Salary) FROM FunctionEmployees;
```

## Date Functions

### Current Date and Time

- `Date()` returns the current date.
- `Time()` returns the current time.
- `Now()` returns the current date and time.

```sql
SELECT Date();
SELECT Time();
SELECT Now();
```

### Date Calculation Functions

- `DateAdd()` adds or subtracts an interval.
- `DateDiff()` returns the difference between dates.
- `DatePart()` returns a specified date part.

```sql
SELECT DateAdd("d", 10, #07/31/2026#);
SELECT DateDiff("d", #07/31/2026#, #08/10/2026#);
SELECT DatePart("yyyy", #07/31/2026#);
```

### Date Creation and Conversion

- `DateSerial()` creates a date from year, month, and day.
- `DateValue()` converts text into a date.
- `TimeSerial()` creates a time.
- `TimeValue()` converts text into a time.

```sql
SELECT DateSerial(2026, 7, 31);
SELECT DateValue("July 31, 2026");
SELECT TimeSerial(10, 30, 45);
SELECT TimeValue("10:30:45 AM");
```

### Date Part Functions

- `Day()` returns the day.
- `Hour()` returns the hour.
- `Minute()` returns the minute.
- `Month()` returns the month.
- `MonthName()` returns the month name.
- `Second()` returns the second.
- `Weekday()` returns the weekday number.
- `WeekdayName()` returns the weekday name.
- `Year()` returns the year.

### Date Formatting

`Format()` formats dates and times.

```sql
SELECT Format(#07/31/2026#, "dd-mm-yyyy");
```

## Other Functions

### User and Environment Functions

- `CurrentUser()` returns the current database user.
- `Environ()` returns an operating system environment variable.

```sql
SELECT CurrentUser();
SELECT Environ("USERNAME");
```

### Validation Functions

- `IsDate()` checks whether a value is a valid date.
- `IsNull()` checks whether a value is NULL.
- `IsNumeric()` checks whether a value is numeric.

```sql
SELECT IsDate("July 31, 2026");
SELECT IsNull(Null);
SELECT IsNumeric("250");
```

## Key Points

- MS Access functions use Access-specific SQL syntax.
- Strings commonly use double quotation marks.
- Dates are written between `#` symbols.
- The `&` operator combines strings.
- `Fix()` and `Int()` behave differently with negative numbers.
- MS Access functions should not be executed on a MySQL connection.