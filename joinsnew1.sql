CREATE database joins ;
use joins;

CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO departments VALUES
(1,'IT','Hyderabad'),
(2,'HR','Chennai'),
(3,'Finance','Bangalore'),
(4,'Marketing','Mumbai');


CREATE TABLE employees (
    employee_id INT,
    name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(101,'Amit',1,70000),
(102,'Ravi',1,85000),
(103,'Priya',2,55000),
(104,'Neha',3,90000),
(105,'Arjun',NULL,45000);


CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50)
);

INSERT INTO customers VALUES
(1,'Ramesh'),
(2,'Suresh'),
(3,'Mahesh'),
(4,'Ganesh'),
(5,'Rajesh');


CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO orders VALUES
(101,1,6000),
(102,1,7000),
(103,1,8000),
(104,1,9000),
(105,2,4000),
(106,3,5000);



CREATE TABLE payments (
    payment_id INT,
    order_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO payments VALUES
(1,101,6000),
(2,102,7000),
(3,NULL,5000),
(4,106,5000);



CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(50),
    category_id INT
);

INSERT INTO products VALUES
(1,'Laptop',1),
(2,'Mobile',1),
(3,'Keyboard',NULL),
(4,'Mouse',2);


CREATE TABLE categories (
    category_id INT,
    category_name VARCHAR(50)
);

INSERT INTO categories VALUES
(1,'Electronics'),
(2,'Accessories');

CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50)
);

INSERT INTO students VALUES
(1,'Anu'),
(2,'Rahul'),
(3,'Kiran'),
(4,'Meena');


CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(50)
);

INSERT INTO courses VALUES
(1,'Python'),
(2,'SQL'),
(3,'Java');



CREATE TABLE enrollments (
    student_id INT,
    course_id INT
);

INSERT INTO enrollments VALUES
(1,1),
(1,2),
(2,1),
(3,3);


CREATE TABLE attendance (
    attendance_id INT,
    employee_id INT,
    attendance_date DATE,
    status VARCHAR(10)
);

INSERT INTO attendance VALUES
(1,101,'2024-01-01','Present'),
(2,102,'2024-01-01','Absent'),
(3,105,'2024-01-01','Present'),
(4,106,'2024-01-02','Present');


CREATE TABLE salaries (
    employee_id INT,
    salary DECIMAL(10,2)
);

INSERT INTO salaries VALUES
(101,70000),
(102,85000),
(103,55000),
(104,90000);



CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2)
);

INSERT INTO order_items VALUES
(101,1,2,60000),
(102,2,3,30000),
(103,1,1,60000),
(104,4,5,500);


CREATE TABLE suppliers (
    supplier_id INT,
    supplier_name VARCHAR(50)
);

INSERT INTO suppliers VALUES
(1,'ABC Suppliers'),
(2,'XYZ Suppliers');

CREATE TABLE employee_projects (
    employee_id INT,
    project_id INT
);

INSERT INTO employee_projects VALUES
(101,1),
(101,2),
(102,1),
(104,3);

CREATE TABLE contact_details (
    customer_id INT,
    phone_number VARCHAR(15),
    email VARCHAR(100)
);
INSERT INTO contact_details VALUES
(1, '9876543210', 'ramesh@gmail.com'),
(2, '9123456780', 'suresh@gmail.com'),
(3, NULL, 'mahesh@gmail.com'),
(4, '9988776655', 'ganesh@gmail.com');

CREATE TABLE users (
    user_id INT,
    user_name VARCHAR(50),
    signup_date DATE
);

INSERT INTO users VALUES
(1,'Ramesh','2024-01-01'),
(2,'Suresh','2024-01-02'),
(3,'Mahesh','2024-01-03'),
(4,'Ganesh','2024-01-04'),
(5,'Rajesh','2024-01-05');

CREATE TABLE login_history (
    login_id INT,
    user_id INT,
    login_time DATETIME
);

INSERT INTO login_history VALUES
(101,1,'2024-01-10 09:00:00'),
(102,2,'2024-01-11 10:30:00'),
(103,4,'2024-01-12 08:45:00');

CREATE TABLE transactions (
    transaction_id INT,
    customer_id INT,
    amount DECIMAL(10,2),
    transaction_date DATE
);

INSERT INTO transactions VALUES
(1001, 1, 5000, '2024-01-01'),
(1002, 2, 7000, '2024-01-02'),
(1003, 3, 3000, '2024-01-03'),
(1004, 8, 9000, '2024-01-04'),
(1005, NULL, 2000, '2024-01-05');

