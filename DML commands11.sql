
CREATE TABLE appointments (
    id INT,
    patient_name VARCHAR(50),
    appointment_date DATE,
    appointment_time TIME
);

CREATE TABLE orders (
    order_id INT,
    item VARCHAR(50),
    ordered_at DATETIME,
    shipped_at TIMESTAMP
);

INSERT INTO students (id, name, age, city)
VALUES (1, 'Rahul', 20, 'Hyderabad');

INSERT INTO employees
VALUES (101, 'Anita', 'HR', 30000);

INSERT INTO products (product_id, product_name, price)
VALUES 
(1, 'Laptop', 55000),
(2, 'Mouse', 500),
(3, 'Keyboard', 1500);

INSERT INTO appointments (id, patient_name, appointment_date, appointment_time)
VALUES (1, 'Ravi', '2024-07-15', '10:30:00');

INSERT INTO orders (order_id, item, ordered_at, shipped_at)
VALUES 
(1, 'Book', '2024-07-10 14:30:00', '2024-07-11 09:00:00'),
(2, 'Phone', '2024-07-12 16:45:00', '2024-07-13 11:15:00');


UPDATE students
SET city = 'Bangalore'
WHERE id = 2;

UPDATE employees
SET salary = salary + 5000
WHERE department = 'HR';

UPDATE products
SET price = 0;
UPDATE appointments
SET appointment_date = '2024-07-20'
WHERE id = 1;

DELETE FROM students
WHERE id = 3;

DELETE FROM employees
WHERE department = 'Finance';

DELETE FROM products;

DELETE FROM appointments
WHERE appointment_date < '2024-06-01';

DELETE FROM orders
WHERE shipped_at IS NULL;
