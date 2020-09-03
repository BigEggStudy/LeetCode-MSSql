/* Write your T-SQL query statement below */
WITH cte AS (
    SELECT p.product_id, u.units, p.price * u.units AS total
    FROM Prices AS p
    LEFT JOIN UnitsSold AS u
        ON p.product_id = u.product_id AND
           u.purchase_date BETWEEN p.start_date AND p.end_date
)

SELECT
    product_id,
    Round((Sum(total) * 1.0 / Sum(units)), 2) AS average_price
FROM cte
GROUP BY product_id
