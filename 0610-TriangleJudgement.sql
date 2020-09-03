/* Write your T-SQL query statement below */
SELECT
    *,
    CASE
        WHEN x + y > z AND y + z > x AND x + z > y THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM triangle
