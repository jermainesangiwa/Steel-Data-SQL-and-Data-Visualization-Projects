SELECT
	Teams.team_name AS Team_Name,
	ROUND(AVG(Players.salary), 0) AS AVG_Salary
	
FROM Players
INNER JOIN Teams ON
Players.team_id = Teams.team_id

WHERE
	Teams.country = 'USA'

GROUP BY
	team_name
ORDER BY
	AVG_Salary DESC