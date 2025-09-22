SELECT
	Players.player_name AS Name,
	Players.salary AS Salary
	
FROM Players

WHERE
	salary > 100000

ORDER BY
 Salary DESC