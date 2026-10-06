--problem: Find all users whose phone number is not '555-1234', including users who have no phone number at all.
--platform: StrataScratch
--logic: using the IS NULL in the where clause

SELECT
  user_id,
  user_name,
  phone_number
FROM fintech_app_users
WHERE phone_number <> '555-1234'
    OR phone_number IS NULL;
