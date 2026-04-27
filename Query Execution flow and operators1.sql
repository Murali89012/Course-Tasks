USE murali;
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    discount DECIMAL(5,2),
    stock_quantity INT
);

CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(50),
    monthly_salary DECIMAL(10,2),
    bonus_percent DECIMAL(5,2)
);
 

SELECT product_name, price * stock_quantity AS total_value
FROM Products;

SELECT product_name, price - 5 AS sale_price
FROM Products;
SELECT product_name, price * 1.10 AS increased_price
FROM Products;
SELECT name, monthly_salary * 12 AS annual_salary
FROM Employees;
SELECT name, monthly_salary * (bonus_percent / 100) AS bonus_amount
FROM Employees;
SELECT product_id, product_id % 2 AS remainder
FROM Products;

SELECT product_name, stock_quantity / 4 AS stock_per_warehouse
FROM Products;
SELECT product_name, price - 2 AS profit_per_unit
FROM Products;
SELECT name, monthly_salary + 200 AS total_compensation
FROM Employees;
SELECT product_name, (price * 50) - 100 AS bulk_price
FROM Products;