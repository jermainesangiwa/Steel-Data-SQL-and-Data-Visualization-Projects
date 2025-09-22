SELECT
	Patients.patient_id,
	Patients.patient_name,
	Visits.visit_date,
	COUNT(Visits.visit_id) AS Visits_Number

FROM Visits
JOIN Patients
ON Visits.patient_id = Patients.patient_id

GROUP BY Patients.patient_id, Patients.patient_name, Visits.visit_date
ORDER BY Visits_Number DESC