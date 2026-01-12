# Day 11 : DISTINCT and Handling Duplicates

**Topics:** DISTINCT, removing duplicates, unique values

---

## 📖 Overview

The `DISTINCT` keyword in SQL **removes duplicate rows** from your query results, returning only **unique values**.  

---

## 🔑 Key Concepts

- `DISTINCT` considers **all selected columns together**, returning **unique combinations**.  
- Can impact **performance** on large datasets.  
- Use `DISTINCT` for **unique values**, and `GROUP BY` when you also need **aggregates**.  
- `DISTINCT` applies to **entire rows**, not individual columns.  
- **NULL values** are treated as equal; only one `NULL` is returned.  

---

## 💡 Tips & Tricks

- **DISTINCT vs GROUP BY**  
  - Use `DISTINCT` for simple uniqueness.  
  - Use `GROUP BY` when aggregation (SUM, COUNT, AVG, etc.) is needed.  

- **Performance Consideration**  
  - Removing duplicates can be expensive.  
  - Remove duplicates **before processing** if possible.  

- **Counting Unique Values**  
  - Use `COUNT(DISTINCT column)` to count unique values.  

---

## 📚 Resources

- Video tutorial: [DISTINCT in SQL](https://youtu.be/7Khm900vYNs?si=BcEV2IKnRS7-FzzA)  

---




