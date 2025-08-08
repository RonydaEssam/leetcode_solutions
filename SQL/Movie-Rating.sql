WITH 
    names AS (
        SELECT
            u.name AS result_1,
            COUNT(r.user_id)
        FROM MovieRating r
        JOIN Users u ON u.user_id = r.user_id
        GROUP BY r.user_id
        ORDER BY COUNT(r.user_id) DESC, u.name
        LIMIT 1
    ),
    titles AS (
        SELECT
            m.title AS result_2,
            AVG(r.rating)
        FROM MovieRating r
        JOIN Movies m ON r.movie_id = m.movie_id
        WHERE r.created_at BETWEEN '2020-02-01' AND '2020-02-29'
        GROUP BY r.movie_id 
        ORDER BY AVG(r.rating) DESC, m.title
        LIMIT 1
    )
SELECT result_1 AS results
FROM  names

UNION ALL

SELECT result_2 AS results
FROM titles