--problem: Calculate the ratio of employees who have a phone number using CAST for decimal division and NULLIF for safety.

SELECT
    COUNT(*) as total,
    COUNT(phone_number) as has_phone,
    1.0*COUNT(phone_number)/NULLIF(COUNT(*),0) AS RATIO  --*1.0 converts the numerator to decimal allowing decimal divison
FROM techcorp_workforce;
