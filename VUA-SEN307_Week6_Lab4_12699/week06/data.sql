-- =========================================================
-- VUA-SEN307 DATABASE SYSTEMS - WEEK 6 PRACTICAL (LAB 4)
-- Name: Adebiyi Maryam Titilayo
-- Matric Number: VUGSEN2412699
-- Database used in the Week 7 worksheet: sen307_20231234
-- =========================================================

USE sen307_20231234;

-- PART 1: INSERT THE FIVE DEPARTMENTS
INSERT INTO Department (dept_name) VALUES
('Software Engineering'),
('Computer Science'),
('Artificial Intelligence'),
('Data Science'),
('Cybersecurity');

-- PART 1: INSERT THE TEN PROVIDED COURSES
INSERT INTO Course (course_code, course_title, credit_units, description, dept_id) VALUES
('SEN307', 'Database Systems', 3,
 'Relational database design, SQL queries, normalization, transactions and indexing using MySQL.',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('SEN301', 'Software Architecture', 3,
 'Architectural styles, design patterns, microservices and how to structure large software systems.',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('COS301', 'Operating Systems', 3,
 'Processes, threads, CPU scheduling, memory management and file systems.',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('COS305', 'Computer Networks', 3,
 'TCP/IP, routing, switching, LAN and WAN design and network protocols.',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('AIN301', 'Introduction to Artificial Intelligence', 3,
 'Intelligent agents, search algorithms, knowledge representation and reasoning.',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN305', 'Machine Learning', 3,
 'Supervised and unsupervised learning, neural networks, deep learning and model evaluation.',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('AIN307', 'Natural Language Processing', 3,
 'Text processing, word embeddings, language models, sentiment analysis and chatbots.',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('DTS301', 'Data Visualization and Analytics', 2,
 'Exploratory data analysis, charts, dashboards and telling stories with data.',
 (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('DTS305', 'Big Data Technologies', 3,
 'Distributed storage and processing of very large datasets with Hadoop and Spark.',
 (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('CYB301', 'Network Security', 3,
 'Firewalls, cryptography, intrusion detection and protecting networks from attacks.',
 (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));

-- Check department and course IDs before inserting related records
SELECT dept_id, dept_name FROM Department ORDER BY dept_id;
SELECT course_id, course_code FROM Course ORDER BY course_id;

-- PART 2, STEP 1: TEN LECTURERS
INSERT INTO Lecturer (staff_no, full_name, email, dept_id) VALUES
('VUA/ST/101', 'Dr Amaka Okafor', 'a.okafor@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA/ST/102', 'Dr Musa Bello', 'm.bello@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA/ST/103', 'Mrs Funmi Eze', 'f.eze@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA/ST/104', 'Mr Chinedu Nwosu', 'c.nwosu@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA/ST/105', 'Dr Zainab Ibrahim', 'z.ibrahim@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA/ST/106', 'Mr Tunde Adeyemi', 't.adeyemi@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA/ST/107', 'Mrs Grace Okon', 'g.okon@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA/ST/108', 'Mr David Ojo', 'd.ojo@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA/ST/109', 'Dr Esther Danjuma', 'e.danjuma@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('VUA/ST/110', 'Mr Samuel Yakubu', 's.yakubu@vua.edu.ng',
 (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity'));

-- PART 2, STEP 2: TWENTY STUDENTS (INCLUDING YOUR OWN DETAILS)
INSERT INTO Student (matric_no, full_name, gender, date_of_birth, dept_id) VALUES
('VUGSEN2412699', 'Adebiyi Maryam Titilayo', 'F', '2005-04-12',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA20260002', 'Ada Obi', 'F', '2005-03-14',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA20260003', 'John Musa', 'M', '2004-11-02',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA20260004', 'Grace Okon', 'F', '2006-06-21',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA20260005', 'Chinedu Eze', 'M', '2003-08-09',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA20260006', 'Zainab Ibrahim', 'F', '2005-01-30',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA20260007', 'Tunde Adeyemi', 'M', '2004-05-17',
 (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA20260008', 'Esther Danjuma', 'F', '2007-02-11',
 (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('VUA20260009', 'Samuel Yakubu', 'M', '2003-12-04',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA20260010', 'Aisha Bello', 'F', '2006-09-23',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA20260011', 'Peter Nwosu', 'M', '2005-07-08',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA20260012', 'Mary James', 'F', '2004-02-19',
 (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA20260013', 'Ibrahim Sani', 'M', '2007-10-15',
 (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('VUA20260014', 'Blessing John', 'F', '2003-04-26',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA20260015', 'Emeka Okafor', 'M', '2006-12-01',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')),
('VUA20260016', 'Ruth Adebayo', 'F', '2005-06-13',
 (SELECT dept_id FROM Department WHERE dept_name = 'Artificial Intelligence')),
('VUA20260017', 'Daniel Uche', 'M', '2004-08-27',
 (SELECT dept_id FROM Department WHERE dept_name = 'Data Science')),
('VUA20260018', 'Halima Garba', 'F', '2007-03-05',
 (SELECT dept_id FROM Department WHERE dept_name = 'Cybersecurity')),
('VUA20260019', 'Michael Ojo', 'M', '2003-11-20',
 (SELECT dept_id FROM Department WHERE dept_name = 'Software Engineering')),
('VUA20260020', 'Peace Ekanem', 'F', '2006-01-16',
 (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science'));

-- Check the generated student and lecturer IDs
SELECT student_id, matric_no, full_name FROM Student ORDER BY student_id;
SELECT lecturer_id, full_name FROM Lecturer ORDER BY lecturer_id;

-- PART 2, STEP 3: FORTY ENROLMENTS
-- Eight students take SEN307, so this course has more than five students.
-- The last two students deliberately have no enrolments for later LEFT JOIN work.
INSERT INTO Enrolment (student_id, course_id) VALUES
((SELECT student_id FROM Student WHERE matric_no='VUGSEN2412699'), (SELECT course_id FROM Course WHERE course_code='SEN307')),
((SELECT student_id FROM Student WHERE matric_no='VUGSEN2412699'), (SELECT course_id FROM Course WHERE course_code='SEN301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260002'), (SELECT course_id FROM Course WHERE course_code='SEN307')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260002'), (SELECT course_id FROM Course WHERE course_code='COS301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260003'), (SELECT course_id FROM Course WHERE course_code='SEN307')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260003'), (SELECT course_id FROM Course WHERE course_code='COS305')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260004'), (SELECT course_id FROM Course WHERE course_code='SEN307')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260004'), (SELECT course_id FROM Course WHERE course_code='AIN301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260005'), (SELECT course_id FROM Course WHERE course_code='SEN307')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260005'), (SELECT course_id FROM Course WHERE course_code='DTS301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260006'), (SELECT course_id FROM Course WHERE course_code='SEN307')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260006'), (SELECT course_id FROM Course WHERE course_code='AIN305')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260007'), (SELECT course_id FROM Course WHERE course_code='SEN307')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260007'), (SELECT course_id FROM Course WHERE course_code='DTS305')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260008'), (SELECT course_id FROM Course WHERE course_code='SEN307')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260008'), (SELECT course_id FROM Course WHERE course_code='CYB301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260009'), (SELECT course_id FROM Course WHERE course_code='SEN301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260009'), (SELECT course_id FROM Course WHERE course_code='COS301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260010'), (SELECT course_id FROM Course WHERE course_code='SEN301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260010'), (SELECT course_id FROM Course WHERE course_code='COS305')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260011'), (SELECT course_id FROM Course WHERE course_code='SEN301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260011'), (SELECT course_id FROM Course WHERE course_code='AIN301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260012'), (SELECT course_id FROM Course WHERE course_code='SEN301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260012'), (SELECT course_id FROM Course WHERE course_code='DTS301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260013'), (SELECT course_id FROM Course WHERE course_code='SEN301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260013'), (SELECT course_id FROM Course WHERE course_code='CYB301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260014'), (SELECT course_id FROM Course WHERE course_code='COS301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260014'), (SELECT course_id FROM Course WHERE course_code='AIN305')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260015'), (SELECT course_id FROM Course WHERE course_code='COS305')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260015'), (SELECT course_id FROM Course WHERE course_code='AIN307')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260016'), (SELECT course_id FROM Course WHERE course_code='AIN301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260016'), (SELECT course_id FROM Course WHERE course_code='AIN307')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260017'), (SELECT course_id FROM Course WHERE course_code='AIN305')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260017'), (SELECT course_id FROM Course WHERE course_code='DTS305')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260018'), (SELECT course_id FROM Course WHERE course_code='AIN307')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260018'), (SELECT course_id FROM Course WHERE course_code='CYB301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260019'), (SELECT course_id FROM Course WHERE course_code='DTS301')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260019'), (SELECT course_id FROM Course WHERE course_code='DTS305')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260002'), (SELECT course_id FROM Course WHERE course_code='AIN307')),
((SELECT student_id FROM Student WHERE matric_no='VUA20260003'), (SELECT course_id FROM Course WHERE course_code='CYB301'));

-- COURSE ALLOCATIONS: every course has at least one lecturer; SEN307 has two.
INSERT INTO CourseAllocation (course_id, lecturer_id) VALUES
((SELECT course_id FROM Course WHERE course_code='SEN307'), (SELECT lecturer_id FROM Lecturer WHERE staff_no='VUA/ST/101')),
((SELECT course_id FROM Course WHERE course_code='SEN307'), (SELECT lecturer_id FROM Lecturer WHERE staff_no='VUA/ST/102')),
((SELECT course_id FROM Course WHERE course_code='SEN301'), (SELECT lecturer_id FROM Lecturer WHERE staff_no='VUA/ST/101')),
((SELECT course_id FROM Course WHERE course_code='COS301'), (SELECT lecturer_id FROM Lecturer WHERE staff_no='VUA/ST/103')),
((SELECT course_id FROM Course WHERE course_code='COS305'), (SELECT lecturer_id FROM Lecturer WHERE staff_no='VUA/ST/104')),
((SELECT course_id FROM Course WHERE course_code='AIN301'), (SELECT lecturer_id FROM Lecturer WHERE staff_no='VUA/ST/105')),
((SELECT course_id FROM Course WHERE course_code='AIN305'), (SELECT lecturer_id FROM Lecturer WHERE staff_no='VUA/ST/106')),
((SELECT course_id FROM Course WHERE course_code='AIN307'), (SELECT lecturer_id FROM Lecturer WHERE staff_no='VUA/ST/105')),
((SELECT course_id FROM Course WHERE course_code='DTS301'), (SELECT lecturer_id FROM Lecturer WHERE staff_no='VUA/ST/107')),
((SELECT course_id FROM Course WHERE course_code='DTS305'), (SELECT lecturer_id FROM Lecturer WHERE staff_no='VUA/ST/108')),
((SELECT course_id FROM Course WHERE course_code='CYB301'), (SELECT lecturer_id FROM Lecturer WHERE staff_no='VUA/ST/109'));

-- Allow the practical UPDATE/DELETE statements if Workbench safe-update mode blocks them.
SET SQL_SAFE_UPDATES = 0;

-- PART 3: UPDATE ONE STUDENT'S DEPARTMENT
SELECT matric_no, full_name, dept_id
FROM Student
WHERE matric_no = 'VUGSEN2412699';

UPDATE Student
SET dept_id = (SELECT dept_id FROM Department WHERE dept_name = 'Computer Science')
WHERE matric_no = 'VUGSEN2412699';

SELECT matric_no, full_name, dept_id
FROM Student
WHERE matric_no = 'VUGSEN2412699';

-- PART 4: REFERENTIAL INTEGRITY EXERCISE
INSERT INTO Department (dept_name)
VALUES ('Library and Information Science');

INSERT INTO Student (matric_no, full_name, gender, date_of_birth, dept_id)
VALUES (
 'VUA20269999',
 'Transfer Student',
 'F',
 '2005-05-05',
 (SELECT dept_id FROM Department
  WHERE dept_name = 'Library and Information Science')
);

-- RUN THIS DELETE STATEMENT BY ITSELF NOW.
-- It should produce Error 1451 because the student still references this department.
DELETE FROM Department
WHERE dept_name = 'Library and Information Science';

-- After taking the Error 1451 screenshot, run the statements below.
UPDATE Student
SET dept_id = (SELECT dept_id FROM Department
               WHERE dept_name = 'Software Engineering')
WHERE matric_no = 'VUA20269999';

DELETE FROM Department
WHERE dept_name = 'Library and Information Science';

SELECT * FROM Department;

SET SQL_SAFE_UPDATES = 1;

-- FINAL CHECK: expected minimums are 5 departments, 10 lecturers,
-- 20 students, 10 courses, 40 enrolments and 10/11 allocations.
SELECT 'Departments' AS tbl, COUNT(*) AS total FROM Department
UNION ALL SELECT 'Lecturers', COUNT(*) FROM Lecturer
UNION ALL SELECT 'Students', COUNT(*) FROM Student
UNION ALL SELECT 'Courses', COUNT(*) FROM Course
UNION ALL SELECT 'Enrolments', COUNT(*) FROM Enrolment
UNION ALL SELECT 'Allocations', COUNT(*) FROM CourseAllocation;
