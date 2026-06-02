SELECT DISTINCT
    i.name AS instructor_name
FROM instructors i
JOIN courses c
    ON i.id = c.instructor_id
JOIN enrollments e
    ON c.id = e.course_id
ORDER BY instructor_name ASC;