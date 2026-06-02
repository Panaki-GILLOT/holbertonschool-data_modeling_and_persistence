SELECT
    s.name AS student_name,
    c.title AS course_title
FROM students s
INNER JOIN enrollments e
    ON s.id = e.student_id
INNER JOIN courses c
    ON c.id = e.course_id
ORDER BY student_name ASC, course_title ASC;