## 🧠 Day 4 – LIMIT (FETCH) and OFFSET

### Pagination Concepts in SQL

---

### 📘 Topics Covered

* `LIMIT`
* `OFFSET`
* Pagination concepts

---

### 📖 Overview

The **`LIMIT` clause** restricts the number of rows returned in a result set.
The **`OFFSET` clause** skips a specified number of rows before returning results.

Together, `LIMIT` and `OFFSET` are used to implement **pagination**, which helps break large datasets into smaller, manageable chunks—commonly used in applications, dashboards, and reports.

---

### 📚 Basic Syntax

#### Limit the number of rows returned

```sql
SELECT column1, column2
FROM table_name
LIMIT number_of_rows;
```

#### Skip rows before returning results

```sql
SELECT column1, column2
FROM table_name
LIMIT number_of_rows OFFSET skip_rows;
```

---

### 🧪 Example Queries

```sql
-- Fetch first 5 rows
SELECT *
FROM patients
LIMIT 5;
```

```sql
-- Skip first 10 rows and fetch next 5
SELECT *
FROM patients
LIMIT 5 OFFSET 10;
```

---

### 📄 Pagination Example

| Page   | LIMIT | OFFSET |
| ------ | ----- | ------ |
| Page 1 | 10    | 0      |
| Page 2 | 10    | 10     |
| Page 3 | 10    | 20     |

```sql
-- Page 2 results
SELECT *
FROM services_weekly
LIMIT 10 OFFSET 10;
```

---

### 🔑 Key Points

* `LIMIT` controls **how many rows** are displayed
* `OFFSET` controls **where the result set starts**
* Pagination improves **performance and readability**
* Always use `ORDER BY` with pagination for consistent results

---

### ⚠️ SQL Dialect Note

* **MySQL / PostgreSQL / SQLite** → `LIMIT` & `OFFSET`
* **SQL Server / Oracle** → `OFFSET FETCH`

```sql
SELECT *
FROM patients
ORDER BY patient_id
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;
```

---

### 💡 Tips & Best Practices

* Always combine pagination with `ORDER BY`
* Avoid large `OFFSET` values on very big tables
* Use indexed columns for better performance
* Ideal for APIs and user-facing applications

---

