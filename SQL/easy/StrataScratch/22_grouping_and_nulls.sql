-- when grouping, all nulls are getting grouped together

--problem: Find customer IDs that placed more than one order in `online_retail`. 
--Notice how rows missing a customer ID form their own group.
SELECT 
    customerid, 
    COUNT(*) AS orders_count
FROM online_retail
GROUP BY customerid
HAVING COUNT(*)>1 ;

cusomerid | orders_count
1         |  3
2         |  2
null      |  15
