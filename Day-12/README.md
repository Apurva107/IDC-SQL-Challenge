# Day 12: NULL Values and IS NULL / IS NOT NULL

**Topics:** NULL handling, IS NULL, IS NOT NULL, COALESCE

---

## 🔑 Key Concept – Understanding NULL in SQL

- `NULL` represents **missing or unknown data**.  
- It is **not**:  
  - Zero (`0`)  
  - An empty string (`''`)  
  - A default value  

It simply indicates that the **value is absent**.

---

## 💡 Tips & Tricks for Handling NULL

- **Never use `=` or `!=` with NULL**  
  - Wrong: `WHERE column = NULL` or `WHERE column != NULL`  
  - Correct: `WHERE column IS NULL` or `WHERE column IS NOT NULL`  

- **NULL in arithmetic results in NULL**  
  - Example: `5 + NULL = NULL`, `NULL * 10 = NULL`  

- **COALESCE function**  
  - Returns the first non-NULL value among its arguments.  
  - Example usage: `COALESCE(column1, column2, 'default')`  

- **Counting NULLs**  
  - `COUNT(*)` includes NULL values  
  - `COUNT(column)` ignores NULL values  

- **Handling NULL in sorting**  
  - Use functions like `COALESCE` to push NULLs to the end  
  - Example concept: `ORDER BY COALESCE(column, 'ZZZZ')`  

- **Empty strings vs NULL**  
  - `''` (empty string) is **not NULL**  
  - Always check for both when cleaning or filtering data  

---

## 📌 Summary

- `NULL` = missing/unknown data  
- Use `IS NULL` / `IS NOT NULL` for checks  
- Use `COALESCE` to provide default values  
- Be careful in arithmetic, aggregation, and sorting with NULL  

---
