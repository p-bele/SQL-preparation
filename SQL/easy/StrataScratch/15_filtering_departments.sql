

SELECT
  department,
  COUNT(*) AS emp_count,
  AVG(salary) AS avg_sal
FROM techcorp_workforce
GROUP BY department
HAVING COUNT(*)>2 AND AVG(SALARY)>75000
ORDER BY emp_count DESC ;
