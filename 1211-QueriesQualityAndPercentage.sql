/* Write your T-SQL query statement below */
SELECT
    query_name,
    ROUND(AVG(rating * 1.0 / position), 2) AS quality,
    ROUND(AVG(
        CASE WHEN rating < 3
        THEN 100.0
        ELSE 0.0
        END), 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name
