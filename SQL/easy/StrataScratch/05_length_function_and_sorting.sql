--problem: Sort employees by the length of their first name (longest first). Return first name, last name, 
          and the length as a new column.
--platform: StrataScratch
--logic: the LENGTH function counts the number of letters in each name, then we sort the reslut using the 
        alias.

SELECT
  first_name,
  last_name,
  LENGTH(first_name) AS name_length
FROM techcorp_workforce
ORDER BY name_length DESC;
