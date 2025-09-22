SELECT
	country,
	count(pub_id) AS number_of_pubs
	
FROM pubs

GROUP BY 
	country
ORDER BY
	number_of_pubs DESC
