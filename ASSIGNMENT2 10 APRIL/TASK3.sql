--TASK - 3

--Q1
SELECT s.first_name, SUM(amount) AS Total_payments_in_Rs
FROM Payments p JOIN Students s
ON p.student_id = s.student_id
where s.student_id = 1 
GROUP BY s.first_name;

SELECT * FROM Payments;
SELECT * FROM Students;

--Q2
SELECT c.course_id, c.course_name, COUNT(e.student_id) AS enrolled_students
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;

--Q3
SELECT s.first_name, s.last_name
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

SELECT * FROM Enrollments;

--Q4
SELECT s.first_name, s.last_name, c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

--Q5
SELECT t.first_name, t.last_name, c.course_name
FROM Teacher t
JOIN Courses c ON t.teacher_id = c.teacher_id;

--Q6
SELECT s.first_name, s.last_name, e.enrollment_date
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE c.course_name = 'Mathematics';

--q7
SELECT s.first_name, s.last_name
FROM Students s
LEFT JOIN Payments p ON s.student_id = p.student_id
WHERE p.student_id IS NULL;

--Q8
SELECT c.course_name
FROM Courses c
LEFT JOIN Enrollments e ON c.course_id = e.course_id
WHERE e.course_id IS NULL;

--Q9
SELECT s.first_name, s.last_name
FROM Students s
JOIN Enrollments e1 ON s.student_id = e1.student_id
JOIN Enrollments e2 ON e1.student_id = e2.student_id AND e1.course_id != e2.course_id
GROUP BY s.first_name, s.last_name, s.student_id
HAVING COUNT(DISTINCT e1.course_id) > 1;

SELECT * FROM Enrollments;

--Q10
SELECT t.first_name, t.last_name
FROM Teacher t
LEFT JOIN Courses c ON t.teacher_id = c.teacher_id
WHERE c.teacher_id IS NULL;

