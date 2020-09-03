/* Write your T-SQL query statement below */
SELECT seller_id
FROM (
    SELECT
        seller_id,
        rank() OVER (
            ORDER BY SUM(price) DESC
        ) AS rank
    FROM sales
    GROUP BY seller_id
) AS b
WHERE rank = 1
