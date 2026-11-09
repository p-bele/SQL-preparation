--platform: StrataScratch
--problem:Find departments with at more than or equal 5 employees.

--the normal way using HAVING
SELECT department
FROM employee 
GROUP BY department
HAVING COUNT(id) >= 5;

--using a subquery in the FROM clause to create the groups and then filter the groups in the WHERE clause
SELECT department
FROM (SELECT department, count(id) AS employees
      FROM employee
      GROUP BY department) AS groups
WHERE employees>=5
