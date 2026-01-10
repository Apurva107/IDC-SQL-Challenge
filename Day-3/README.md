## 🧠 Day 3 – Sorting Data with `ORDER BY`

---

### 📘 Topics Covered

* `ORDER BY`
* `ASC` / `DESC`
* Multiple column sorting

---

### 📖 Overview

The **`ORDER BY` clause** allows you to **sort query results** based on one or more columns.

Sorting helps organize data in a meaningful way — such as:

* Highest to lowest values
* Alphabetical order
* Chronological order (dates)

---

### 📚 Basic Syntax

```sql
SELECT column1, column2
FROM table_name
ORDER BY column1 [ASC | DESC];
```

---

### 🔑 Key Points

* `ASC` → **Ascending order** *(default)*

  * A → Z
  * 0 → 9
  * Oldest → Newest

* `DESC` → **Descending order**

  * Z → A
  * 9 → 0
  * Newest → Oldest

* You can sort by **multiple columns**

* Sorting is applied **after** data is retrieved

---

### 🧪 Example Queries

```sql
-- Sort patients by age (ascending)
SELECT *
FROM patients
ORDER BY age;
```

```sql
-- Sort patients by age (descending)
SELECT *
FROM patients
ORDER BY age DESC;
```

```sql
-- Sort by department first, then by age
SELECT *
FROM patients
ORDER BY department ASC, age DESC;
```

---

### ⚠️ NULL Value Behavior

* `NULL` values usually appear:

  * **First** when using `ASC`
  * **Last** when using `DESC`
    *(Behavior may vary slightly by SQL engine)*

---

### 💡 Tips & Best Practices

✅ Always use `ORDER BY` as the **last clause** in a query
✅ Be explicit with `ASC` / `DESC` for clarity
✅ Use column positions (e.g., `ORDER BY 1`) cautiously
✅ Combine with `LIMIT` for top-N queries

---

