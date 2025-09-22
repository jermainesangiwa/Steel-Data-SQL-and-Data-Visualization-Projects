SELECT
	salespersons.name,
	COUNT(sales.sale_id) AS total_cars_sold

FROM sales
INNER JOIN salespersons ON
sales.salesman_id = salespersons.salesman_id

GROUP BY
	salespersons.name
ORDER BY
	total_cars_sold DESC