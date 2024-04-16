USE SISDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    date_of_birth DATE,
    email VARCHAR(50),
    phone_number VARCHAR(15)
);


CREATE TABLE Teacher (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(50)
);


SELECT * FROM Students;

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    student_id INT,
    amount INT,
    payment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);


INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email, phone_number) VALUES
    (1, 'Aarav', 'Patel', '2000-05-15', 'aarav@gmail.com', '9876543210'),
    (2, 'Aaradhya', 'Gupta', '2001-08-20', 'aaradhya@gmail.com', '9876543211'),
    (3, 'Aryan', 'Sharma', '1999-12-10', 'aryan@gmail.com', '9876543212'),
    (4, 'Aditi', 'Singh', '2002-03-25', 'aditi@gmail.com', '9876543213'),
    (5, 'Advait', 'Kumar', '2003-07-05', 'advait@gmail.com', '9876543214'),
    (6, 'Aisha', 'Joshi', '2000-10-18', 'aisha@gmail.com', '9876543215'),
    (7, 'Akshay', 'Malhotra', '2001-01-30', 'akshay@gmail.com', '9876543216'),
    (8, 'Amaira', 'Chopra', '2002-04-12', 'amaira@gmail.com', '9876543217'),
    (9, 'Anaya', 'Rao', '1999-09-22', 'anaya@gmail.com', '9876543218'),
    (10, 'Ansh', 'Agarwal', '2003-02-08', 'ansh@gmail.com', '9876543219');

	SELECT * FROM Students;


INSERT INTO Teacher (teacher_id, first_name, last_name, email) VALUES
    (1, 'Aditya', 'Sharma', 'aditya@gmail.com'),
    (2, 'Aarti', 'Patel', 'aarti@gmail.com'),
    (3, 'Amit', 'Kumar', 'amit@gmail.com'),
    (4, 'Anjali', 'Singh', 'anjali@gmail.com'),
    (5, 'Anupam', 'Gupta', 'anupam@gmail.com'),
    (6, 'Arjun', 'Malhotra', 'arjun@gmail.com'),
    (7, 'Ayesha', 'Joshi', 'ayesha@gmail.com'),
    (8, 'Bhavesh', 'Chopra', 'bhavesh@gmail.com'),
    (9, 'Chetna', 'Rao', 'chetna@gmail.com'),
    (10, 'Deepak', 'Agarwal', 'deepak@gmail.com');

	SELECT * FROM Teacher;


INSERT INTO Courses (course_id, course_name, credits, teacher_id) VALUES
    (1, 'Mathematics', 3, 1),
    (2, 'Physics', 4, 2),
    (3, 'Biology', 3, 3),
    (4, 'Chemistry', 4, 4),
    (5, 'English', 3, 5),
    (6, 'History', 3, 6),
    (7, 'Computer Science', 4, 7),
    (8, 'Economics', 3, 8),
    (9, 'Geography', 3, 9),
    (10, 'Art', 2, 10);

	SELECT * FROM Courses;

INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) VALUES
    (1, 1, 1, '2023-12-01'),
    (2, 2, 2, '2023-12-02'),
    (3, 3, 3, '2023-12-03'),
    (4, 4, 4, '2023-12-04'),
    (5, 5, 5, '2023-12-05'),
    (6, 6, 6, '2023-12-06'),
    (7, 7, 7, '2023-12-07'),
    (8, 8, 8, '2023-12-08'),
    (9, 9, 9, '2023-12-09'),
    (10, 10, 10, '2023-12-10');

	SELECT * FROM Enrollments;

INSERT INTO Payments (payment_id, student_id, amount, payment_date) VALUES
    (1, 1, 9999, '2023-12-01'),
    (2, 2, 19999, '2023-12-02'),
    (3, 3, 25999, '2023-12-03'),
    (4, 4, 30999, '2023-12-04'),
    (5, 5, 35999, '2023-12-05'),
    (6, 6, 40999, '2023-12-06'),
    (7, 7, 45999, '2023-12-07'),
    (8, 8, 50999, '2023-12-08'),
    (9, 9, 55999, '2023-12-09'),
    (10, 10, 60999, '2023-12-10');

	SELECT * FROM Payments;