-- Basic SQL queries --

SELECT * FROM employees;

SELECT * FROM employees
WHERE dept_id = 1;

SELECT emp_id, amount_usd FROM salaries
WHERE amount_usd >= 99900.00;

DELETE FROM employees
WHERE id = 5;