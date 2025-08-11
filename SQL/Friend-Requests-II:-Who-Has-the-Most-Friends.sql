WITH count_ids AS (
    SELECT
        accepter_id AS id,
        COUNT(accept_date) AS num
    FROM RequestAccepted
    GROUP BY accepter_id

    UNION ALL

    SELECT
        requester_id AS id,
        COUNT(accept_date) AS num
    FROM RequestAccepted
    GROUP BY requester_id
)
SELECT id, SUM(num) AS num
FROM count_ids
GROUP BY id
ORDER BY SUM(num) DESC
LIMIT 1