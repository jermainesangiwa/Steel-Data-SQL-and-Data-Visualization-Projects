SELECT
	Patients.patient_id,
	Patients.patient_name AS Patient_Name

FROM Visits
JOIN Patients
JOIN Diagnoses
ON Visits.patient_id = Patients.patient_id
AND Visits.diagnosis_id = Diagnoses.diagnosis_id

WHERE
	Diagnoses.diagnosis_name = 'COVID-19'

ORDER BY
	Patients.patient_id