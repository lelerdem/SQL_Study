CREATE DATABASE erdem;

DROP DATABASE erdem;

CREATE TABLE students(
	student_id CHAR(4),
	student_name VARCHAR(50),
	grade REAL,
	register_date DATE

);
CREATE TABLE grades as SELECT student_name, grade FROM students;

INSERT INTO students VALUES ('1000','ALİ',99.2,'2222-10-10');
INSERT INTO students VALUES ('1000','ALİ',99.2,'2222-10-10');
INSERT INTO students VALUES ('1000','ALİ',99.2,'2222-10-10');
INSERT INTO students VALUES ('1000','ALİ',99.2,'2222-10-10');


INSERT INTO students(student_name,grade) VALUES('Aslı',84.9);

SELECT * FROM students ;
SELECT student_name, grade FROM students;

SELECT student_id,register_date FROM students;