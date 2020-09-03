/* Write your T-SQL query statement below */
SELECT DISTINCT
    player_id,
    MIN(event_date) OVER (PARTITION BY player_id) AS first_login
FROM Activity
