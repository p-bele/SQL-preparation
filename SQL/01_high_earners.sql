--problem: Find employees earning more than 100,000.
--platform: StrataScratch
--logic: simple row filtering in the where clause

SELECT
  first_name,
  last_name,
  salary
FROM techcorp_workforce
where salary> 100000;
