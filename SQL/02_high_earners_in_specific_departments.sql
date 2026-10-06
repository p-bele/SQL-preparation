--problem: Find all employees who earn more than $80,000 and work in either the HR or Admin department
--platform: StrataScratch
--logic: using IN, instead of multiple or's to filter departments and then filtering salary

SELECT 
    first_name,
    last_name, 
    department,
    salary 
FROM techcorp_workforce
WHERE department IN ('HR','Admin')
    AND salary > 80000;
