SELECT COUNT(*) AS TOL_emp
FROM employees;

SELECT COUNT(salary) as emp_with_sal
FROM employees;

SELECT COUNT(DISTINCT department) as unq_department
FROM employees;

SELECT SUM(salary) AS tol_sal_paid
FROM employees;

SELECT AVG(salary) AS avg_sal
FROM employees;

SELECT MAX(salary) as highest_sal
FROM employees;

SELECT MIN(salary) as lowest_sal
FROM employees;

SELECT SUM(DISTINCT bonus) as tol_dis_bonus
FROM employees;

SELECT SUM(salary + bonus) as tol_payout
FROM employees;

SELECT AVG(salary * 0.9) AS avg_salary_after_tax
FROM employees;

