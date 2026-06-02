SELECT
    c.title AS course_title
FROM courses c
JOIN assignments a
    ON c.id = a.course_id
GROUP BY c.id, c.title
HAVING COUNT(a.id) > (
    SELECT AVG(course_count)
    FROM (
        SELECT COUNT(a2.id) AS course_count
        FROM courses c2
        LEFT JOIN assignments a2
            ON c2.id = a2.course_id
        GROUP BY c2.id
    )
)
ORDER BY course_title ASC;