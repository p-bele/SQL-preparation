SELECT 
  part,
  assembly_step
FROM parts_assembly
WHERE finish_date IS NULL; --hasn't finished

/*solution 2 (overengineered)

SELECT 
  part,
  assembly_step
FROM parts_assembly
WHERE part IN (SELECT part FROM parts_assembly 
              WHERE assembly_step=1 AND finish_date IS NOT NULL)
  AND finish_date IS NULL;
*/
