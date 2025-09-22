SELECT
	salespersons.name AS Name,
	salespersons.city AS City,
	COUNT(sales.car_id) AS Total_Cars_Sold,
	strftime('%Y', sales.purchase_date) AS Year

FROM sales
INNER JOIN salespersons ON
sales.salesman_id = salespersons.salesman_id

WHERE
	Year = '2023'

GROUP BY
	Name, City
ORDER BY
	Total_Cars_Sold DESC