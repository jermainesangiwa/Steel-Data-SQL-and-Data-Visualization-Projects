WITH CTE_1 as(
	SELECT
		customers.customer_id,
		customers.age,
		orders.order_id
	
	FROM customers
	JOIN orders
	ON customers.customer_id = orders.order_id
),
CTE_2 AS (
	SELECT
		baskets.order_id,
		products.*
	
	FROM baskets
	JOIN products
	ON baskets.product_id = products.product_id
)

SELECT
	ROUND(AVG(CTE_1.age), 1) AS 'Average Age'

FROM CTE_1
JOIN CTE_2
ON CTE_1.order_id = CTE_2.order_id

WHERE
	CTE_2.category = 'vitamins'
