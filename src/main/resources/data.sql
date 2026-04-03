-- Demo data
-- Users (password: password, bcrypt hash)
INSERT INTO USERS (id, username, password, role)
VALUES (1, 'teacher', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'TEACHER');
INSERT INTO USERS (id, username, password, role)
VALUES (2, 'student', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'STUDENT');
ALTER TABLE USERS ALTER COLUMN ID RESTART WITH 3;

-- Students
INSERT INTO STUDENTS (id, name, email, user_id)
VALUES (1, 'Ivanov Ivan', 'ivanov@mtuci.ru', '1'),
       (2, 'Petrova Maria', 'petrova@mtuci.ru', '2');
ALTER TABLE STUDENTS ALTER COLUMN ID RESTART WITH 3;

-- Courses
INSERT INTO COURSES (id, title, description, teacher_id)
VALUES (1, 'RBPO', 'Basics of securing apps', 1),
       (2, 'Database Basics', 'Intro to SQL', 1);
ALTER TABLE COURSES ALTER COLUMN ID RESTART WITH 3;
