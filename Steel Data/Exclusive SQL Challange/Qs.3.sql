SELECT
	AVG(Patients.age) AS Average_Age

FROM Visits
JOIN Patients
JOIN Diagnoses
ON Visits.patient_id = Patients.patient_id
AND Visits.diagnosis_id = Diagnoses.diagnosis_id

WHERE
	Diagnoses.diagnosis_name = 'Pneumonia'