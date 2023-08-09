-- 1.Cevap
CREATE TABLE student (
		student_id INT UNIQUE,
		student_name VARCHAR(50) NOT NULL,
		age INT CHECK (age>18),
	    department VARCHAR(50)
);

SELECT * FROM student;
--2.Cevap
CREATE TABLE orders (
		order_id INT UNIQUE,
		customer_id INT NOT NULL,
		order_date DATE CHECK (order_date < CURRENT_DATE),
		total_amount REAL CHECK (total_amount > 0)
		
);		
--3.Cevap
SELECT * FROM orders;

CREATE Table Students ( 
	student_id INT PRIMARY KEY UNIQUE,
	student_name VARCHAR(50),
	department VARCHAR(50)
	
);

SELECT * FROM Students;

CREATE table courses (
	course_id INT PRIMARY KEY UNIQUE,
	course_name VARCHAR (50),
	credit INT,
	instructor VARCHAR(50),
	student_id INT,
	CONSTRAINT fk_id FOREIGN KEY (student_id) REFERENCES Students(student_id)
	
	

);
SELECT * FROM courses;
			
--4.Soru 

CREATE TABLE Departments (
	department_id INT,
	department_name VARCHAR(50),
	location VARCHAR(50),
	CONSTRAINT Dp_pk PRIMARY KEY(department_id)
	

);

SELECT * FROM Departments;		
	
	
CREATE TABLE employees (
	employee_id INT UNIQUE,
	employee_name VARCHAR(50),
	department_no INT,
	CONSTRAINT emp_fk FOREIGN KEY(department_no) REFERENCES Departments(department_id)
); 	

SELECT * FROM employees;

--5. Soru Cevabı

CREATE TABLE Books ( 
	book_id INT UNIQUE,
	book_bame VARCHAR(50),
	author_id VARCHAR(50),
	CONSTRAINT b_pk PRIMARY KEY(book_id)
	
);



SELECT * FROM Books;

CREATE TABLE Authors(
	author_id INT,
	author_name VARCHAR(50),
	nationality VARCHAR(50)

)

