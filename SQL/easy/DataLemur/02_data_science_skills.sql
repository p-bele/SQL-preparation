SELECT 
  candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(DISTINCT skill)=3

/*
SELECT 
    candidate_id
FROM candidates
GROUP BY candidate_id
HAVING 
    SUM(CASE WHEN skill = 'Python' THEN 1 ELSE 0 END) > 0
    AND SUM(CASE WHEN skill = 'Tableau' THEN 1 ELSE 0 END) > 0
    AND SUM(CASE WHEN skill = 'PostgreSQL' THEN 1 ELSE 0 END) > 0;
*/
