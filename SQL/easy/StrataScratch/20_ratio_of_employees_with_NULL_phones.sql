--problem: Calculate and return the ratio of employees who have a `NULL` phone number.

SELECT 
    1.0*(COUNT(*)-COUNT(phone_number))/NULLIF(COUNT(*),0) AS null_phone_ratio
FROM techcorp_workforce

-- SELECT 
--     (COUNT(*)-COUNT(phone_number))::DECIMAL/NULLIF(COUNT(*),0) AS null_phone_ratio
-- FROM techcorp_workforce;
