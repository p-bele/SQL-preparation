--problem: Calculate the total, average, minimum, and maximum salary. Give each column a clear alias.
--platform: StrataScratch
-- logic: using the aggregate functions with a clear alias to be meaningful

SELECT 
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary
FROM techcorp_workforce;
