SELECT Asc("A") AS ASCIIValue;
SELECT Chr(65) AS CharacterValue;
SELECT "Kainat" & " " & "Fatima" AS FullName;
SELECT CurDir() AS CurrentDirectory;
SELECT Format(12500.5, "Currency") AS FormattedPrice;
SELECT Format(Date(), "dd-mm-yyyy") AS FormattedDate;
SELECT InStr(1, "Learn SQL", "SQL") AS TextPosition;
SELECT InStrRev("SQL Access SQL", "SQL") AS LastPosition;
SELECT LCase("MS ACCESS") AS LowerText;
SELECT Left("Kainat Fatima", 6) AS FirstName;
SELECT Len("MS Access") AS TextLength;
SELECT LTrim("   MS Access") AS CleanText;
SELECT Mid("Kainat Fatima", 8, 6) AS LastName;
SELECT Replace("Learn MySQL", "MySQL", "MS Access") AS NewText;
SELECT Right("Kainat Fatima", 6) AS LastName;
SELECT RTrim("MS Access   ") AS CleanText;
SELECT "MS" & Space(3) & "Access" AS SpacedText;
SELECT Split("AI,SQL,Python", ",")(1) AS SecondValue;
SELECT Str(125.50) AS NumberText;
SELECT StrComp("SQL", "SQL") AS ComparisonResult;
SELECT StrConv("kainat fatima", 3) AS ProperText;
SELECT StrReverse("SQL") AS ReverseText;
SELECT Trim("   MS Access   ") AS CleanText;
SELECT UCase("ms access") AS UpperText;

SELECT Abs(-25) AS AbsoluteValue;
SELECT Atn(1) AS ArcTangent;
SELECT Avg(Salary) AS AverageSalary
FROM FunctionEmployees;
SELECT Cos(0) AS CosineValue;
SELECT Count(*) AS TotalEmployees
FROM FunctionEmployees;
SELECT Exp(2) AS ExponentialValue;
SELECT Fix(4.9) AS FixedValue;
SELECT Fix(-4.9) AS NegativeFixedValue;
SELECT Format(1234567.89, "Standard") AS FormattedNumber;
SELECT Int(4.9) AS IntegerValue;
SELECT Int(-4.9) AS NegativeIntegerValue;
SELECT Max(Salary) AS MaximumSalary
FROM FunctionEmployees;
SELECT Min(Salary) AS MinimumSalary
FROM FunctionEmployees;
SELECT Rnd() AS RandomValue;
SELECT Round(15.567, 2) AS RoundedValue;
SELECT Sgn(-25) AS NegativeSign;
SELECT Sgn(0) AS ZeroSign;
SELECT Sgn(25) AS PositiveSign;
SELECT Sqr(64) AS SquareRoot;
SELECT Sum(Salary) AS TotalSalary
FROM FunctionEmployees;
SELECT Val("250 AI") AS NumericValue;

SELECT Date() AS CurrentDate;
SELECT DateAdd("d", 10, #07/31/2026#) AS NewDate;
SELECT DateAdd("m", 1, #07/31/2026#) AS NextMonth;
SELECT DateAdd("d", -7, #07/31/2026#) AS PreviousDate;
SELECT DateDiff("d", #07/31/2026#, #08/10/2026#) AS DaysDifference;
SELECT DatePart("yyyy", #07/31/2026#) AS DateYear;
SELECT DateSerial(2026, 7, 31) AS CreatedDate;
SELECT DateValue("July 31, 2026") AS ConvertedDate;
SELECT Day(#07/31/2026#) AS DayNumber;
SELECT Format(#07/31/2026#, "dd-mm-yyyy") AS FormattedDate;
SELECT Hour(#10:30:45 AM#) AS HourValue;
SELECT Minute(#10:30:45 AM#) AS MinuteValue;
SELECT Month(#07/31/2026#) AS MonthNumber;
SELECT MonthName(7) AS MonthText;
SELECT Now() AS CurrentDateTime;
SELECT Second(#10:30:45 AM#) AS SecondValue;
SELECT Time() AS CurrentTime;
SELECT TimeSerial(10, 30, 45) AS CreatedTime;
SELECT TimeValue("10:30:45 AM") AS ConvertedTime;
SELECT Weekday(#07/31/2026#) AS WeekdayNumber;
SELECT WeekdayName(6) AS WeekdayText;
SELECT Year(#07/31/2026#) AS YearValue;

SELECT CurrentUser() AS CurrentDatabaseUser;
SELECT Environ("USERNAME") AS ComputerUser;
SELECT Environ("COMPUTERNAME") AS ComputerName;
SELECT IsDate("July 31, 2026") AS ValidDate;
SELECT IsDate("Not a date") AS InvalidDate;
SELECT IsNull(Null) AS NullResult;
SELECT IsNumeric("250") AS NumericResult;
SELECT IsNumeric("SQL") AS TextResult;