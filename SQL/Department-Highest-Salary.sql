WITH Ranked AS (
    SELECT
        d.name AS Department,
        e.name AS Employee,
        e.Salary AS Salary,
        DENSE_RANK() OVER(PARTITION BY d.id ORDER BY e.salary DESC) AS s_rank
    FROM Employee e
    JOIN Department d ON e.departmentId = d.id
)
SELECT
    Department,
    Employee,
    Salary
FROM Ranked
WHERE s_rank = 1