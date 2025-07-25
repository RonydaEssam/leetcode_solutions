WITH Ranked AS (
  SELECT salary,
         DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
  FROM Employee
)
SELECT MAX(salary) AS SecondHighestSalary
FROM Ranked
WHERE rnk = 2;