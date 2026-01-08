/* 1. Retrieve all columns from the `patients` table.
2. Select only the `patient_id`, `name`, and `age` columns from the `patients` table.
3. Display the first 10 records from the `services_weekly` table. */

--1
SELECT *
FROM patients;
--2
SELECT patient_id,
	  name,
	  age
FROM patients;
---3
SELECT TOP 10 * FROM services_weekly;

/*Question: List all unique hospital services available in the hospital.*/
SELECT DISTINCT service AS hospital_services
FROM patients ;