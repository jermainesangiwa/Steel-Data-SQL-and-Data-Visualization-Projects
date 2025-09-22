SELECT
	cars.style AS Style,
	SUM(cars.cost_$) AS Total_Revenue

FROM sales
INNER JOIN cars ON
sales.car_id = cars.car_id

WHERE
	Style = 'Hatchback'
	
ORDER BY
	Total_Revenue DESC
