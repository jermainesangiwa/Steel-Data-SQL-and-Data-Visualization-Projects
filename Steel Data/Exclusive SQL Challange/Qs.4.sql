SELECT
	Diagnoses.diagnosis_id,
	Diagnoses.diagnosis_name,
	COUNT(Visits.visit_id) AS Number_of_Visits

FROM Visits
JOIN Diagnoses
ON Visits.diagnosis_id = Diagnoses.diagnosis_id

GROUP BY Diagnoses.diagnosis_id
ORDER BY Number_of_Visits DESC
LIMIT 3