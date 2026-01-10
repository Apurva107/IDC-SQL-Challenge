## 🧠 Day 7 – HAVING Clause

### Filtering Aggregated Results Using `HAVING`

---

### 📘 Topics Covered

* `HAVING` clause
* Filtering aggregated results

---

### 📖 Overview

The **`HAVING` clause** is used to filter the results of **groups** created by the `GROUP BY` clause.

🔹 **Key Difference**

* `WHERE` filters **individual rows** *before* grouping
* `HAVING` filters **groups** *after* aggregation

This makes `HAVING` ideal for conditions involving aggregate functions like:

* `SUM()`
* `AVG()`
* `COUNT()`
* `MIN()`
* `MAX()`

---

### 📚 Basic Syntax

```sql
SELECT column1, aggregate_function(column2)
FROM table_name
GROUP BY column1
HAVING aggregate_condition;
```

---

### 🧪 Example

```sql
SELECT department, COUNT(employee_id) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(employee_id) > 5;
```

➡️ This query returns only departments with **more than 5 employees**.

---

### 💡 Tips & Tricks

✅ **Execution Order**
`WHERE` → `GROUP BY` → `HAVING` → `ORDER BY`

✅ Use `WHERE` for **row-level filtering**

✅ Use `HAVING` for **group-level filtering**

✅ `HAVING` usually requires `GROUP BY`

✅ Column aliases **may** be used in `HAVING`
*(depends on the SQL engine)*

---

### 🚀 Quick Reminder

> If your condition uses an **aggregate function**,
> you probably need **`HAVING`**, not `WHERE`.


