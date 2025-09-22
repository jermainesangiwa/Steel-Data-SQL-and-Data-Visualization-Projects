SELECT
	salespersons.name AS Name,
	cars.*

FROM sales
INNER JOIN salespersons
INNER JOIN cars ON
sales.salesman_id = salespersons.salesman_id AND
sales.car_id = cars.car_id

ORDER BY
	Name DESC