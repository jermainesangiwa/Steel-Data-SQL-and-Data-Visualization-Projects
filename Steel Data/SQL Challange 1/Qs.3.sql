SELECT
	salespersons.name AS Name,
	SUM(cars.cost_$) AS Total_Revenue

FROM sales
INNER JOIN salespersons
INNER JOIN cars ON
sales.salesman_id = salespersons.salesman_id AND
sales.car_id = cars.car_id

GROUP BY
	salespersons.name
ORDER BY
	Total_Revenue DESC