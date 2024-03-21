-- --------------------------------------------------------------
CREATE TABLE engineer (
    engineer_id INT AUTO_INCREMENT PRIMARY KEY,
    engineer_name VARCHAR(255) NOT NULL,
    profession VARCHAR(255) NOT NULL,
    email VARCHAR(50)
);

CREATE TABLE tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(255),
    task_description TEXT,
    engineer_id INT,
    -- FOREIGN KEY (engineer_id) REFERENCES engineer(engineer_id)
);

INSERT INTO engineer (engineer_name, profession, email)
VALUES
    ('Alice Johnson', 'Full-Stack', 'aj@gmail.com'),
    ('Bob Smith', 'Back-End', 'bobsmith@gmail.com'),
    ('Charlie Brown', 'Front-End', 'charilebrown@gmail.com');

INSERT INTO tasks (task_name, task_description, engineer_id)
VALUES
    ('Task 1', 'Design the UI in Figma', 1),
    ('Task 2', 'Build the Server In Bun', 2),
    ('Task 3', 'Code the UI in TailwindCSS', 1)
    -- ('Task 40', 'Description for Task 40', 40); ❌
-- --------------------------------------------------------------

CREATE TABLE engineer (
    engineer_id INT AUTO_INCREMENT PRIMARY KEY,
    engineer_name VARCHAR(255) NOT NULL,
    profession VARCHAR(255) NOT NULL,
    email VARCHAR(50)
);

CREATE TABLE tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(255),
    task_description TEXT,
    engineer_id INT,
    FOREIGN KEY (engineer_id) REFERENCES engineer(engineer_id)
);

INSERT INTO engineer (engineer_name, profession, email)
VALUES
    ('Alice Johnson', 'Full-Stack', 'aj@gmail.com'),
    ('Bob Smith', 'Back-End', 'bobsmith@gmail.com'),
    ('Charlie Brown', 'Front-End', 'charilebrown@gmail.com');

INSERT INTO tasks (task_name, task_description, engineer_id)
VALUES
    ('Task 1', 'Design the UI in Figma', 1),
    ('Task 2', 'Build the Server In Bun', 2),
    ('Task 3', 'Code the UI in TailwindCSS', 1)
    -- ('Task 40', 'Description for Task 40', 40); ❌

SELECT * FROM tasks

-- ------------------- CROSS JOIN
-- A cross join is a type of join operation that combines each row from one table with every row from another table. It essentially creates a new result set containing all possible combinations of rows from the joined tables.

SELECT * FROM engineer CROSS JOIN tasks;
SELECT * FROM engineer, tasks

-- ------------------ INNER JOIN
-- An inner join selects records that have matching values in both tables.
SELECT * FROM engineer  
INNER JOIN tasks  ON engineer.engineer_id = tasks.engineer_id;

SELECT * FROM engineer e 
INNER JOIN tasks t ON e.engineer_id = t.engineer_id;

SELECT engineer_name, email, task_name, task_description FROM engineer e 
INNER JOIN tasks t ON e.engineer_id = t.engineer_id;

SELECT * FROM tasks t
JOIN engineer e  ON e.engineer_id = t.engineer_id;
------------------------------------------

------------------------------------------
-- LEFT JOIN
-- A left join returns all records from the left table (engineer), and the matched records from the right table (tasks).
--  If there's no match, the result is NULL from the right side.
SELECT * FROM engineer e 
LEFT JOIN tasks t ON e.engineer_id = t.engineer_id;

------------------------------------------
-- RIGHT JOIN
-- A right join returns all records from the right table (tasks), and the matched records from the left table (engineer). If there's no match, the result is NULL from the left side.
SELECT * FROM engineer e 
RIGHT JOIN tasks t ON e.engineer_id = t.engineer_id;