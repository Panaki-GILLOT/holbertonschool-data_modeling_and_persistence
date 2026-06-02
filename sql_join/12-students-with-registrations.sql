SELECT DISTINCT
    s.name AS student_name
FROM students s
INNER JOIN enrollments e
    ON s.id = e.student_id
ORDER BY student_name ASC;