SELECT
	salespersons.name AS Name,
	salespersons.age AS Age,
	SUM(cars.cost_$) AS Total_Revenue,
	strftime('%Y', sales.purchase_date) AS Year

FROM sales
INNER JOIN cars
INNER JOIN salespersons ON
sales.car_id = cars.car_id AND
sales.salesman_id = salespersons.salesman_id

WHERE
	Year = '2022'

GROUP BY
	Name, Age
ORDER BY
	Total_Revenue DESC