use d13r;

CREATE TABLE users (
    id INT,
    phone VARCHAR(15) UNIQUE
);

ALTER TABLE users
ADD CONSTRAINT uq_phone UNIQUE (phone);

CREATE TABLE students (
    roll_no INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    class VARCHAR(20),
    address VARCHAR(100)
);

ALTER TABLE students
MODIFY address VARCHAR(100) NOT NULL;

CREATE TABLE books (
    book_id INT,
    book_student_id INT,
    title VARCHAR(100),
    author VARCHAR(50)
);

ALTER TABLE books
ADD PRIMARY KEY (book_student_id);


CREATE TABLE employee_details (
    emp_id INT,
    emp_name VARCHAR(50),
    age INT
);

ALTER TABLE employee_details
ADD CONSTRAINT chk_age
CHECK (age >= 18);




