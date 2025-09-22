SELECT
	Diagnoses.diagnosis_id,
	Diagnoses.diagnosis_name,
	ROUND(AVG(Patients.age), 0) AS Average_Age

FROM Visits
JOIN Patients
JOIN Diagnoses
ON Visits.patient_id = Patients.patient_id
AND Visits.diagnosis_id - Diagnoses.diagnosis_id

GROUP BY Diagnoses.diagnosis_id
ORDER BY Average_Age DESC