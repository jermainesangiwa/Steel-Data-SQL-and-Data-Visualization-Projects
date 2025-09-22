SELECT
	Patients.city AS City,
	COUNT(Visits.visit_id) AS Number_of_Visits

FROM Visits
JOIN Patients
ON Visits.patient_id = Patients.patient_id

GROUP BY Patients.city
ORDER BY Number_of_Visits DESC
LIMIT 5