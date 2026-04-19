-- Intermediate SQL queries --

SELECT first_name, last_name, dept_id, department_name
FROM employees
JOIN departments ON employees.dept_id = departments.id;

-- Avg salary by department --
SELECT departments.department_name, SUM(salaries.amount)
FROM departments
JOIN employees ON employees.dept_id = departments.id
JOIN salaries ON employees.id = salaries.emp_id
GROUP BY department_name;


SELECT AVG(amount)::NUMERIC(10,2) AS "Average employee salary"
FROM salaries;