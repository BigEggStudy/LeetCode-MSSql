/* Write your T-SQL query statement below */
SELECT customer_number
FROM orders
GROUP BY customer_number
HAVING COUNT(order_number) = (
	SELECT TOP 1 COUNT(order_number)
	FROM orders
	GROUP BY customer_number
	ORDER BY COUNT(order_number) DESC
)
