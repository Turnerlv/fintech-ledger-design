-- Inserting data --

INSERT INTO departments (department_name, location, budget_code)
VALUES
    ('Engineering', 'Singapore-HQ', 'ENG-2024-01'),
    ('Product Design', 'Sydney-Office', 'DES-2024-05'),
    ('Solution Architecture', 'Remote-SG', 'SA-2024-03'),
    ('Customer Success', 'Singapore-HQ', 'CS-2024-09');

INSERT INTO employees (first_name, last_name, email, dept_id, created_at)
VALUES
    ('Alex', 'Tan', 'alex.tan@airwallex.example', 1, CURRENT_TIMESTAMP),
    ('Priya', 'Sharma', 'priya.s@techcorp.example', 1, CURRENT_TIMESTAMP),
    ('Jordan', 'Lee', 'j.lee@design.example', 2, CURRENT_TIMESTAMP),
    ('Sarah', 'Chen', 's.chen@solutions.example', 3, CURRENT_TIMESTAMP),
    ('Marcus', 'Goh', 'm.goh@eng.example', 1, CURRENT_TIMESTAMP),
    ('Elena', 'Rodriguez', 'elena.r@fintech.example', 1, CURRENT_TIMESTAMP),
    ('Suresh', 'Menon', 'suresh.m@airwallex.example', 1, CURRENT_TIMESTAMP),
    ('Chloe', 'Lim', 'chloe.l@design.example', 2, CURRENT_TIMESTAMP),
    ('Daniel', 'Khoo', 'd.khoo@solutions.example', 3, CURRENT_TIMESTAMP),
    ('Aisha', 'Khan', 'a.khan@cs.example', 4, CURRENT_TIMESTAMP),
    ('Thomas', 'Mueller', 't.mueller@eng.example', 1, CURRENT_TIMESTAMP),
    ('Jessica', 'Wong', 'jess.w@design.example', 2, CURRENT_TIMESTAMP),
    ('Zane', 'Thatcher', 'zane.t@solutions.example', 3, CURRENT_TIMESTAMP),
    ('Lily', 'Tan', 'lily.t@cs.example', 4, CURRENT_TIMESTAMP),
    ('Omar', 'Hashim', 'omar.h@eng.example', 1, CURRENT_TIMESTAMP);

INSERT INTO salaries (emp_id, amount, currency, effective_date)
VALUES
    (1, 120000.00, 'SGD', '2023-01-15'),
    (2, 135000.00, 'SGD', '2023-03-01'),
    (3, 110000.00, 'AUD', '2023-06-10'),
    (4, 155000.00, 'SGD', '2023-01-01'),
    (5, 180000.00, 'SGD', '2023-09-20'),
    (6, 145000.00, 'SGD', '2023-11-01'),
    (7, 128000.00, 'SGD', '2023-12-15'),
    (8, 95000.00, 'AUD', '2024-01-10'),
    (9, 160000.00, 'SGD', '2023-08-20'),
    (10, 85000.00, 'SGD', '2024-02-01'),
    (11, 195000.00, 'SGD', '2023-05-25'),
    (12, 115000.00, 'AUD', '2023-10-12'),
    (13, 175000.00, 'SGD', '2024-01-05'),
    (14, 88000.00, 'SGD', '2024-03-15'),
    (15, 132000.00, 'SGD', '2023-07-20');
