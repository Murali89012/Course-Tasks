show databases;
use d13r;

SELECT * 
FROM products
WHERE price = 500;

SELECT * 
FROM products
WHERE stock_quantity < 10;

SELECT * 
FROM products
WHERE price > 1000;

SELECT * 
FROM products
WHERE price <= 250;

SELECT * 
FROM products
WHERE stock_quantity >= 50;

SELECT * 
FROM products
WHERE product_name <> 'Pen';


SELECT * 
FROM employees
WHERE department = 'Sales'
AND salary > 40000;

SELECT * 
FROM employees
WHERE city = 'Hyderabad'
OR salary > 60000;

SELECT * 
FROM employees
WHERE NOT department = 'Finance';
SELECT * 
FROM students
WHERE city IN ('Mumbai', 'Pune', 'Kolkata');

SELECT * 
FROM students
WHERE city NOT IN ('Delhi', 'Chennai');

SELECT * 
FROM students
WHERE email IS NULL;
SELECT * 
FROM students
WHERE email IS NOT NULL;

SELECT * 
FROM students
WHERE name LIKE 'S%';

SELECT * 
FROM students
WHERE name LIKE '%a';

SELECT * 
FROM students
WHERE name LIKE '____';

SELECT * 
FROM students
WHERE name NOT LIKE 'R%';
