SELECT
	Teams.team_name AS Team_Name,
	Teams.country AS Country,
	COUNT(Matches.winner_id) AS Wins

FROM Matches
LEFT JOIN Teams ON
Matches.winner_id = Teams.team_id

GROUP BY
	Team_Name
ORDER BY
	Wins DESC
	
LIMIT 1