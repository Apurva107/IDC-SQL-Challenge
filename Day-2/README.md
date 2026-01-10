## 🧠 Day 2 – Filtering Data with `WHERE` Clause

---

### 📘 Topics Covered

* `WHERE` clause
* Comparison operators
* Basic data filtering

---

### 📖 Overview

The **`WHERE` clause** is used to **filter records** based on specific conditions, returning only the rows that meet your criteria.

It is one of the **most important SQL clauses** for extracting meaningful and relevant insights from data.

---

### 🔑 Key Concepts

* Filters rows **before** any grouping or aggregation
* Can be combined with multiple conditions
* Supports comparison, logical, and pattern-matching operators

---

### 🧮 Operators

**Comparison Operators**

* `=` (equal)
* `!=`, `<>` (not equal)
* `>` (greater than)
* `<` (less than)
* `>=` (greater than or equal to)
* `<=` (less than or equal to)

**Logical Operators**

* `AND`
* `OR`
* `NOT`

**Pattern & Range Operators**

* `LIKE`
* `IN`
* `BETWEEN`

---

### 📚 Basic Syntax

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

---

### 🧪 Example Queries

```sql
-- Select patients older than 60
SELECT *
FROM patients
WHERE age > 60;
```

```sql
-- Select records matching multiple conditions
SELECT *
FROM patients
WHERE age > 40 AND gender = 'Male';
```

```sql
-- Filter using IN
SELECT *
FROM services
WHERE service_type IN ('ICU', 'Emergency');
```

---

### 💡 Tips & Best Practices

✅ Use `WHERE` to reduce data early for better performance
✅ Combine conditions using `AND` / `OR` carefully
✅ Use parentheses `()` for complex logical conditions
✅ `WHERE` cannot be used with aggregate functions (use `HAVING` instead)

---


