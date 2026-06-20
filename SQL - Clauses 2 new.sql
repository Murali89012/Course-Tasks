CREATE DATABASE SQLClauses;
use SQLclauses;
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);
INSERT INTO orders VALUES
(1,101,'2024-01-01',500),
(2,101,'2024-01-05',700),
(3,101,'2024-01-10',600),
(4,101,'2024-01-15',800),
(5,102,'2024-01-02',400),
(6,102,'2024-01-08',500),
(7,103,'2024-01-03',900),
(8,103,'2024-01-12',1000),
(9,103,'2024-01-18',1200),
(10,103,'2024-01-20',1500),
(11,104,'2024-01-22',700),
(12,105,'2024-01-25',600);

CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(1,'Laptop','Electronics',60000),
(2,'Mobile','Electronics',30000),
(3,'TV','Electronics',40000),
(4,'Chair','Furniture',10000),
(5,'Table','Furniture',15000),
(6,'Sofa','Furniture',30000),
(7,'Book','Stationery',500),
(8,'Pen','Stationery',100);

CREATE TABLE sales (
    salesperson_id INT,
    product_id INT,
    quantity INT,
    sale_date DATE
);

INSERT INTO sales VALUES
(1,101,40,'2024-01-01'),
(1,102,30,'2024-01-05'),
(1,103,50,'2024-01-10'),
(2,101,20,'2024-01-03'),
(2,102,30,'2024-01-08'),
(3,101,60,'2024-01-04'),
(3,102,30,'2024-01-09'),
(3,103,20,'2024-01-12'),
(3,104,10,'2024-01-15');

CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(1,'Amit','Engineering',90000),
(2,'Ravi','Engineering',85000),
(3,'Priya','HR',70000),
(4,'Neha','Engineering',95000),
(5,'Kiran','Finance',80000),
(6,'Arjun','Engineering',88000),
(7,'Sneha','HR',75000);

CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    grade CHAR(1),
    score INT
);

INSERT INTO students VALUES
(1,'Anu','A',95),
(2,'Ravi','A',88),
(3,'Priya','B',90),
(4,'Kiran','B',NULL),
(5,'Neha','C',80),
(6,'Arjun','A',92),
(7,'Sneha','B',85),
(8,'Rahul','C',70),
(9,'Meena','A',NULL),
(10,'John','B',75);

CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO customers VALUES
(101,'Ramesh','Hyderabad'),
(102,'Suresh','Chennai'),
(103,'Mahesh','Bangalore'),
(104,'Naresh','Mumbai'),
(105,'Ganesh','Delhi'),
(106,'Rajesh','Pune'),
(107,'Karthik','Kolkata'),
(108,'Anil','Vizag');

SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 3;
SELECT category,
       SUM(price) AS total_price
FROM products
GROUP BY category
HAVING SUM(price) > 50000;

SELECT salesperson_id,
       COUNT(DISTINCT product_id) AS distinct_products,
       SUM(quantity) AS total_quantity
FROM sales
GROUP BY salesperson_id
HAVING COUNT(DISTINCT product_id) >= 3
   AND SUM(quantity) > 100;

SELECT name, salary
FROM employees
ORDER BY salary DESC;
SELECT product_name,
       price * 0.85 AS discounted_price
FROM products
ORDER BY discounted_price ASC;
SELECT name, grade, score
FROM students
ORDER BY grade ASC, score DESC;


SELECT *
FROM customers
LIMIT 5;

SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 3;
SELECT name, department, salary
FROM employees
WHERE department = 'Engineering'
ORDER BY salary DESC
LIMIT 3;
SELECT *
FROM students
LIMIT 5 OFFSET 5;



SELECT *
FROM products
LIMIT 8 OFFSET 24;



SELECT order_id,customer_id,order_date,amount FROM orders
ORDER BY order_date DESC
LIMIT 10 OFFSET 20;



   
   
   


