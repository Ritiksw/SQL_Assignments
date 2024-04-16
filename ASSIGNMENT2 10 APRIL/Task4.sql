USE SISDB;

SELECT AVG(student_count) AS average_students_per_course
FROM (
    SELECT course_id, COUNT(DISTINCT student_id) AS student_count
    FROM Enrollments
    GROUP BY course_id
) AS course_students;


--Q2
SELECT student_id, first_name, last_name
FROM Students
WHERE student_id IN (
    SELECT student_id
    FROM Payments
    WHERE amount = (SELECT MAX(amount) FROM Payments)
);

--q3
SELECT course_id, course_name
FROM Courses
WHERE course_id IN (
    SELECT course_id
    FROM Enrollments
    GROUP BY course_id
    HAVING COUNT(*) = (
        SELECT MAX(enrollment_count)
        FROM (
            SELECT COUNT(*) AS enrollment_count
            FROM Enrollments
            GROUP BY course_id
        ) AS max_enrollments
    )
);


--q4
SELECT t.teacher_id, t.first_name, t.last_name, COALESCE(SUM(p.amount), 0) AS total_payments
FROM Teacher t
LEFT JOIN Courses c ON t.teacher_id = c.teacher_id
LEFT JOIN Payments p ON c.course_id = p.course_id
GROUP BY t.teacher_id, t.first_name, t.last_name;

select * from courses;


--q5
SELECT student_id, first_name, last_name
FROM Students
WHERE (
    SELECT COUNT(DISTINCT course_id)
    FROM Enrollments
) = (
    SELECT COUNT(DISTINCT course_id)
    FROM Enrollments
    WHERE student_id = Students.student_id
);