CREATE TABLE invoices (
    invoice_id INT,
    order_id INT,
    invoice_amount DECIMAL(10,2)
);

INSERT INTO invoices VALUES
(1,101,5000),
(2,102,7000),
(3,NULL,3000),
(4,999,4000);

CREATE TABLE shipments (
    shipment_id INT,
    order_id INT,
    shipment_date DATE
);

INSERT INTO shipments VALUES
(1,101,'2024-01-05'),
(2,102,'2024-01-06'),
(3,NULL,'2024-01-07'),
(4,999,'2024-01-08');

CREATE TABLE refunds (
    refund_id INT,
    order_id INT,
    refund_amount DECIMAL(10,2)
);

INSERT INTO refunds VALUES
(1,101,1000),
(2,NULL,500),
(3,999,750);

CREATE TABLE logs (
    log_id INT,
    system_id INT,
    log_message VARCHAR(100)
);

INSERT INTO logs VALUES
(1,1,'Login Success'),
(2,2,'Payment Processed'),
(3,999,'Unknown System');

CREATE TABLE bookings (
    booking_id INT,
    user_id INT,
    booking_date DATE
);

INSERT INTO bookings VALUES
(1,1,'2024-01-01'),
(2,2,'2024-01-02'),
(3,999,'2024-01-03');

CREATE TABLE audit_logs (
    audit_id INT,
    system_id INT,
    action_name VARCHAR(100)
);

INSERT INTO audit_logs VALUES
(1,1,'User Login'),
(2,2,'Order Created'),
(3,999,'Unknown Action');

CREATE TABLE systems (
    system_id INT,
    system_name VARCHAR(50)
);

INSERT INTO systems VALUES
(1,'ERP'),
(2,'CRM'),
(3,'HRMS');


-- how employee names along with their department names.
SELECT * FROM employees;
SELECT * FROM departments;
SELECT e.name,d.department_name FROM employees e inner join departments d ON e.department_id = d.department_id;

SELECT * FROM orders;
SELECT * FROM customers;

-- Display all orders with their corresponding customer names.

SELECT o.order_id,c.customer_name FROM orders o INNER JOIN customers c on o.customer_id = c.customer_id;

-- . List students who are enrolled in any course.

SELECT * FROM students;
SELECT * FROM enrollments;
SELECT * FROM courses;

SELECT s.student_name,c.course_name FROM students s INNER JOIN enrollments e ON s.student_id = e.student_id
INNER JOIN courses c ON e.course_id = c.course_id;

--  Show products that are present in orders.
SELECT * FROM order_items;
SELECT * FROM products;
SELECT o.order_id,p.product_name FROM Order_items o INNER JOIN products p ON o.product_id = p.product_id;

-- Display employees along with their salary details.

SELECT * FROM employees;
SELECT * FROM  salaries;

SELECT e.name , s.salary FROM employees e INNER join salaries s ON e.employee_id = s.employee_id;


-- Find employees who belong to the 'IT' department.

SELECT * FROM employees;
SELECT * FROM departments;

SELECT e.name, d.department_name FROM employees e INNER JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'IT';

-- Show customers who have placed orders worth more than ₹5000.

SELECT * FROM customers;
SELECT * FROM orders;
SELECT c.c_name,o.amount FROM customers c INNER JOIN orders o ON c.c_id = o.c_id
WHERE amount > 5000;

-- Count the number of orders placed by each customer.
SELECT * FROM customers;
SELECT * FROM orders;
SELECT c.c_name,COUNT(o.order_id) AS total_orders FROM customers c INNER JOIN orders o ON c.c_id = o.c_id
GROUP  BY c.c_name;
  
--  List employees whose salary is greater than 50,000.
SELECT * FROM employees;
SELECT * FROM  salaries;
SELECT e.name,s.salary FROM employees e INNER JOIN salaries s ON e.employee_id = s.employee_id
WHERE s.salary > 50000;

-- Display students who are enrolled in the 'Python' course.

SELECT * FROM students;
SELECT * FROM enrollments;
SELECT * FROM courses;

SELECT s.student_name,c.course_name FROM students s INNER JOIN enrollments e ON s.student_id = e.student_id 
INNER JOIN courses c ON e.course_id = c.course_id WHERE c.course_name = 'python';

