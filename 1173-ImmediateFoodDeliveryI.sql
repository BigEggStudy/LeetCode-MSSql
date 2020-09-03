/* Write your T-SQL query statement below */
WITH cte AS (
    SELECT
        delivery_id,
        CASE
            WHEN order_date = customer_pref_delivery_date
            Then 1
            Else 0
            End
        AS delivery_status
    FROM Delivery
)

SELECT
    ROUND(SUM(CAST(delivery_status AS FLOAT)) * 100 / Count(delivery_id), 2)
AS immediate_percentage
FROM cte
