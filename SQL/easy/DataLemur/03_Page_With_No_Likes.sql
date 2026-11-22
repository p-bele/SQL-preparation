--two ways of solving this exercise, the first one combining LEFT JOIN with NULL, and the second one using a correlated subquery
/*
SELECT 
  p.page_id
FROM pages p LEFT JOIN page_likes l 
  ON  p.page_id=l.page_id
WHERE l.page_id IS NULL
ORDER BY p.page_id ; */

SELECT 
  p.page_id
FROM pages p
WHERE NOT EXISTS (SELECT 1
                  FROM page_likes l
                  WHERE p.page_id=l.page_id)
ORDER BY p.page_id;
