SELECT
	pubs.pub_id,
	pubs.pub_name,
	SUM(beverages.price_per_unit) AS total_beverage_price,
	SUM(sales.quantity) AS total_quantity_sold,
	SUM(beverages.price_per_unit)* SUM(sales.quantity) AS total_revenue
	
	
FROM sales
JOIN beverages
JOIN pubs
ON sales.pub_id = pubs.pub_id
AND sales.beverage_id = beverages.beverage_id

GROUP BY
	pubs.pub_id
ORDER BY
	total_revenue DESC
