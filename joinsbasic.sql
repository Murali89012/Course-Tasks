CREATE DATABASE joinbasic;
USE joinbasic;
CREATE TABLE company (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100),
    location VARCHAR(100)
);

INSERT INTO company VALUES
(1,'TCS','Hyderabad'),
(2,'Infosys','Bangalore'),
(3,'Wipro','Chennai');

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    dept_location VARCHAR(100),
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES company(company_id)
);

INSERT INTO department VALUES
(101,'HR','Hyderabad',1),
(102,'IT','Bangalore',2),
(103,'Finance','Chennai',3),
(104,'Sales','Hyderabad',1);


CREATE TABLE employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR(100),
salary DECIMAL(10,2),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO employees VALUES
(1,'Ravi',55000,101),
(2,'Sai',65000,102),
(3,'Priya',45000,103),
(4,'Kiran',70000,104),
(5,'Anu',50000,101);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO employees VALUES
(1,'Ravi',55000,101),
(2,'Sai',65000,102),
(3,'Priya',45000,103),
(4,'Kiran',70000,104),
(5,'Anu',50000,101);


SELECT * FROM company;

SELECT * FROM employees;

SELECT * FROM department;


SELECT * FROM employees e INNER JOIN department d ON e.dept_id = d.dept_id;


SELECT e.emp_id, e.emp_name,e.salary, c.company_name FROM employees e INNER JOIN department d ON e.dept_id = d.dept_id 
INNER JOIN company c ON d.company_id = c.company_id;

SELECT e.emp_id, e.emp_name,d.dept_name FROM employees e INNER JOIN department d ON e.dept_id = d.dept_id;

SELECT e.emp_name,e.emp_id,e.salary ,d.dept_location FROM  employees e INNER JOIN department d ON e.dept_id = d.dept_id;

SELECT e.emp_name,e.emp_id,e.salary ,d.dept_name FROM  employees e INNER JOIN department d ON e.dept_id = d.dept_id WHERE dept_name = "HR";

SELECT e.emp_name,d.dept_name,c.company_name FROM employees e INNER JOIN department d ON e.dept_id = d.dept_id INNER JOIN company c ON d.company_id = c.company_id;


SELECT e.emp_id,
       e.emp_name,
       d.dept_name,
       c.company_name
FROM employees e
INNER JOIN department d
ON e.dept_id = d.dept_id
INNER JOIN company c
ON d.company_id = c.company_id;

SELECT *
FROM employees e
INNER JOIN department d
ON e.dept_id = d.dept_id
INNER JOIN company c
ON d.company_id = c.company_id;

SELECT e.emp_name,e.salary,d.dept_name FROM employees e INNER JOIN department d ON e.dept_id = d.dept_id WHERE salary > 50000;

SELECT *
FROM employees e
INNER JOIN department d
ON e.dept_id = d.dept_id
INNER JOIN company c
ON d.company_id = c.company_id WHERE company_name = 'TCS';


CREATE TABLE movie (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(100),
    show_time VARCHAR(20)
);

INSERT INTO movie VALUES
(1,'Pushpa 2','10:00 AM'),
(2,'Salaar','2:00 PM'),
(3,'Devara','6:00 PM');

CREATE TABLE theatre (
    theatre_id INT PRIMARY KEY,
    theatre_name VARCHAR(100),
    location VARCHAR(100)
);

INSERT INTO theatre VALUES
(101,'PVR','Hyderabad'),
(102,'INOX','Bangalore'),
(103,'Cinepolis','Chennai');

CREATE TABLE booking (
    booking_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    movie_id INT,
    theatre_id INT,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (theatre_id) REFERENCES theatre(theatre_id)
);

INSERT INTO booking VALUES
(1,'Ravi',1,101),
(2,'Sai',2,102),
(3,'Priya',1,103),
(4,'Anu',3,101),
(5,'Kiran',2,102);

SELECT * FROM movie;

SELECT * FROM booking;

SELECT * FROM theatre;

SELECT b.booking_id,b.customer_name,m.movie_name FROM booking b INNER JOIN movie m ON m.movie_id = b.movie_id;

SELECT b.booking_id,m.movie_name,t.theatre_name FROM movie m INNER JOIN booking b ON m.movie_id = b.movie_id 
INNER JOIN theatre t ON b.theatre_id = t.theatre_id;

