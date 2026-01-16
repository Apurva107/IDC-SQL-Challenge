/*1. Join patients, staff, and staff_schedule to show patient service and staff availability.
2. Combine services_weekly with staff and staff_schedule for comprehensive service analysis.
3. Create a multi-table report showing patient admissions with staff information.*/


USE HospitalDB
GO

SELECT 
	  p.patient_id,
      p.name AS patient_name,
      p.age,
      p.arrival_date,
      p.departure_date,
      p.service,
      p.satisfaction,
      s.staff_id,
      s.staff_name,
      s.role,
      
      ss.week,
      ss.present
FROM patients p
LEFT JOIN staff s
ON p.service = s.service
LEFT JOIN staff_schedule ss
ON s.staff_id = ss.staff_id
    AND s.service = ss.service;


/*2. Combine services_weekly with staff and staff_schedule for comprehensive service analysis.*/
SELECT
    sw.week,
    sw.month,
    sw.service,
    sw.available_beds,
    sw.patients_request,
    sw.patients_admitted,
    sw.patients_refused,
    sw.patient_satisfaction,
    sw.staff_morale,
    sw.event,

    s.staff_id,
    s.staff_name,
    s.role,

    ss.present
FROM services_weekly sw
LEFT JOIN staff s
    ON sw.service = s.service
LEFT JOIN staff_schedule ss
    ON s.staff_id = ss.staff_id
   AND sw.week = ss.week
   AND sw.service = ss.service
ORDER BY
    sw.week,
    sw.service,
    s.staff_name;

----- 3rd question----
       
SELECT
    p.patient_id,
    p.name AS patient_name,
    p.age,
    p.arrival_date,
    p.departure_date,
    p.service AS patient_service,
    p.satisfaction AS patient_satisfaction,

    s.staff_id,
    s.staff_name,
    s.role,

    ss.week,
    ss.present
FROM patients p
LEFT JOIN staff s
    ON p.service = s.service
LEFT JOIN staff_schedule ss
    ON s.staff_id = ss.staff_id
   AND ss.week = DATEPART(WEEK, p.arrival_date)
ORDER BY
    p.arrival_date,
    p.patient_id,
    s.staff_name;


