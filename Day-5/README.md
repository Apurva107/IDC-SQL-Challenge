## 🧠 Day 5 – Aggregate Functions

### COUNT, SUM, AVG, MIN, MAX

---

### 📘 Topics Covered

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`

---

### 📖 Overview

**Aggregate functions** in SQL are used to perform calculations on a set of values and return a **single summarized result**.

They are especially useful for:

* Analyzing numerical data
* Generating reports
* Deriving insights such as totals, averages, and extreme values

---

### 📚 Reading & Resources

Aggregate functions operate on **groups of rows** (or entire tables) and are commonly used with the `GROUP BY` clause to calculate results for each group.

For example:

* Calculating the total number of patients per service
* Finding the average satisfaction score across departments

---

### 📚 Basic Syntax

#### COUNT() – Counts the number of rows

```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
```

#### SUM() – Adds all values in a column

```sql
SELECT SUM(column_name)
FROM table_name
WHERE condition;
```

#### AVG() – Calculates the average value

```sql
SELECT AVG(column_name)
FROM table_name
WHERE condition;
```

#### MIN() – Finds the smallest value

```sql
SELECT MIN(column_name)
FROM table_name
WHERE condition;
```

#### MAX() – Finds the largest value

```sql
SELECT MAX(column_name)
FROM table_name
WHERE condition;
```

---

### 🧪 Example Queries

```sql
-- Total number of patients
SELECT COUNT(*)
FROM patients;
```

```sql
-- Average patient age
SELECT AVG(age)
FROM patients;
```

```sql
-- Highest and lowest bed availability
SELECT MAX(beds_available), MIN(beds_available)
FROM hospital_services;
```

---

### 🔑 Key Points

* Aggregate functions **ignore NULL values**
  *(except `COUNT(*)`, which counts all rows)*
* Can be combined with `GROUP BY` for category-based summaries
* Often used with `HAVING` to filter aggregated results
* Aggregate functions cannot be used directly in `WHERE` conditions

---
Useful in data reporting and analysis (e.g., total patients, highest cost, average satisfaction).
