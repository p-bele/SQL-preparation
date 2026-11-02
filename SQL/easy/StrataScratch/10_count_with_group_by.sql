--problem: Count Employees per Department
--platfrom: StrataScratch
--logic: Aggregate employee records to calculate the head count for each department

SELECT
    department,
    COUNT(*) AS employee_count
FROM 
    techcorp_workforce
GROUP BY 
    department
ORDER BY 
    employee_count DESC;
