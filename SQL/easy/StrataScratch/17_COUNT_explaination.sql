--some very crucial theory

SELECT
  COUNT(*) AS total_rows, -- Counts all rows
  COUNT(email) AS has_email, -- Excludes NULLs
  COUNT(DISTINCT email) AS unique_emails
FROM techcorp_workforce;

--Same table, three different numbers. 1,000 users total, but only 847 have emails. This is incredibly common in real data.
