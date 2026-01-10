/*1. Find services that have admitted more than 500 patients in total.
2. Show services where average patient satisfaction is below 75.
3. List weeks where total staff presence across all services was less than 50.*/
USE HospitalDB
GO

SELECT service,
	SUM(patients_admitted) AS total_patients
FROM services_weekly
GROUP BY service
HAVING SUM(patients_admitted) > 500;


SELECT service,
	AVG(patient_satisfaction) AS avg_satisfaction
FROM services_weekly
GROUP BY service
HAVING AVG(patient_satisfaction) < 75;

SELECT week,
	SUM(CAST(present AS INT))AS total_presence
FROM staff_schedule
GROUP BY week
HAVING SUM(CAST(present AS INT)) < 50;

/*Question: Identify services that refused more than 100 patients in total and had an average patient satisfaction below 80.
Show service name, total refused, and average satisfaction.*/

SELECT service,
	SUM(patients_refused) AS total_refused,
	AVG(patient_satisfaction) AS avg_satisfaction
FROM services_weekly
GROUP BY service
HAVING SUM(patients_refused) > 100 AND AVG(patient_satisfaction) < 80


