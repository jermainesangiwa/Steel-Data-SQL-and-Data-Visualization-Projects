SELECT
	Patients.patient_id,
	Patients.patient_name,
	COUNT(DISTINCT Visits.symptom_id) AS Number_of_Symptoms

FROM Visits
JOIN Patients
ON Visits.patient_id = Patients.patient_id

GROUP BY Patients.patient_id
ORDER BY Number_of_Symptoms DESC