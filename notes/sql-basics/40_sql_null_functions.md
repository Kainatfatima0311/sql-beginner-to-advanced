## SQL NULL Functions

### NULL

`NULL` means the value is missing or unknown.

### IFNULL()

Returns the replacement value if the expression is `NULL`.

### Syntax

```sql
IFNULL(column, replacement)
```

### Example

```sql
SELECT
    OrderID,
    IFNULL(Discount, 0) AS Discount
FROM Orders;
```

---

### COALESCE()

Returns the first non-NULL value.

### Syntax

```sql
COALESCE(value1, value2, value3, ...)
```

### Example

```sql
SELECT
    OrderID,
    COALESCE(Discount, 0) AS Discount
FROM Orders;
```

### Multiple Values

```sql
SELECT
COALESCE(
    HomePhone,
    OfficePhone,
    Mobile,
    'No Number'
);
```

### Key Points

- `NULL` means missing data.
- `IFNULL()` replaces a `NULL` value.
- `COALESCE()` returns the first non-NULL value.
- `COALESCE()` accepts multiple expressions.

### Practice Questions

1. Replace NULL discounts with 0.
2. Calculate final price using `IFNULL()`.
3. Rewrite the same query using `COALESCE()`.
4. Explain the difference between `IFNULL()` and `COALESCE()`.
5. Explain why `NULL` is different from 0.

### Mini Challenge

Calculate the final product price after replacing `NULL` discounts with 0.