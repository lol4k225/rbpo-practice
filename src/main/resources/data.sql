-- Очистка таблиц перед вставкой (защита от повторного запуска в тестах)
DELETE FROM COURSES;
DELETE FROM STUDENTS;
DELETE FROM USERS;

-- Users (без ID)
INSERT INTO USERS (username, password, role)
VALUES ('teacher', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'TEACHER'),
       ('student', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'STUDENT');

-- Students (без ID)
INSERT INTO STUDENTS (name, email, USER_ID)
VALUES ('Ivanov Ivan', 'ivanov@mtuci.ru', '1'),
       ('Petrova Maria', 'petrova@mtuci.ru', '2');

-- Courses (здесь teacher_id должен ссылаться на существующий ID из таблицы USERS)
-- Если у teacher в базе ID стал 1, то оставляем 1.
INSERT INTO COURSES (title, description, teacher_id)
VALUES ('RBPO', 'Basics of securing apps', 1),
       ('Database Basics', 'Intro to SQL', 1);
