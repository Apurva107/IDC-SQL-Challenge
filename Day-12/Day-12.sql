/* 1. Find all weeks in services_weekly where no special event occurred.
2. Count how many records have null or empty event values.
3. List all services that had at least one week with a special event. */

USE HospitalDB
GO


SELECT  week AS weeks,
	event
FROM services_weekly
WHERE event = 'none';

SELECT COUNT(*) AS null_events
FROM services_weekly
WHERE event IS NULL OR event =' ';

SELECT DISTINCT week,
	service,
	event
FROM services_weekly
WHERE event IS NOT NULL AND event !='none' AND event !=' ';

/*Question: Analyze the event impact by comparing weeks with events vs weeks without events.
Show: event status ('With Event' or 'No Event'), count of weeks, average patient satisfaction, and 
average staff morale. Order by average patient satisfaction descending.*/

SELECT CASE WHEN event !='none' THEN 'With Event'
ELSE 'No Event'
END AS event,
	COUNT(*) AS weeks,
	AVG(patient_satisfaction) AS satisfaction,
	AVG(staff_morale) AS avg_morale
FROM services_weekly
GROUP BY event
ORDER BY satisfaction DESC;