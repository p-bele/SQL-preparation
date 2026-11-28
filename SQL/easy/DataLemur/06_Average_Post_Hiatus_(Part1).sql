WITH cte AS (
  SELECT 
    user_id,
    MAX(post_date::date)-MIN(post_date::date) AS days_between
  FROM posts
  WHERE EXTRACT(YEAR FROM post_date)=2021
  GROUP BY user_id
)
SELECT 
  user_id,
  days_between
FROM cte 
WHERE days_between!=0;


--SOLUTION #2 WITH HAVING INSTEAD OF A CTE

-- SELECT 
--   user_id,
--   MAX(post_date::date)-MIN(post_date::date) AS days_between
-- FROM posts
-- WHERE EXTRACT(YEAR FROM post_date)=2021
-- GROUP BY user_id
-- HAVING MAX(post_date::date)-MIN(post_date::date)!=0;


--SOLUTION #3 

-- SELECT 
--   user_id,
--   MAX(post_date::DATE)- MIN(post_date::DATE) AS days_between
-- FROM posts
-- WHERE post_date::DATE BETWEEN '2021-01-01' AND '2021-12-31'
-- GROUP BY user_id
-- HAVING COUNT(post_id)>1;
