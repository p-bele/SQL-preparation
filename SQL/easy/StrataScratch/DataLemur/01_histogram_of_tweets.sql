WITH cte AS (
  SELECT COUNT(*) AS bucket
  FROM tweets
  WHERE EXTRACT(YEAR FROM tweet_date)=2022
  GROUP BY user_id
)
SELECT bucket, COUNT(*) AS number
FROM cte
GROUP BY bucket ;
