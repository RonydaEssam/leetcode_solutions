WITH total AS (
    SELECT 
        person_name,
        weight,
        SUM(weight) OVER (ORDER BY turn) AS total_weight
    FROM Queue
)
SELECT person_name
FROM total
WHERE total_weight <= 1000
ORDER BY total_weight DESC
LIMIT 1
