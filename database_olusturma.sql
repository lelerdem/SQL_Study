-- 1 - Yorum Satırı Yapma; 2 adet ; ifadesi kullanılır.

-- 2 - Database Oluşturma -DDL
CREATE DATABASE lelerdem;

-- 3 - Database Silme - DDL
DROP DATABASE lelerdem;

--4- Tablo oluşturma -DDL
-- REAL ondalıklı sayıyı ifade etmektedir.	
CREATE TABLE students(
	id CHAR(4),
	name VARCHAR(50),
	grade REAL, 
	register_date DATE 
);

-- 5 Var olan Bir tablodan yeni bir tablo yaratma
CREATE TABLE grades as SELECT name, grade FROM students;

-- 6 - Tablo içine veri ekleme - DML
INSERT INTO students VALUES ('1001','Ali',92.8,'2021-01-01');
INSERT INTO students VALUES ('1002','vAli',91.8,'2021-03-01');
INSERT INTO students VALUES ('1003','Ali',93.8,'2021-01-01');
INSERT INTO students VALUES ('1004','Ali',94.8,'2021-01-01');

- 7 Bazı sütunlara data ekleme
INSERT INTO students(name,grade) VALUES ('Aslı',84.6);

--8 -- Tablo tüm verileri getirme
SELECT * FROM students; 

-9 - Tablodan bazı dataları getirme
select NAME, GRADE from students;
SELECT id,register_date FROM students;


CREATE TABLE developers (
	id SERIAL,
	name VARCHAR(50),
	email VARCHAR(50) UNIQUE,
	salary REAL,
	prog_lang VARCHAR(20)
);

SELECT * FROM developers;

INSERT INTO developers(name, email, salary, prog_lang) VALUES (
	'Saffet Bey',
	'dev@email.com',
	'3000',
	'Pyhton'
);

INSERT INTO developers(name, email, salary, prog_lang) VALUES (
	'Ahmet Bey',
	'dev1@email.com',
	'2500',
	'Java'
	
);

CREATE TABLE doctors (
	id SERIAL,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE,
	salary REAL
);
SELECT * FROM doctors;

INSERT INTO doctors(name, email, salary) VALUES (
	'Dr. Saffet Bey',
	'dr@email.com',
	5000
	
);
INSERT INTO doctors(name, email, salary) VALUES (
	'Dr. Ozgur Bey',
	'dr1@email.com',
	6000
	
);

CREATE TABLE students2(
	id INT PRIMARY KEY,
	name VARCHAR(50),
	grade REAL,
	register_date DATE
);

SELECT * FROM students2;

CREATE TABLE students3(
	id INT ,
	name VARCHAR(50) NOT NULL,
	grade REAL,
	register_date DATE,
	CONSTRAINT std_pk PRIMARY KEY(id)
);


SELECT * FROM students3;

CREATE TABLE students4(
	id INT ,
	name VARCHAR(50) NOT NULL,
	grade REAL,
	register_date DATE,
	CONSTRAINT std_pk4 PRIMARY KEY(id, name) 
);
	
SELECT * FROM students4;


CREATE TABLE address3(
	address_id INT,
	street VARCHAR(50),
	city VARCHAR (50),
	student_id INT,
	CONSTRAINT add_fk FOREIGN KEY(student_id) REFERENCES students3(id)
);

SELECT * FROM address3;


CREATE TABLE personel (
	id INT,
	name VARCHAR(50) NOT NULL CHECK(name <> ''),
	salary REAL CHECK(salary>5000),
	age INT CHECK(age>0)
);

SELECT * FROM personel;

INSERT INTO personel VALUES(1,'',10000,25);---HATA VERIRIR CHECK KABUL ETMEZ
INSERT INTO personel VALUES(1,'A',1000,25);-- HATA 5000 DEN AZ KABUL ETMEZ
INSERT INTO personel VALUES(1,'',10000,-5);-- HATA YAS KUCUK OLAMAZ
INSERT INTO personel VALUES(1,'A',10000,25);

SELECT * FROM personel;
