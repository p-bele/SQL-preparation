--problem: A product analytics team wants to understand which events are most commonly performed on MacBook Pro devices.
       Count the number of times each event was performed using a MacBook Pro. Output the event name and its event count.
-- platform: StrataScratch
--logic: Filter log data for MacBook Pro devices, then aggregate records by event type to calculate total occurrences, 
    sorted from most to least frequent.


SELECT event_name, count(*) AS count_per_event
FROM playbook_events
WHERE device='macbook pro'
GROUP BY event_name
ORDER BY count_per_event DESC ;
