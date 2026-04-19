-- Migration scripts --
ALTER TABLE employees 
ADD COLUMN hire_date DATE;

-- Insert data --
UPDATE employees SET hire_date = '2023-01-15' WHERE id = 1;
UPDATE employees SET hire_date = '2023-03-01' WHERE id = 2;
UPDATE employees SET hire_date = '2023-06-10' WHERE id = 3;
UPDATE employees SET hire_date = '2023-01-01' WHERE id = 4;
UPDATE employees SET hire_date = '2023-09-20' WHERE id = 5;
UPDATE employees SET hire_date = '2023-11-01' WHERE id = 6;
UPDATE employees SET hire_date = '2023-12-15' WHERE id = 7;
UPDATE employees SET hire_date = '2024-01-10' WHERE id = 8;
UPDATE employees SET hire_date = '2023-08-20' WHERE id = 9;
UPDATE employees SET hire_date = '2024-02-01' WHERE id = 10;
UPDATE employees SET hire_date = '2023-05-25' WHERE id = 11;
UPDATE employees SET hire_date = '2023-10-12' WHERE id = 12;
UPDATE employees SET hire_date = '2024-01-05' WHERE id = 13;
UPDATE employees SET hire_date = '2024-03-15' WHERE id = 14;
UPDATE employees SET hire_date = '2023-07-20' WHERE id = 15;