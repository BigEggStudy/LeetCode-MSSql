/* Write your T-SQL query statement below */
SELECT
    p.product_name AS 'product_name',
    SUM(o.unit) AS 'unit'
FROM Orders o
LEFT OUTER JOIN Products p
    ON p.product_id = o.product_id
WHERE month(o.order_date) = 2 AND year(o.order_date) = 2020
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100
