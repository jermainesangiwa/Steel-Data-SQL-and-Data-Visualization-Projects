SELECT
Players.player_id AS Player_ID,
Players.player_name AS Name,
Teams.team_name AS Team_Name

FROM Players
INNER JOIN Teams ON
Players.team_id = Teams.team_id

WHERE
	Player_ID = 3
	

