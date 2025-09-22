SELECT
	products.category AS Category,
	SUM(products.price) AS 'Total Revenue'

FROM products

GROUP BY
	Category
ORDER BY
	'Total Revenue' DESC
	
	