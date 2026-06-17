use d13r;
CREATE TABLE employees (
    EmployeeID INT,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Job_Role VARCHAR(50),
    Age INT,
    Manager VARCHAR(100)
);

INSERT INTO employees VALUES
(101, 'Anil',   'IT',      55000, 'Developer', 28, 'Ramesh'),
(102, 'Asha',   'HR',      45000, 'HR Executive', 30, 'Suresh'),
(103, 'Rahul',  'Finance', 60000, 'Accountant', 32, 'Mahesh'),
(104, 'Priya',  'IT',      70000, 'Team Lead', 38, 'Kiran'),
(105, 'Arjun',  'HR',      35000, 'Recruiter', 26, NULL),
(106, 'Sneha',  'Finance', 50000, 'Analyst', 29, 'Mahesh'),
(107, 'Ajay',   'IT',      40000, 'Developer', 24, 'Ramesh'),
(108, 'Kavya',  'Marketing', 30000, 'Executive', 27, NULL),
(109, 'Amit',   'IT',      65000, 'Developer', 31, 'Kiran'),
(110, 'Pooja',  'Finance', 42000, 'Accountant', 34, 'Mahesh');

SELECT * FROM Employees
WHERE salary > 40000;

SELECT * FROM employees
WHERE Name LIKE 'A%';


SELECT *
FROM employees
WHERE Department IN ('HR', 'Finance');


SELECT * FROM employees
WHERE manager IS NULL;

SELECT Department, COUNT(*) AS employee_count FROM employees
 WHERE salary > 30000
 GROUP BY Department;
 
SELECT Job_Role, AVG(Salary) AS Average_Salary
FROM employees
WHERE Department = 'IT'
GROUP BY Job_Role;

SELECT Department, Job_Role, SUM(Salary) AS Total_Salary
FROM employees
WHERE Age < 35
GROUP BY Department, Job_Role;

SELECT Department, SUM(Salary) AS Total_Salary
FROM employees
GROUP BY Department;

SELECT Department, COUNT(*) AS Total_Employees
FROM employees
GROUP BY Department;

SELECT Department, AVG(Salary) AS Average_Salary
FROM employees
GROUP BY Department;

SELECT Department, Job_Role, COUNT(*) AS Employee_Count
FROM employees
GROUP BY Department, Job_Role;
 
 
 



