-- ------------------------------------
CREATE TABLE series (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) UNIQUE,
    release_year INT,
    genre VARCHAR(255)
);

INSERT INTO series (title, release_year, genre) 
VALUES ('Stranger Things', 2016, 'Science Fiction'),
 ('Game of Thrones', 2011, 'Fantasy'),
 ('Game of Thrones', 2011, 'Fantasy');
--  ('Breaking Bad', 2008, 'Drama'),
--  ('The Crown', 2016, 'Historical Drama');
-- ------------------------------------

-- ------------------------------------
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_age INT CHECK (emp_age >= 18 AND emp_age <= 65),
    emp_salary DECIMAL(10, 2) CHECK (emp_salary >= 0)
);

-- This should succeed
INSERT INTO employee (emp_id, emp_name, emp_age, emp_salary) VALUES (1, 'Alice', 25, 50000.00);

-- This should fail due to age constraint
INSERT INTO employee (emp_id, emp_name, emp_age, emp_salary) VALUES (2, 'Bob', 16, 60000.00);

-- This should fail due to salary constraint
INSERT INTO employee (emp_id, emp_name, emp_age, emp_salary) VALUES (3, 'Charlie', 30, -1000.00);
-- ------------------------------------


-- ------------------------------------
-- DROP TABLE employee

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_age INT,
    emp_salary DECIMAL(10, 2),
    CONSTRAINT chk_emp_age CHECK (emp_age >= 18 AND emp_age <= 65),
    CONSTRAINT chk_emp_salary CHECK (emp_salary >= 0)
);

-- This should succeed
INSERT INTO employee (emp_id, emp_name, emp_age, emp_salary) VALUES (1, 'Alice', 25, 50000.00);

-- This should fail due to age constraint
INSERT INTO employee (emp_id, emp_name, emp_age, emp_salary) VALUES (2, 'Bob', 16, 60000.00);

-- This should fail due to salary constraint
INSERT INTO employee (emp_id, emp_name, emp_age, emp_salary) VALUES (3, 'Charlie', 30, -1000.00);
-- ------------------------------------

-- ------------------------------------
SELECT * FROM employee;

ALTER TABLE employee
DROP COLUMN emp_salary;

SELECT * FROM employee;
-- ------------------------------------

-- ------------------------------------
DESC EMPLOYEE

ALTER TABLE employee
MODIFY COLUMN emp_name VARCHAR(255);

DESC EMPLOYEE
-- ------------------------------------


-- ------------------------------------
DESC EMPLOYEE


ALTER TABLE employee
CHANGE COLUMN emp_name full_name VARCHAR(50);

DESC EMPLOYEE;
-- ------------------------------------
