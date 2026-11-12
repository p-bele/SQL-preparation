--The COALESCE function returns the first of its arguments that is not null. 
SELECT COALESCE(description, short_description, '(none)')
--This returns description if it is not null, otherwise short_description if it is not null, otherwise (none).

--problem:Calculate the average salary two ways: once normally (NULLs excluded) and once treating NULLs as 0 using COALESCE.
SELECT
  AVG(salary) AS avg_excluding_nulls,
  AVG(COALESCE(salary, 0)) AS avg_including_nulls
FROM techcorp_workforce;
