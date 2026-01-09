/*1. Count the total number of patients in the hospital.
2. Calculate the average satisfaction score of all patients.
3. Find the minimum and maximum age of patients.*/


SELECT COUNT(patient_id) AS total_patients
FROM patients;

SELECT AVG(satisfaction) AS satisfaction_score
FROM patients;

SELECT
	MIN(age) AS youngest_age,
	MAX(age) AS oldest_age
FROM patients;

/*Question: Calculate the total number of patients admitted, total patients refused, 
and the average patient satisfaction across all services and weeks. Round the average satisfaction to 2 decimal places.*/

SELECT SUM(patients_admitted) AS total_admitted,
	SUM(patients_refused) AS total_refused,
	(ROUND(AVG(patient_satisfaction),2)) AS avg_satisfaction
FROM services_weekly;


