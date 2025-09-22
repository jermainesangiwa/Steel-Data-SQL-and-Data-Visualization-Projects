SELECT
	Teams.team_name AS Team_Name,
	COUNT(Players.player_id) AS Number_of_Players

FROM Players
INNER JOIN Teams ON
Players.team_id = Teams.team_id

GROUP BY
	Team_Name
ORDER BY
	Number_of_Players DESC