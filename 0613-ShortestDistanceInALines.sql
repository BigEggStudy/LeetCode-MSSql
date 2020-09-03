/* Write your T-SQL query statement below */
SELECT MIN(p1.x - p2.x) AS shortest
FROM point AS p1
INNER JOIN point AS p2
    ON p1.x > p2.x
