CREATE TABLE student (
		student_id INT UNIQUE,
		student_name VARCHAR(50) NOT NULL,
		age INT CHECK (age>18),
	    department VARCHAR(50)
);

SELECT * FROM student;

CREATE TABLE orders (
		order_id INT UNIQUE,
		customer_id INT NOT NULL,
		order_date DATE CHECK (order_date < CURRENT_DATE),
		total_amount REAL CHECK (total_amount > 0)
		
);		

SELECT * FROM orders;

CREATE Students ( 
	student_id INT PRIMARY KEY UNIQUE,
	student_name VARCHAR(50),
	department VARCHAR(50),
	
);

CREATE courses (
	course_id INT PRIMARY KEY UNIQUE,
	course_name VARCHAR (50),
	credit INT,
	instructor VARCHAR(50),
	student_id INT,
	
	

)
			
		
		
	