SELECT b.booking_id,b.customer_name,m.movie_name FROM booking b INNER JOIN movie m ON m.movie_id = b.movie_id;

SELECT DISTINCT m.movie_id,
                m.movie_name
FROM movie m
INNER JOIN booking b
ON m.movie_id = b.movie_id;


SELECT b.booking_id,b.customer_name, t.location FROM booking b INNER JOIN theatre t ON b.theatre_id = t.theatre_id;


SELECT m.show_time,m.movie_name,t.theatre_name FROM movie m INNER JOIN booking b ON m.movie_id = b.movie_id 
INNER JOIN theatre t ON b.theatre_id = t.theatre_id;

SELECT b.booking_id,b.customer_name,m.movie_name FROM booking b INNER JOIN movie m ON m.movie_id = b.movie_id WHERE movie_name = "Pushpa 2" ;

SELECT b.booking_id,m.movie_name,t.theatre_name FROM movie m INNER JOIN booking b ON m.movie_id = b.movie_id 
INNER JOIN theatre t ON b.theatre_id = t.theatre_id;

SELECT b.booking_id,b.customer_name,m.movie_name FROM booking b INNER JOIN movie m ON m.movie_id = b.movie_id;

SELECT b.*,m.movie_name,t.theatre_name FROM movie m INNER JOIN booking b ON m.movie_id = b.movie_id 
INNER JOIN theatre t ON b.theatre_id = t.theatre_id;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    branch VARCHAR(50)
);

INSERT INTO students VALUES
(1,'Ravi','CSE'),
(2,'Sai','ECE'),
(3,'Priya','IT'),
(4,'Anu','CSE'),
(5,'Kiran','EEE');

CREATE TABLE placement_company (
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100),
    location VARCHAR(100)
);

INSERT INTO placement_company VALUES
(101,'TCS','Hyderabad'),
(102,'Infosys','Bangalore'),
(103,'Wipro','Chennai');

CREATE TABLE placement (
    placement_id INT PRIMARY KEY,
    student_id INT,
    company_id INT,
    package DECIMAL(10,2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (company_id) REFERENCES placement_company(company_id)
);

INSERT INTO placement VALUES
(1,1,101,450000),
(2,2,102,550000),
(3,3,103,600000),
(4,4,101,500000);


SELECT * FROM students;

SELECT * FROM placement_company;

SELECT * FROM placement;

SELECT s.*,p.placement_id FROM placement p INNER JOIN students s ON p.student_id = s.student_id;


SELECT s.student_name,c.company_name FROM placement_company c INNER JOIN placement  p ON c.company_id = p.company_id INNER JOIN students s ON p.student_id = s.student_id;

SELECT s.student_name,p.package FROM placement p INNER JOIN students s ON p.student_id = s.student_id;

SELECT s.student_name,c.company_name FROM placement_company c INNER JOIN placement  p ON c.company_id = p.company_id 
INNER JOIN students s ON p.student_id = s.student_id WHERE company_name = "TCS" ;

SELECT * FROM placement p INNER JOIN students s ON p.student_id = s.student_id;

SELECT s.student_name ,s.branch,c.company_name FROM placement_company c INNER JOIN placement  p ON c.company_id = p.company_id 
INNER JOIN students s ON p.student_id = s.student_id;

SELECT s.student_name , p.placement_id FROM placement p INNER JOIN students s ON p.student_id = s.student_id;

SELECT s.student_name ,p.package,c.company_name FROM placement_company c INNER JOIN placement  p ON c.company_id = p.company_id 
INNER JOIN students s ON p.student_id = s.student_id WHERE package > 500000 ;

SELECT s.student_name ,c.company_name, c.location FROM placement_company c INNER JOIN placement  p ON c.company_id = p.company_id 
INNER JOIN students s ON p.student_id = s.student_id;

SELECT s.*,p.placement_id FROM placement p INNER JOIN students s ON p.student_id = s.student_id;

SELECT * FROM placement_company c INNER JOIN placement  p ON c.company_id = p.company_id 
INNER JOIN students s ON p.student_id = s.student_id;

SELECT s.student_id AS id,p.placement_id FROM placement p INNER JOIN students s ON p.student_id = s.student_id;


SELECT s.student_name ,p.package,c.company_name FROM placement_company c INNER JOIN placement  p ON c.company_id = p.company_id 
INNER JOIN students s ON p.student_id = s.student_id WHERE package > 500000 ;