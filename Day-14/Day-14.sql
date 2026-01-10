/*1. Show all staff members and their schedule information (including those with no schedule entries).
2. List all services from services_weekly and their corresponding staff (show services even if no staff assigned).
3. Display all patients and their service's weekly statistics (if available).*/

SELECT s.staff_id,
	s.staff_name,
	s.role,
	s.service,
	ss.week,
	ss.present
FROM staff s
LEFT JOIN staff_schedule ss
ON s.staff_id = ss.staff_id;

SELECT sw.service, 
	sw.patients_admitted, 
	sw.patient_satisfaction, 
	sw.staff_morale, 
	s.staff_id, 
	s.staff_name, 
	s.role
FROM services_weekly sw
LEFT JOIN staff s
on sw.service = s.service;

SELECT p.patient_id, 
	p.name, 
	p.age, 
	p.service,
	p.satisfaction, 
	sw.week, 
	sw.patients_admitted, 
	sw.patient_satisfaction
FROM patients p
LEFT JOIN services_weekly sw
on p.service = sw.service;

/*Create a staff utilisation report showing all staff members (staff_id, staff_name, role, service) 
and the count of weeks they were present (from staff_schedule).
Include staff members even if they have no schedule records. Order by weeks present descending.*/


SELECT 
    s.staff_id,
    s.staff_name,
    s.role,
    s.service,
    COUNT(ss.week) AS weeks_present
FROM 
    staff s
LEFT JOIN 
    staff_schedule ss
    ON s.staff_id = ss.staff_id
GROUP BY 
    s.staff_id, s.staff_name, s.role, s.service
ORDER BY 
    weeks_present DESC;
