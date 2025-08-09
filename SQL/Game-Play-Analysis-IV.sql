WITH
    first_login AS(
    SELECT
        player_id,
        MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
    ),
    second_login AS(
        SELECT
            a.player_id
        FROM Activity a
        JOIN first_login fl ON a.player_id = fl.player_id
        AND a.event_date = DATE_ADD(fl.first_date, INTERVAL 1 DAY)
    )
SELECT 
    ROUND(COUNT(DISTINCT sl.player_id) * 1.0 /COUNT(DISTINCT fl.player_id), 2) AS fraction
FROM first_login fl
LEFT JOIN second_login sl ON fl.player_id = sl.player_id
