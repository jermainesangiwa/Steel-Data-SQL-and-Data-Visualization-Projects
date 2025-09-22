SELECT
	SUM(CASE WHEN Diagnoses.diagnosis_name = 'COVID-19' THEN 1 ELSE 0 END) AS COVID_Patients,
	COUNT(DISTINCT Patients.patient_id) AS Total_Patients,
	(CAST(SUM(CASE WHEN Diagnoses.diagnosis_name = 'COVID-19' THEN 1 ELSE 0 END) AS FLOAT)/COUNT(DISTINCT Patients.patient_id))*100 AS Percentage

FROM Visits
JOIN Patients
JOIN Diagnoses
ON Visits.patient_id = Patients.patient_id
AND Visits.diagnosis_id = Diagnoses.diagnosis_id

