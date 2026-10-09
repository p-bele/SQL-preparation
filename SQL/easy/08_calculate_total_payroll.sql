-- problem: Calculate the total payroll by summing all salaries. Give the result a clear alias.
-- StrataScratch
-- logic: using the SUM aggregate function to calculate the total sum


SELECT SUM(SALARY) AS TOTAL_PAYROLL 
FROM techcorp_workforce;
