SELECT
	sales.purchase_date,
	cars.*
	
FROM sales
INNER JOIN cars ON
sales.car_id = cars.car_id

WHERE
	strftime('%Y', sales.purchase_date) = '2022'