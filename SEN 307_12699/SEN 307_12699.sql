-- CREATE DATABASE
CREATE DATABASE IF NOT EXISTS sen307_12699;

USE sen307_12699;

-- REMOVE EXISTING TABLES
DROP TABLE IF EXISTS CourseAllocation;
DROP TABLE IF EXISTS Enrolment;
DROP TABLE IF EXISTS Lecturer;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Department;

-- 1. CREATE DEPARTMENT TABLE
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

-- 2. CREATE STUDENT TABLE
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    gender CHAR(1),
    dept_id INT,
    date_of_birth DATE,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

-- 3. CREATE COURSE TABLE
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_title VARCHAR(100) NOT NULL
);

-- 4. CREATE LECTURER TABLE
CREATE TABLE Lecturer (
    lecturer_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL
);

-- 5. CREATE COURSE ALLOCATION TABLE
CREATE TABLE CourseAllocation (
    allocation_id INT PRIMARY KEY,
    course_id INT,
    lecturer_id INT,
    FOREIGN KEY (course_id) REFERENCES Course(course_id),
    FOREIGN KEY (lecturer_id) REFERENCES Lecturer(lecturer_id)
);

-- 6. CREATE ENROLMENT TABLE
CREATE TABLE Enrolment (
    enrolment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- INSERT DEPARTMENTS
INSERT INTO Department VALUES
(1, 'Software Engineering'),
(2, 'Computer Science'),
(3, 'Information Technology');

-- INSERT STUDENTS
INSERT INTO Student VALUES
(1, 'John James', 'M', 1, '2004-05-12'),
(2, 'Mary Smith', 'F', 1, '2005-03-20'),
(3, 'David Paul', 'M', 2, '2003-07-15'),
(4, 'Grace John', 'F', 3, '2004-11-08'),
(5, 'Sarah Peter', 'F', 1, '2005-06-25'),
(6, 'Daniel Mark', 'M', 2, '2004-09-10');

-- INSERT COURSES
INSERT INTO Course VALUES
(1, 'Database Management'),
(2, 'Web Development'),
(3, 'Data Structures');

-- INSERT LECTURERS
INSERT INTO Lecturer VALUES
(1, 'Mr Johnson'),
(2, 'Mrs Williams'),
(3, 'Mr David');

-- INSERT COURSE ALLOCATIONS
INSERT INTO CourseAllocation VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- INSERT ENROLMENTS
INSERT INTO Enrolment VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2);

-- QUERY 1: Students in Software Engineering
SELECT s.full_name, d.dept_name
FROM Student AS s
INNER JOIN Department AS d
ON s.dept_id = d.dept_id
WHERE d.dept_name = 'Software Engineering'
ORDER BY s.full_name ASC;

-- QUERY 2: Courses and their lecturers
SELECT c.course_title, l.full_name
FROM Course AS c
INNER JOIN CourseAllocation AS ca
ON c.course_id = ca.course_id
INNER JOIN Lecturer AS l
ON ca.lecturer_id = l.lecturer_id;

-- QUERY 3: All students and their courses
SELECT s.full_name, c.course_title
FROM Student AS s
LEFT JOIN Enrolment AS e
ON s.student_id = e.student_id
LEFT JOIN Course AS c
ON e.course_id = c.course_id
ORDER BY s.full_name ASC;

-- QUERY 4: Students without course enrolment
SELECT s.full_name, c.course_title
FROM Student AS s
LEFT JOIN Enrolment AS e
ON s.student_id = e.student_id
LEFT JOIN Course AS c
ON e.course_id = c.course_id
WHERE e.student_id IS NULL
ORDER BY s.full_name ASC;

-- QUERY 5: Female students in departments 1 and 3
SELECT *
FROM Student
WHERE gender = 'F'
AND dept_id IN (1, 3)
AND date_of_birth BETWEEN '2004-01-01' AND '2005-12-31';

-- QUERY 6: First 10 enrolment records
SELECT *
FROM Enrolment
ORDER BY enrolment_id ASC
LIMIT 10 OFFSET 0;

-- QUERY 7: Next 10 enrolment records
SELECT *
FROM Enrolment
ORDER BY enrolment_id ASC
LIMIT 10 OFFSET 10;

-- QUERY 8: RIGHT JOIN to display all students
SELECT s.full_name, c.course_title
FROM Enrolment AS e
RIGHT JOIN Student AS s
ON e.student_id = s.student_id
LEFT JOIN Course AS c
ON e.course_id = c.course_id
ORDER BY s.full_name ASC;