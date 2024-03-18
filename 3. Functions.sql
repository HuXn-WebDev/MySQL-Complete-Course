-- --------------------------
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    age INT
);

INSERT INTO Users (first_name, last_name, email, password, age)
VALUES
('Jane', 'Doe', 'jane@example.com', 'password4', 10),
('Michael', 'Brown', 'michael@example.com', 'password5', 20),
('Emma', 'Johnson', 'emma1@example.com', 'password6', 35),
('William', 'Davis', 'william@example.com', 'password7', 30),
('Olivia', 'Martinez', 'olivia@example.com', 'password8', 35),
('James', 'Miller', 'james@example.com', 'password9', 35),
('Sophia', 'Garcia', 'sophia@example.com', 'password10', 40),
('Benjamin', 'Rodriguez', 'benjamin@example.com', 'password11', 42),
('Amelia', 'Lopez', 'amelia@example.com', 'password12', 45),
('Elijah', 'Lee', 'elijah@example.com', 'password13', 50),
('Charlotte', 'Harris', 'charlotte@example.com', 'password14', 60),
('David', 'Clark', 'david@example.com', 'password15', 70),
('Mia', 'Lewis', 'mia@example.com', 'password16', 80),
('Alexander', 'Allen', 'alexander@example.com', 'password17', 15),
('Isabella', 'Young', 'isabella@example.com', 'password18', 18),
('Ethan', 'Wright', 'ethan@example.com', 'password19', 22),
('Ava', 'King', 'ava@example.com', 'password20', 24),
('Noah', 'Scott', 'noah@example.com', 'password21', 21),
('Liam', 'Green', 'liam@example.com', 'password22', 34),
('Emma', 'Baker', 'emma2@example.com', 'password23', 31);
-- --------------------------

-- --------------------------
SELECT SUBSTRING("Hello World", 7, 5);
SELECT SUBSTRING("HuXn", 3);
SELECT SUBSTRING(first_name, 2) FROM USERS;
SELECT SUBSTRING(first_name, 2, 6) FROM USERS;
SELECT SUBSTRING(first_name, 1, 7) FROM USERS;
-- --------------------------

-- --------------------------
SELECT REPLACE("HELLO WORLD", "HELLO", "BYE");
SELECT REPLACE('HuXn', "X", "Z");
SELECT REPLACE(first_name, "Jane", "Janeeeee") FROM USERS;
SELECT REPLACE(last_name, "Doe", "Doeeee") FROM USERS;
-- --------------------------

-- --------------------------
SELECT REVERSE('Hello World');
SELECT REVERSE('HuXn');
SELECT REVERSE(first_name) FROM USERS;
SELECT REVERSE(last_name) FROM USERS;
SELECT REVERSE(password) FROM USERS;
-- --------------------------

-- --------------------------
SELECT CHAR_LENGTH('Hello World');
SELECT CHAR_LENGTH('HuXn');
SELECT CHAR_LENGTH(first_name) FROM USERS;
SELECT CHAR_LENGTH(last_name) FROM USERS;
-- --------------------------

-- --------------------------
SELECT LENGTH('Hello World');
SELECT LENGTH('HuXn');
SELECT LENGTH(first_name) FROM USERS;
SELECT LENGTH(last_name) FROM USERS;
-- --------------------------

-- --------------------------
SELECT first_name FROM USERS ORDER BY first_name ASC;
SELECT first_name FROM USERS ORDER BY first_name DESC;
SELECT first_name FROM USERS ORDER BY LENGTH(first_name);
SELECT first_name FROM USERS ORDER BY LENGTH(first_name) DESC;
-- --------------------------

-- --------------------------
SELECT first_name FROM USERS;
SELECT first_name FROM USERS LIMIT 5;
SELECT first_name FROM USERS LIMIT 2;
-- --------------------------

--------------------------
-- % : This wildcard matches zero or more characters.
-- _ : This wildcard matches exactly one character

SELECT * FROM USERS
-- WHERE first_name LIKE "%j%";
-- WHERE first_name LIKE "%%";
-- WHERE first_name LIKE "%mma%";
-- WHERE first_name LIKE "_mma";
WHERE first_name LIKE "__exander";
--------------------------

--------------------------
SELECT COUNT(*) FROM USERS;
SELECT COUNT(first_name) from USERS;

SELECT COUNT(*) FROM USERS
WHERE first_name = "Emma";

SELECT COUNT(*) FROM USERS
WHERE first_name = "Michael";
--------------------------

--------------------------
SELECT MIN(age) FROM USERS;
SELECT MAX(age) FROM USERS;
SELECT AVG(age) FROM USERS;
SELECT SUM(age) FROM USERS;
--------------------------

--------------------------
-- let's say you want to find out the average age of users grouped by their first names.
SELECT first_name, AVG(age) AS average_age
FROM Users
GROUP BY first_name;
--------------------------