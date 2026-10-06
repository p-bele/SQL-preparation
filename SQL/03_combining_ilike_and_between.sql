--problem Find orders where the product name starts with 'S' and the total cost is between 50 and 100.
--platform: StrataScratch
--logic: using ILIKE for case insensitive pattern matching and between instead of two AND's

SELECT
  id,
  order_details,
  total_order_cost
FROM orders
WHERE order_details ILIKE 's%' 
AND total_order_cost BETWEEN 50 AND 100;
