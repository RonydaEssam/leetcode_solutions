WITH counted AS (
    SELECT num, COUNT(num) AS c
    FROM mynumbers
    GROUP BY num
)
SELECT MAX(num) AS num
FROM counted
WHERE c = 1