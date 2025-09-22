SELECT
	Patients.patient_id,
	Patients.patient_name AS Patient_Name,
	COUNT(Visits.visit_id) AS Number_of_Visits 
	
FROM Visits
JOIN Patients
ON Visits.patient_id = Patients.patient_id

GROUP BY Patients.patient_id
ORDER BY Number_of_Visits DESC

