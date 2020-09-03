/* Write your T-SQL query statement below */
SELECT
    s1.sub_id AS post_id,
    ISNULL(COUNT(DISTINCT s2.sub_id), 0) AS number_of_comments
FROM Submissions AS s1
LEFT JOIN Submissions AS s2
    ON s1.sub_id = s2.parent_id
WHERE s1.parent_id IS NULL
GROUP BY s1.sub_id
