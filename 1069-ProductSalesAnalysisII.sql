/* Write your T-SQL query statement below */
SELECT s.product_id, SUM(s.quantity) AS total_quantity
FROM Sales AS s
GROUP BY s.product_id
