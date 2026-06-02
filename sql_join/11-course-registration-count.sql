SELECT
    c.title AS course_title,
    COUNT(e.student_id) AS registration_count
FROM courses c
LEFT JOIN enrollments e
    ON c.id = e.course_id
GROUP BY c.id, c.title
ORDER BY registration_count DESC, course_title ASC;