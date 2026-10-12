


SELECT event_name, count(*) AS count_per_event
FROM playbook_events
WHERE device='macbook pro'
GROUP BY event_name
ORDER BY count_per_event DESC ;
