SELECT
	cars.style AS Style,
	strftime('%Y', sales.purchase_date) AS Purchase_Year,
	SUM(cars.cost_$) AS Totla_Revenue

FROM sales
INNER JOIN cars ON
sales.car_id = cars.car_id

WHERE
	strftime('%Y', sales.purchase_date) = '2022' AND
	Style = 'SUV'

ORDER BY
	Style DESC