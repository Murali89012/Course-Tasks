

CREATE TABLE users (
    id INT,
    phone VARCHAR(15) UNIQUE
);



ALTER TABLE users
ADD CONSTRAINT uq_users_phone UNIQUE (phone);



CREATE TABLE students (
    roll_no INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    course VARCHAR(50)
);



ALTER TABLE students
MODIFY address VARCHAR(255) NOT NULL;



CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100)
);



ALTER TABLE books
ADD CONSTRAINT pk_books PRIMARY KEY (book_id);



CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    age INT CHECK (age >= 18)
);



ALTER TABLE employees
ADD CONSTRAINT chk_salary
CHECK (salary > 0);