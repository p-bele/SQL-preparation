--platform: StrataScratch
--logic: This finds departments where recent hires have an average salary over 80K. 
--        WHERE narrows down who’s included, HAVING narrows down which groups you see.

SELECT
  department,
  AVG(salary) AS avg_salary
FROM techcorp_workforce
WHERE joining_date > '2022-01-01'
GROUP BY department
HAVING avg(salary)>80000;
