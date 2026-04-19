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