-- (HARD)Find employees who work in departments located in 'Hyderabad'.
SELECT * FROM employees;
SELECT * FROM departments;

 SELECT e.name,d.location FROM employees e INNER JOIN departments d ON e.department_id = d.department_id
 WHERE d.location = 'Hyderabad';
 
 --  Get the highest-paid employee in each department.
 
 SELECT * FROM employees;
SELECT * FROM departments;
SELECT d.department_id,d.department_name ,MAX(salary) AS Hightest_sal FROM employees e INNER JOIN departments d ON e.department_id = d.department_id
group by d.department_id,d.department_name;

--- List customers who have placed more than 3 orders.
SELECT * FROM customers;
SELECT * FROM orders;
SELECT c.c_name, COUNT(o.order_id) AS total_orders FROM customers c INNER JOIN orders o ON c.c_id = c. c_id
GROUP BY c.c_name
HAVING COUNT(o.order_id) > 3;

-- Show each product along with the total quantity sold.
SELECT * FROM products;
SELECT * FROM order_items;

SELECT p.product_name, SUM(o.quantity) AS total_quantity FROM products p INNER JOIN order_items o ON p.product_id = o.product_id 
GROUP BY p.product_name;

--  Find employees whose salary is above the average salary.
SELECT * FROM employees;
SELECT * FROM  salaries;
SELECT e.name,s.salary FROM employees e INNER JOIN salaries s ON e.employee_id = s.employee_id
WHERE s.salary > (SELECT avg(salary) FROM salaries);

-- left join
-- how all employees along with their department names, even if some employees are not assigned to any department.

SELECT * FROM employees;
SELECT * FROM departments;
SELECT e.name,d.department_name FROM employees e LEFT JOIN departments d ON e.department_id = d.department_id;

-- Display all orders and their corresponding payment details, even if payment has not been made.

SELECT * FROM orders;
SELECT * FROM payments;
SELECT o.*  FROM orders o LEFT JOIN payments p ON o.order_id = p.order_id;

--  List all customers and their contact details, even if some customers have not provided phone numbers.

SELECT c_name,phone_number FROM customers c LEFT JOIN contact_details cd ON c.c_id = cd.c_id;

-- Show all products and their categories, even if some products are not assigned to any category.

SELECT p.* FROM products p LEFT JOIN categories c ON p.category_id = c.category_id;

--  Display all students and their attendance records, even if attendance is missing.

SELECT student_name,attendance_date FROM students s LEFT JOIN attendance a ON s.student_id = a.student_id;

--  (medium)Find all employees who do NOT have a department assigned.
SELECT * FROM departments;
SELECT * FROM employees;

SELECT e.name FROM employees e LEFT JOIN departments d ON  e.department_id = d.department_id
WHERE d.department_id IS NULL;	

-- Display all orders where payment has NOT been completed.
SELECT * FROM orders;
SELECT * FROM payments;
SELECT o.order_id FROM orders o LEFT JOIN payments p ON o.order_id = p.order_id
WHERE payment_id IS NULL;

-- List all customers who have never placed an order.
SELECT * FROM customers;
SELECT * FROM orders;

SELECT c.c_name FROM customers c LEFT JOIN orders o ON c.c_id = o.c_id
WHERE o.order_id IS NULL;

-- Display all employees and count how many projects they are assigned to, including
-- employees with zero projects.
 SELECT * FROM employees;
SELECT * FROM employee_projects;

SELECT e.name,e.employee_id, COUNT(ep.project_id) AS project_count
FROM employees e LEFT JOIN employee_projects ep ON e.employee_id = ep.employee_id
group by e.name,e.employee_id;

--  Find all customers who placed orders but never made any payment.
SELECT * FROM customers;
 SELECT * FROM orders; 
 SELECT * FROM payments;
 SELECT * FROM customers c INNER JOIN orders o  ON c.c_id = o.c_id  LEFT JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_id IS NULL;

-- Display all employees and their latest salary, even if some employees don’t have salary records
SELECT * FROM employees;
SELECT * FROM salaries;
 
 SELECT e.name,s.salary FROM employees e LEFT JOIN salaries s ON e.employee_id = s.employee_id;
 
 -- List all products along with total sales amount, including products that were never sold.

SELECT * FROM products;
SELECT * FROM order_items;

SELECT p.product_name,ROUND(SUM(oi.quantity * oi.price),0) AS total_sales 
FROM products p
LEFT JOIN order_items oi on p.product_id = oi.product_id
GROUP BY p.product_name;

