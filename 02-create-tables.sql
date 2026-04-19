-- Creating tables --
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    dept_id INT,
    created_at TIMESTAMP
);

CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    department_name varchar(255),
    location varchar(255),
    budget_code varchar(50)
);

CREATE TABLE salaries (
    id SERIAL PRIMARY KEY,
    emp_id INT NOT NULL,
    dept_id INT,
    amount NUMERIC(12, 2),
    currency VARCHAR(3),
    effective_date DATE
);