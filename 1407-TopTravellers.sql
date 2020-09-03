/* Write your T-SQL query statement below */
SELECT u.name, COALESCE(r.travelled_distance, 0) AS travelled_distance
FROM Users AS u
LEFT JOIN (
    SELECT user_id, SUM(distance) AS travelled_distance
    FROM Rides
    GROUP BY user_id
) AS r
    ON u.id = r.user_id
ORDER BY COALESCE(r.travelled_distance, 0) DESC, u.name
