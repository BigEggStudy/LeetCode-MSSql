/* Write your T-SQL query statement below */
SELECT *
FROM (
    SELECT revenue, month + '_Revenue' AS m, id
    FROM DEPARTMENT
) AS t
PIVOT (
    SUM(revenue)
    FOR m IN (
        [Jan_Revenue],
        [Feb_Revenue],
        [Mar_Revenue],
        [Apr_Revenue],
        [May_Revenue],
        [Jun_Revenue],
        [Jul_Revenue],
        [Aug_Revenue],
        [Sep_Revenue],
        [Oct_Revenue],
        [Nov_Revenue],
        [Dec_Revenue]
    )
) AS pivot_table
