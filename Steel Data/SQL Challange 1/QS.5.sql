SELECT
	cars.type AS Types,
	COUNT(sales.sale_id) AS Cars_Sold,
	SUM(cars.cost_$) AS Total_Revenue

FROM sales
INNER JOIN cars ON
sales.car_id = cars.car_id

GROUP BY
	cars.type
ORDER BY
	Total_Revenue DESC