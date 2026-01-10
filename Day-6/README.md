## 🧠 Day 6 – GROUP BY Clause

### Aggregating Data by Categories

---

### 📘 Topics Covered

* `GROUP BY`
* Aggregating by categories

---

### 📖 Overview

The **`GROUP BY` clause** divides rows into groups based on column values, allowing you to apply **aggregate functions** such as `COUNT`, `SUM`, `AVG`, `MIN`, and `MAX` to each group individually.

It is a powerful way to **summarize**, **categorize**, and **analyze** data in SQL.

---

### 📚 Basic Syntax

```sql
SELECT column1, aggregate_function(column2)
FROM table_name
GROUP BY column1;
```

---

### 🧪 Example Queries

```sql
-- Count patients per department
SELECT department, COUNT(*) AS total_patients
FROM patients
GROUP BY department;
```

```sql
-- Average age per service type
SELECT service_type, AVG(age) AS avg_age
FROM patients
GROUP BY service_type;
```

```sql
-- Grouping by multiple columns
SELECT department, service_type, COUNT(*) AS total_records
FROM patients
GROUP BY department, service_type;
```

---

### 📌 Key Rules

* Every **non-aggregated column** in the `SELECT` clause must appear in the `GROUP BY` clause
* Each group produces **one result row**
* Aggregate functions operate on the grouped data
* You can group by **multiple columns** for deeper segmentation

---

### 💡 Tips & Tricks

* Think **“one row per group”**
  *(GROUP BY service → one row per service)*
* SQL execution order:
  `FROM → WHERE → GROUP BY → SELECT → ORDER BY → LIMIT`
* Use `WHERE` **before** `GROUP BY` to filter rows
* Use `HAVING` **after** `GROUP BY` to filter aggregated results
* Grouping multiple columns increases **granularity** and insights

---


