create database basic_joins;
use basic_joins;

CREATE TABLE company (
    company_id INT,
    company_name VARCHAR(50)
);

INSERT INTO company VALUES
(1,'TCS'),
(2,'Infosys'),
(3,'Wipro');

CREATE TABLE department (
    department_id INT,
    department_name VARCHAR(50),
    location VARCHAR(50),
    company_id INT
);

INSERT INTO department VALUES
(101,'HR','Hyderabad',1),
(102,'IT','Bangalore',1),
(103,'Finance','Chennai',2),
(104,'Marketing','Pune',3);

CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT
);

INSERT INTO employees VALUES
(1,'Amit',60000,102),
(2,'Ravi',45000,101),
(3,'Priya',75000,103),
(4,'Neha',55000,104),
(5,'Kiran',40000,NULL);

CREATE TABLE movies (
    movie_id INT,
    movie_name VARCHAR(50),
    show_time VARCHAR(20)
);

INSERT INTO movies VALUES
(1,'Pushpa','10:00 AM'),
(2,'Salaar','02:00 PM'),
(3,'RRR','06:00 PM');

CREATE TABLE theatres (
    theatre_id INT,
    theatre_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO theatres VALUES
(101,'PVR','Hyderabad'),
(102,'INOX','Bangalore'),
(103,'Cinepolis','Chennai');

CREATE TABLE bookings (
    booking_id INT,
    customer_name VARCHAR(50),
    movie_id INT,
    theatre_id INT
);

INSERT INTO bookings VALUES
(1,'Ramesh',1,101),
(2,'Suresh',2,102),
(3,'Mahesh',1,101),
(4,'Ganesh',3,103);

CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50),
    branch VARCHAR(50)
);

INSERT INTO students VALUES
(1,'Anu','CSE'),
(2,'Rahul','ECE'),
(3,'Kiran','EEE'),
(4,'Meena','CSE');

CREATE TABLE placement (
    placement_id INT,
    student_id INT,
    company_name VARCHAR(50),
    package DECIMAL(10,2),
    location VARCHAR(50)
);

INSERT INTO placement VALUES
(101,1,'TCS',500000,'Hyderabad'),
(102,2,'Infosys',650000,'Bangalore'),
(103,4,'Wipro',550000,'Chennai');

-- Retrieve all employees along with their department names.
SELECT * FROM employees;
SELECT * FROM department;
SELECT e.employee_name,d.department_name FROM employees e INNER JOIN department d ON e.department_id = d.department_id;

--  Display employee name, salary, and company name.
SELECT * FROM employees;
SELECT * FROM department;
SELECT *FROM company;
SELECT e.employee_name,e.salary,c.company_name FROM employees e INNER JOIN department d ON e.department_id = d.department_id
INNER JOIN company c ON d.company_id = c.company_id;

--  List all employees who are assigned to a department.
SELECT * FROM employees;
SELECT * FROM department;
SELECT e.employee_name FROM employees e INNER JOIN department d ON e.department_id = d.department_id;

-- Show employee details along with department location.
SELECT * FROM employees;
SELECT * FROM department;

SELECT e.*,d.location FROM employees e INNER JOIN department d ON e.department_id = d.department_id;

--  Get all employees working in a specific department (e.g., "HR")
SELECT * FROM employees;
SELECT * FROM department;

SELECT e.employee_name,d.department_name FROM employees e INNER JOIN department d ON e.department_id = d.department_id
WHERE d.department_name ='HR';

--  Display employee name and company name where employees belong to a department.
SELECT * FROM employees;
SELECT * FROM department;
SELECT * FROM company;

SELECT e.employee_name,c.company_name,d.department_name FROM employees e INNER JOIN department d ON e.department_id = d.department_id
INNER JOIN company c ON d.company_id = c.company_id;

--  Find employees whose department exists in the company table.
SELECT * FROM employees;
SELECT * FROM department;
SELECT * FROM company;

SELECT e.employee_name FROM employees e INNER JOIN department d ON e.department_id = d.department_id 
INNER JOIN company c ON d.company_id = c.company_id;

-- Show all employees with their department and company details.
SELECT c.* ,employee_name,department_name FROM employees e INNER JOIN department d ON e.department_id = d.department_id
INNER JOIN company c ON d.company_id = c.company_id;

-- Retrieve employees and their department names where salary > 50,000.
SELECT e.employee_name,d.department_name,e.salary FROM employees e INNER JOIN department d ON e.department_id = d.department_id
WHERE e.salary > 50000;

-- List employees who are working in departments under a specific company.
SELECT * FROM employees;
SELECT * FROM department;
SELECT * FROM company;

SELECT e.employee_name FROM employees e INNER JOIN department d ON e.department_id = d.department_id
INNER JOIN company c on d.company_id = c.company_id
WHERE c.company_name = 'TCS';

-- Retrieve all bookings along with movie names.
SELECT * FROM bookings;
SELECT * FROM movies;

SELECT b.booking_id,movie_name FROM bookings b INNER JOIN movies m ON b.movie_id = m.movie_id;

-- Display movie name and theatre name for each booking.
SELECT * FROM movies;
SELECT * FROM bookings;
SELECT * FROM theatres;

SELECT movie_name,theatre_name FROM movies m INNER JOIN bookings b ON m.movie_id = b.movie_id
INNER JOIN  theatres t ON b.theatre_id = t.theatre_id;

