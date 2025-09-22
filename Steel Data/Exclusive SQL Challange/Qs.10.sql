SELECT
	v1.visit_date,
	COUNT(v2.visit_id) AS visit_number

FROM Visits AS v1
JOIN Visits AS v2
ON v1.visit_id = v2.visit_id

GROUP BY v1.visit_date
ORDER BY visit_number