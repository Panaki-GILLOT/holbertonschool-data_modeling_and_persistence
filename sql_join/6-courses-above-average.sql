SELECT
    c.title AS course_title
FROM courses c
JOIN enrollments e
    ON c.id = e.course_id
GROUP BY c.id, c.title
HAVING COUNT(e.student_id) > (
    SELECT AVG(course_count)
    FROM (
        SELECT COUNT(*) AS course_count
        FROM enrollments
        GROUP BY course_id
    )
)
ORDER BY course_title ASC;