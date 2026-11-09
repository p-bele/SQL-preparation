--platform: StrataScratch
--problem: Find departments with more than 2 employees and an average salary over 75000.
--logic: I will create department bins to use aggregate functions and then filter these bins with HAVING 

SELECT
  department,
  COUNT(*) AS emp_count,
  AVG(salary) AS avg_sal
FROM techcorp_workforce
GROUP BY department
HAVING COUNT(*)>2 AND AVG(SALARY)>75000
ORDER BY emp_count DESC ;
