--solution #1 (best practice)
SELECT 
  COUNT(*) FILTER (WHERE device_type='laptop') AS laptop_views,
  COUNT(*) FILTER (WHERE device_type IN ('tablet','phone')) AS mobile_views
FROM viewership;


--solution #2

-- SELECT 
--   SUM(CASE WHEN device_type= 'laptop' THEN 1 ELSE 0 END) AS laptop_views,
--   SUM(CASE WHEN device_type IN ('tablet','phone') THEN 1 ELSE 0 END) AS mobile_views
-- FROM viewership;


--solution #3

-- WITH laptop AS (
--   SELECT COUNT(*) AS laptop_views
--   FROM viewership   
--   WHERE device_type='laptop'),
-- mobile AS (
-- SELECT 
--   COUNT(*) AS mobile_views
-- FROM viewership 
-- WHERE device_type IN ('tablet','phone')
-- )
-- SELECT *
-- FROM laptop CROSS JOIN mobile;

