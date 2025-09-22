SELECT
	Teams.team_name AS Team_Name,
	Players.player_name AS Captain_Name

FROM Players
LEFT JOIN Teams ON
Players.team_id = Teams.team_id AND
Players.player_id = Teams.captain_id

WHERE
	Teams.team_id = 2