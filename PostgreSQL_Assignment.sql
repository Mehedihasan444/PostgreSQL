-- Active: 1729700895657@@127.0.0.1@5432@university_db

-- create database
CREATE DATABASE university_db;

-- create students table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(20),
    age INT,
    email VARCHAR(50),
    frontend_mark INT,
    backend_mark INT,
    "status" VARCHAR(20)
);
-- create courses table
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(20),
    credits INT
);
-- create enrollment table
CREATE TABLE enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students (student_id),
    course_id INT REFERENCES courses (course_id)
);

-- insert data into students table
INSERT INTO
    students (
        student_name,
        age,
        email,
        frontend_mark,
        backend_mark,
        "status"
    )
VALUES (
        'Sameer',
        21,
        'sameer@example.com',
        48,
        60,
        NULL
    ),
    (
        'Zoya',
        23,
        'zoya@example.com',
        52,
        58,
        NULL
    ),
    (
        'Nabil',
        22,
        'nabil@example.com',
        37,
        46,
        NULL
    ),
    (
        'Rafi',
        24,
        'rafi@example.com',
        41,
        40,
        NULL
    ),
    (
        'Sophia',
        22,
        'sophia@example.com',
        50,
        52,
        NULL
    ),
    (
        'Hasan',
        23,
        'hasan@gmail.com',
        43,
        39,
        NULL
    );

    
-- insert data into courses table
INSERT INTO
    courses (course_name, credits)
VALUES ('Next.js', 3),
    ('React.js', 4),
    ('Databases', 3),
    ('Prisma', 3);

-- insert data into enrollment table
INSERT INTO
    enrollment (student_id, course_id)
VALUES (1, 1),
    (1, 2),
    (2, 1),
    (3, 2);

-- Query 1:
-- Insert a new student record
INSERT INTO
    students (
        student_name,
        age,
        email,
        frontend_mark,
        backend_mark,
        "status"
    )
VALUES (
        'Mehedi Hasan',
        22,
        'mehedihasan@gmail.com',
        60,
        60,
        NULL
    )
-- Query 2:
-- Retrieve the names of all students who are enrolled in the course titled 'Next.js'.
SELECT student_name
from
    students
    JOIN enrollment USING (student_id)
    JOIN courses USING (course_id)
WHERE
    course_name = 'Next.js';

-- Query 3:
-- Update the status of the student with the highest total (frontend_mark + backend_mark) to 'Awarded'.
UPDATE students
SET
    "status" = 'Awarded'
WHERE (frontend_mark + backend_mark) = (
        SELECT MAX(frontend_mark + backend_mark)
        FROM students
    );

-- Query 4:
-- Delete all courses that have no students enrolled.
DELETE FROM courses
WHERE
    course_id NOT IN (
        SELECT course_id
        FROM enrollment
    );

-- Query 5:
-- Retrieve the names of students using a limit of 2, starting from the 3rd student.

SELECT student_name FROM students LIMIT 2 OFFSET 2;

-- Query 6:
-- Retrieve the course names and the number of students enrolled in each course.
SELECT course_name, count(student_id)
from
    students
    JOIN enrollment USING (student_id)
    JOIN courses USING (course_id)
GROUP BY
    courses.course_id;

-- Query 7:
-- Calculate and display the average age of all students.
SELECT ROUND(AVG(age), 2) as average_age from students;

-- Query 8:
-- Retrieve the names of students whose email addresses contain 'example.com'.
SELECT student_name FROM students WHERE email LIKE '%example.com';