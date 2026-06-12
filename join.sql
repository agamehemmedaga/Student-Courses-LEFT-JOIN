DROP TABLE IF EXISTS students_courses CASCADE;
DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS courses CASCADE;

CREATE TABLE students(
    id SERIAL PRIMARY KEY ,
    students_fullname VARCHAR (100) NOT NULL
);

CREATE TABLE courses(
    id SERIAL PRIMARY KEY ,
    courses_name VARCHAR (100) NOT NULL
);

INSERT INTO students (students_fullname) VALUES
                         ( 'Aga Mehemmed' ),
                         ( 'Mahmudova Zeyneb'),
                         ( 'Agayev Ismayil');

INSERT INTO courses (courses_name) VALUES
                        ( 'Compar Academy'),
                        ( 'Code Academy'),
                        ( 'Jet Academy');

SELECT

s.id AS "student_id",
s.students_fullname AS "student_adi"

FROM students s
LEFT JOIN student_courses sc ON s.id = sc.student_id
WHERE sc.student_id IS NULL;





