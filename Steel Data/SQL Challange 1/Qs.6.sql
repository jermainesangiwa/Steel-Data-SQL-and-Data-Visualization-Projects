SELECT
	 salespersons.name AS Name,
	 sales.purchase_date AS Purchase_Date,
	 cars.*

FROM sales
INNER JOIN salespersons
INNER JOIN cars ON
sales.salesman_id = salespersons.salesman_id AND
sales.car_id = cars.car_id

WHERE
	strftime('%Y', Purchase_Date) = '2021'  AND
	Name = 'Emily Wong'

ORDER BY
	Purchase_Date DESC
	

