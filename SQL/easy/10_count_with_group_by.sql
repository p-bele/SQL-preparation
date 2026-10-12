

SELECT
    department,
    COUNT(*) AS employee_count
FROM 
    techcorp_workforce
GROUP BY 
    department
ORDER BY 
    employee_count DESC;
