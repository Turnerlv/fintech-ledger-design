-- Creating a database --
CREATE DATABASE company_records;

CREATE USER db_user WITH PASSWORD 'Abcde1234';
GRANT ALL PRIVILEGES ON DATABASE company_records TO db_user;

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

-- Update table --
ALTER TABLE employees
ADD CONSTRAINT fk_department
FOREIGN KEY (dept_id)
REFERENCES departments(id);

ALTER TABLE salaries
ADD CONSTRAINT fk_employee
FOREIGN KEY (emp_id)
REFERENCES employees(id);

ALTER TABLE salaries
ADD CONSTRAINT fk_department
FOREIGN KEY (dept_id)
REFERENCES departments(id);

-- Correcting table --

ALTER TABLE salaries
DROP COLUMN dept_id;

ALTER TABLE salaries 
ADD COLUMN amount_usd NUMERIC(12, 2) 
GENERATED ALWAYS AS (
    CASE 
        WHEN currency = 'SGD' THEN amount * 0.74
        WHEN currency = 'AUD' THEN amount * 0.65
        ELSE amount 
    END
) STORED;

-- Inserting data --

INSERT INTO departments (department_name, location, budget_code)
VALUES
    ('Engineering', 'Singapore-HQ', 'ENG-2024-01'),
    ('Product Design', 'Sydney-Office', 'DES-2024-05'),
    ('Solution Architecture', 'Remote-SG', 'SA-2024-03');

INSERT INTO employees (first_name, last_name, email, dept_id, created_at)
VALUES
    ('Alex', 'Tan', 'alex.tan@airwallex.example', 1, CURRENT_TIMESTAMP),
    ('Priya', 'Sharma', 'priya.s@techcorp.example', 1, CURRENT_TIMESTAMP),
    ('Jordan', 'Lee', 'j.lee@design.example', 2, CURRENT_TIMESTAMP),
    ('Sarah', 'Chen', 's.chen@solutions.example', 3, CURRENT_TIMESTAMP),
    ('Marcus', 'Goh', 'm.goh@eng.example', 1, CURRENT_TIMESTAMP);

INSERT INTO salaries (emp_id, amount, currency, effective_date)
VALUES
    (1, 120000.00, 'SGD', '2023-01-15'),
    (2, 135000.00, 'SGD', '2023-03-01'),
    (3, 110000.00, 'AUD', '2023-06-10'),
    (4, 155000.00, 'SGD', '2023-01-01'),
    (5, 180000.00, 'SGD', '2023-09-20');

-- Basic SQL queries --

 SELECT * FROM employees;

SELECT * FROM employees
WHERE dept_id = 1;

SELECT emp_id, amount_usd FROM salaries
WHERE amount_usd >= 99900.00;

