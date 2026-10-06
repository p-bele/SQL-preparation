## 🚀 Skills & Concepts Covered So Far

### 1. Foundations & Data Retrieval
* **Basic Filtering & Sorting**: Restricting rows with `WHERE` and organizing results using `ORDER BY` (including `ASC`/`DESC`).
* **Column Aliasing**: Renaming columns using `AS` for clearer output formatting.

### 2. Aggregations & Grouping
* **Aggregate Functions**: Computing summary statistics using `SUM`, `AVG`, `MIN`, and `MAX`.
* **Data Grouping**: Splitting data into logical groups with `GROUP BY`.
* **Group Filtering**: Applying post-aggregation filters using `HAVING` (distinguishing it from `WHERE`).

### 3. Subqueries & Table Relations
* **Correlated Subqueries**: Writing inner queries that depend on the outer query for row-by-row validation.
* **Inline Views**: Utilizing subqueries inside the `FROM` clause as dynamic, temporary tables.
* **Table Joins**: Connecting multiple tables using `INNER JOIN` and managing Cartesian products with `CROSS JOIN` (or `JOIN ON true`).

### 4. Advanced Structure & Data Integrity (Current Focus)
* **CTEs (Common Table Expressions)**: Modularizing complex queries using `WITH` statements to write clean, top-down, and readable code.
* **Multi-CTE Workflows**: Defining multiple sequential CTEs where subsequent expressions build upon previous ones.
* **Preventing Fan-Out Effects**: Aggregating many-to-one relationships within a CTE *before* joining to protect core metrics (like salaries) from duplicating.
* **Defensive Programming**: Protecting queries from crashing using `NULLIF` (to avoid division-by-zero errors) and handling missing values with `COALESCE`.


## 📁 Repository Structure
The exercises are organized by topic and complexity. Each solution includes the problem statement, the core logic behind the approach, and the optimized SQL code.

---
*Feel free to explore my solutions and follow my progress!*
