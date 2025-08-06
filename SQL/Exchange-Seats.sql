SELECT
    id,
    CASE
        WHEN id % 2 != 0 AND id + 1 NOT IN (SELECT id FROM Seat) THEN student
        WHEN id % 2 != 0 THEN LEAD(student, 1) OVER (ORDER BY id)
        WHEN id % 2 = 0 THEN LAG(student, 1) OVER (ORDER BY id)
    END AS student
FROM Seat
ORDER BY id
