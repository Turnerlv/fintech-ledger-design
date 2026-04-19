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


-- For cascading effects on foreign keys -- 

ALTER TABLE salaries DROP CONSTRAINT fk_employee;

ALTER TABLE salaries 
ADD CONSTRAINT fk_employee
FOREIGN KEY (emp_id) 
REFERENCES employees(id) 
ON DELETE CASCADE;