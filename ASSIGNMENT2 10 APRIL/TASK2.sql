--TASK2

--q1
INSERT INTO Students (student_id, first_name , last_name, date_of_birth, email, phone_number)
VALUES (12, 'John', 'Doe', '1995-08-15', 'john.doe@example.com', '1234567890');

SELECT * from Students;

--Q2
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date)
VALUES (11, 10, 2, '2024-01-01');

SELECT * from Enrollments;

--Q3
UPDATE Teacher
SET email = 'newdeepak@gmail.com'
WHERE teacher_id = 10;

select * from Teacher;

--Q4
DELETE FROM Enrollments
WHERE student_id = 10 AND course_id = 2;

select * from Enrollments;

--Q5
UPDATE Courses
SET teacher_id = 2
WHERE course_id = 1;

SELECT * FROM Courses;

--Q6
DELETE FROM Enrollments
WHERE student_id = 10;
SELECT * FROM Enrollments;


ALTER TABLE Enrollments 
ADD CONSTRAINT fk_student_id 
FOREIGN KEY (student_id) 
REFERENCES Students(student_id) 
ON DELETE CASCADE;

ALTER TABLE Payments 
ADD CONSTRAINT fkk_student_id 
FOREIGN KEY (student_id) 
REFERENCES Students(student_id) 
ON DELETE CASCADE;

DELETE FROM Students
WHERE student_id = 10;

SELECT * FROM Students;

--Q7
UPDATE Payments
SET amount = 59999
WHERE payment_id = 10;

SELECT * FROM Payments;
