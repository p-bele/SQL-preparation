-- NULLIF(x, 0)  -- Returns NULL if x equals 0, otherwise returns x

SELECT
    COUNT(phone_number)::NUMERIC / NULLIF(COUNT(*),0) AS phone_ratio
FROM techcorp_workforce
WHERE department = 'IT' -- no IT department in the data
