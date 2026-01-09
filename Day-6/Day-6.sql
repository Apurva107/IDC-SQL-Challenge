/*1. Count the number of patients by each service.
2. Calculate the average age of patients grouped by service.
3. Find the total number of staff members per role.*/

SELECT COUNT(patient_id) AS patients,
	service
FROM patients
GROUP BY service;

SELECT AVG(age) AS avg_age,
	service
FROM patients
GROUP BY service;

SELECT COUNT(staff_id) AS total_staff,
	role
FROM staff
GROUP BY role;

/*Question: For each hospital service, calculate the total number of patients admitted, 
total patients refused, and the admission rate (percentage of requests that were admitted).
Order by admission rate descending.*/

SELECT service,
	SUM(patients_request) AS total_request,
	SUM(patients_refused) AS total_refused,
	SUM(patients_admitted) AS total_admitted,
	ROUND((SUM(patients_admitted)/SUM(patients_request))*100,2) AS admission_rate
FROM services_weekly
GROUP BY service
ORDER BY admission_rate DESC;