-- Find all users who signed up but never logged in.
SELECT * FROM users;
SELECT * FROM login_history;

SELECT u.user_name FROM users u LEFT JOIN login_history l ON u.user_id = l.user_id
WHERE l.user_id IS NULL;

-- Display all departments and the number of employees in each department, including departments with zero employees.

SELECT d.department_name, COUNT(e.employee_id) AS total_employees FROM departments d LEFT JOIN employees e 
ON d.department_id = e.department_id
group by d.department_name; 

-- (RJ)Show all payments, even if there is no matching order.

 SELECT * FROM payments;
SELECT * FROM orders;
SELECT o.order_id, P.payment_id FROM orders o RIGHT JOIN payments p ON o.order_id = p.order_id;

-- Display all transactions even if customer details are missing.

SELECT * FROM customers;
SELECT * FROM transactions;

SELECT t.transaction_id,c.c_id FROM customers c RIGHT JOIN transactions t ON c.c_id = t.c_id;

-- List all invoices, even if invoice is not linked to any order.

SELECT * FROM invoices;
SELECT * FROM orders;
SELECT o.order_id,i.invoice_id FROM orders o RIGHT JOIN invoices i ON o.order_id = i.order_id;

-- Show all attendance records, even if employee details are not available.
SELECT e.name, a.attendance_date
FROM employees e
RIGHT JOIN attendance a
ON e.employee_id = a.employee_id;

-- Display all shipment records, even if order information is missing.

SELECT o.order_id, s.shipment_id
FROM orders o
RIGHT JOIN shipments s
ON o.order_id = s.order_id;

-- Show all payments and their corresponding order details; include payments without orders.
SELECT *FROM orders;
SELECT * FROM payments;

SELECT p.payment_id,o.order_id FROM orders o RIGHT JOIN payments p ON o.order_id = p.order_id;

-- List all transactions with customer names; include transactions where customer is not found
SELECT * FROM customers;
SELECT * FROM transactions;
SELECT t.transaction_id,c.c_name FROM customers c RIGHT JOIN transactions t ON c.c_id = t.c_id;

-- Display all refund records along with order details; include refunds without orders.
SELECT * FROM orders;
SELECT * FROM refunds;

SELECT r.refund_id,o.order_id FROM orders o RIGHT JOIN refunds r ON o.order_id = r.order_id;

-- Show all logs with system details; include logs where system info is missing.

SELECT * FROM systems;
SELECT * FROM logs;
SELECT l.log_id,s.system_name FROM systems s RIGHT JOIN logs l ON s.system_id = l.system_id;

-- List all booking records along with user details; include bookings without users.

SELECT * FROM bookings;
SELECT * FROM users;

SELECT b.booking_id,u.user_name,u.signup_date FROM users u RIGHT JOIN bookings b ON u.user_id = b.user_id;

-- Show all payments that do not have matching orders along with available order data if present
SELECT * FROM orders;
SELECT * FROM payments;

SELECT p.payment_id,o.order_id FROM orders o RIGHT JOIN payments p ON o.order_id = p.order_id
WHERE o.order_id IS NULL;

-- . Retrieve all transactions and identify which ones are not linked to any customer.
SELECT * FROM transactions;
SELECT * FROM customers;

SELECT t.transaction_id FROM customers c RIGHT JOIN transactions t ON c.c_id = t.c_id
WHERE c.c_id IS NULL;

--  Display all audit logs and indicate missing system references for each record.
SELECT * FROM audit_logs;
SELECT * FROM systems;

SELECT a.audit_id,
       CASE
         WHEN s.system_id IS NULL THEN 'Missing'
         ELSE 'Available'
       END AS status
FROM systems s
RIGHT JOIN audit_logs a
ON s.system_id = a.system_id;

-- List all invoices and highlight those where no corresponding order exists.

SELECT * FROM orders;
SELECT * FROM invoices;
SELECT i.invoice_id FROM orders o RIGHT JOIN invoices i ON o.order_id = i.order_id
WHERE o.order_id IS NULL;

-- Show all shipment records and classify them based on whether order details are available or not.
SELECT * FROM shipments;
SELECT * FROM orders;
SELECT s.shipment_id,
CASE
WHEN o.order_id IS NULL THEN 'order missing'
ELSE 'order available'
END AS status
FROM orders o
RIGHT JOIN shipments s ON o.order_id = s.order_id;




