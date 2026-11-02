--platfrom: StrataScratch
--logic: First group the rows into buckets by action, and then use HAVING to filter out any groups 
--        where the row count in the bucket isn't greater than 1.

SELECT
  action,       --e.g. page_load, scroll_down etc...
  count(*) AS times_occured
FROM facebook_web_log
GROUP BY action 
HAVING count(*)>1;
