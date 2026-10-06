--problem: Find the 3 highest-value orders placed by customer 15.
--platform: StrataScratch
--logic: Filter by customer ID, then combine ORDER BY and LIMIT
        to sort total cost in descending order and extract the top 3 rows. 

SELECT
  id,
  order_date,
  order_details,
  total_order_cost
FROM orders
WHERE cust_id=15
ORDER BY total_order_cost DESC
LIMIT 3;