-- List all customers who booked tickets for a movie.
SELECT * FROM bookings;
SELECT * FROM movies;
 
 SELECT b.customer_name,m.movie_name FROM bookings b INNER JOIN movies m ON b.movie_id = m.movie_id;
 
 -- Show all movies that have at least one booking.
 SELECT * FROM movies;
 SELECT * FROM bookings;
 
 SELECT DISTINCT m.movie_name FROM movies m INNER JOIN bookings b ON m.movie_id = b.movie_id;
 
 --  Retrieve booking details with theatre location.
 SELECT * FROM bookings;
 SELECT * FROM theatres;
 
 SELECT b.booking_id,b.customer_name,t.location FROM bookings b INNER JOIN theatres t ON b.theatre_id = t.theatre_id;
 
-- Display movie name, show time, and theatre name.
SELECT * FROM movies;
SELECT * FROM bookings;
SELECT * FROM theatres;

SELECT m.movie_name,m.show_time,t.theatre_name FROM movies m INNER JOIN bookings b ON m.movie_id = b.movie_id
INNER JOIN theatres t ON b.theatre_id = t.theatre_id;

-- Find all bookings made for a specific movie.
SELECT * FROM bookings;
SELECT * FROM movies;
SELECT b.*,m.movie_name FROM bookings b INNER JOIN movies m ON b.movie_id = m.movie_id
WHERE m.movie_name = 'salaar';

-- Show all theatres where movies are booked
SELECT * FROM movies;
SELECT * FROM bookings;
SELECT * FROM theatres;

SELECT DISTINCT t.theatre_name FROM movies m INNER JOIN bookings b ON b.movie_id = m.movie_id 
INNER JOIN theatres t on b.theatre_id = t.theatre_id;

--  Retrieve movies along with number of bookings (using INNER JOIN).
SELECT * FROM movies;
SELECT * FROM bookings;

SELECT DISTINCT m.movie_name,COUNT(b.booking_id) AS total_bookings FROM movies m 
INNER JOIN bookings b ON m.movie_id = b.movie_id
GROUP BY m.movie_name;

-- Display booking details only for movies available in theatres.
select*from theatres;
select*from bookings;
select*from movies;

select b.booking_id,m.movie_name,t.theatre_name from  movies m inner join bookings b on m.movie_id = b.movie_id 
inner join theatres t on  b.theatre_id = t.theatre_id;

-- Retrieve all students who got placed.
SELECT * FROM students;
SELECT * FROM placement;
SELECT s.student_name,p.company_name FROM students s INNER JOIN placement p ON s.student_id = p.student_id;

-- Display student name along with company name.
SELECT * FROM students;
SELECT * FROM placement;

SELECT s.student_name,p.company_name FROM students s INNER JOIN placement p ON s.student_id = p.student_id;

-- List students with their placement package details.
SELECT * FROM students;
SELECT * FROM placement;

SELECT s.student_name,p.package FROM students s INNER JOIN placement p ON s.student_id = p.student_id;

--  Show students who are placed in a specific company.
SELECT * FROM students;
SELECT * FROM placement;

SELECT s.student_id,p.company_name FROM students s INNER JOIN placement p ON s.student_id = p.student_id
WHERE p.company_name = 'TCS';

--  Retrieve all placement records with student details.
SELECT p.*,s.* FROM placement p INNER JOIN students s ON p.student_id = s.student_id; 

-- Display student name, branch, and placement company.
SELECT * FROM students;
SELECT * FROM placement;
SELECT s.student_name, s.branch,p.company_name FROM students s INNER JOIN placement p ON s.student_id = p.student_id;

--  Find students whose placement record exists.
SELECT * FROM students;
SELECT * FROM placement;

SELECT s.student_name FROM students s INNER JOIN placement p ON s.student_id = p.student_id;

-- Show placed students with salary greater than a specific amount.
SELECT * FROM students;
SELECT * FROM placement;

SELECT s.student_name,p.package FROM students s INNER JOIN placement p ON s.student_id = p.student_id
WHERE p.package > 500000;

--  Retrieve student details along with placement location.
SELECT * FROM students;
SELECT * FROM placement;

SELECT s.*,p.location FROM students s INNER JOIN placement p ON s.student_id = p.student_id;

-- Display all students who have valid placement records.
SELECT * FROM students;
SELECT * FROM placement;

SELECT s.student_name
FROM students s
INNER JOIN placement p
ON s.student_id = p.student_id;

-- . Write a query to join three tables and display combined details.
SELECT * FROM employees;
SELECT * FROM department;
SELECT * FROM company;

SELECT e.employee_name,d.department_name,c.company_name FROM employees e INNER JOIN department d ON e.department_id = d.department_id
INNER JOIN company c ON d.company_id = c.company_id;

-- Find records that exist in all three tables only.

SELECT * FROM employees e
INNER JOIN department d
ON e.department_id = d.department_id
INNER JOIN company c
ON d.company_id = c.company_id;

-- Retrieve data where matching exists across multiple tables.
SELECT e.employee_name,
       d.department_name,
       c.company_name
FROM employees e
INNER JOIN department d
ON e.department_id = d.department_id
INNER JOIN company c
ON d.company_id = c.company_id;

-- Write an INNER JOIN query using aliases.
SELECT e.employee_name,
       d.department_name,
       c.company_name
FROM employees e
INNER JOIN department d
ON e.department_id = d.department_id
INNER JOIN company c
ON d.company_id = c.company_id;

-- Combine multiple INNER JOINs with conditions (WHERE clause).
SELECT e.employee_name,
       d.department_name,
       c.company_name
FROM employees e
INNER JOIN department d
ON e.department_id = d.department_id
INNER JOIN company c
ON d.company_id = c.company_id
WHERE e.salary > 50000;

