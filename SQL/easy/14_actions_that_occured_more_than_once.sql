SELECT
  action,
  count(*) AS times_occured
FROM facebook_web_log
GROUP BY action 
HAVING count(*) >1;
