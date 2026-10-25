SELECT
  department,
  AVG(salary) AS avg_salary
FROM techcorp_workforce
WHERE joining_date > '2022-01-01'
GROUP BY department
HAVING avg(salary)>80000;
