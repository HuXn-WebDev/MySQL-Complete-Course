CREATE TABLE employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (id, first_name, last_name, department, salary)
VALUES
    (1, 'John', 'Doe', 'IT', 50000.00),
    (2, 'Jane', 'Smith', 'HR', 60000.00),
    (3, 'Alice', 'Johnson', 'Finance', 70000.00);

-- Create a view
CREATE VIEW employee_names AS
SELECT id, CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;

-- Query the view
SELECT * FROM employee_names;

-- Update the view (recreate it)
-- Create a view if didn't exists already, or replace it with this new one.

CREATE OR REPLACE VIEW employee_names AS
SELECT id, CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE department = 'IT';

SELECT * FROM employee_names;

-- Delete the view
DROP VIEW employee_names;
