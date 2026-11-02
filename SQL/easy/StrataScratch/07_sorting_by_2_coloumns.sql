--problem: Sort departments alphabetically, and within each department show the highest earners first.
--platform: StrataScratch
--logic: ORDER BY lets you sort results using more than one coloumn, so you can sort with another variable
--       if you have a lot of ties after the first sorting.

SELECT 
  last_name,
  department,
  salary
FROM techcorp_workforce
ORDER BY department ASC, salary DESC; 
  
