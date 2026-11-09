SELECT department
FROM employee 
GROUP BY department
HAVING COUNT(id) >= 5;
