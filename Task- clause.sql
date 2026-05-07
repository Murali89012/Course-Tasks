
SELECT *
FROM employees
WHERE salary > 40000;


SELECT *
FROM employees
WHERE emp_name LIKE 'A%';


SELECT *
FROM employees
WHERE department IN ('HR', 'Finance');

SELECT *
FROM employees
WHERE manager IS NULL;



SELECT department, COUNT(*) AS employee_count
FROM employees
WHERE salary > 30000
GROUP BY department;

------------------------------------------------------------
-- 6. Find the average salary for each job_role in the 'IT' department

SELECT job_role, AVG(salary) AS avg_salary
FROM employees
WHERE department = 'IT'
GROUP BY job_role;



SELECT department, job_role, SUM(salary) AS total_salary
FROM employees
WHERE age < 35
GROUP BY department, job_role;



SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;


SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;


SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;


SELECT department, job_role, COUNT(*) AS employee_count
FROM employees
GROUP BY department, job_role;