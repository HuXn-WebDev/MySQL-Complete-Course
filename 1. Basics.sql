-- -----------------
-- SHOW DATABASES;
-- -----------------

-- -----------------
-- CREATE DATABASE MACHINES;
-- -----------------

-- -----------------
-- DROP DATABASE MACHINES;
-- -----------------

-- -----------------
-- CREATE DATABASE MACHINES;
-- USE MACHINES
-- -----------------

-- -----------------
-- USE GAMES;
-- SELECT DATABASE()
-- -----------------

-- -----------------
-- CREATE DATABASE PC;
-- USE PC;
-- CREATE TABLE GAMES (
--     name VARCHAR(50),
--     ratings INT
-- );
-- -----------------

-- -----------------
-- SHOW TABLES;
-- SHOW COLUMNS FROM GAMES;
-- DESC GAMES;
-- -----------------

-- -----------------
-- CREATE TABLE GAMES (
--     name VARCHAR(50) DEFAULT 'Anonymous',
--     release_year INT DEFAULT 2024,
--     ratings INT NOT NULL
-- );

-- DESC GAMES;
-- -----------------

-- -----------------
-- DROP TABLE GAMES;
-- SHOW TABLES;
-- -----------------

-- CREATE TABLE Movies (
--   name VARCHAR(50),
--   release_year INT,
--   ratings DECIMAL,
--   comment CHAR(10),
--   comment_date DATE DEFAULT "2025-04-02",
--   comment_time TIME DEFAULT "14:10:42"
-- );



-- -----------------
-- CREATE TABLE GAMES (
--     name VARCHAR(50) ,
--     release_year INT,
--     ratings INT
-- );

-- DESC GAMES;

-- INSERT INTO GAMES(name, release_year, ratings)
-- VALUES
-- ('GTA 6', 2015, 6),
-- ('GTA 5', 2013, 9),
-- ('Batman: Arkham Knight', 2015, 7),
-- ('AKR 2', 2017, 2);
-- -----------------

-- -----------------
-- SELECT 2 + 2
-- SELECT 2 - 2
-- SELECT 2 * 2

-- SELECT name FROM GAMES;
-- SELECT ratings FROM GAMES;
-- SELECT release_year FROM GAMES;

-- SELECT name, ratings FROM GAMES;
-- SELECT * FROM GAMES;
-- -----------------

-- -----------------
-- CREATE TABLE MOVIES (
--     id INT PRIMARY KEY, -- 👈 Primary Key / Unique
--     title VARCHAR(50),
--     genre VARCHAR(50),
--     director VARCHAR(50),
--     cast_count INT,
--     languages INT,
--     release_year INT,
--     imdb_ratings DOUBLE,
--     duration INT
-- );

-- INSERT INTO MOVIES(
--     id,
--     title,
--     genre,
--     director,
--     cast_count,
--     languages,
--     release_year,
--     imdb_ratings,
--     duration
-- )
-- VALUES
--  (1, 'The Wither', 'Horror', 'Timur', 5,5,5,5.0,120),
-- ❌ (1,'Extraction','Action','Sam Hargrave',5,5,5,5.0,120)
--  (2, 'Extraction', 'Action', 'Sam Hargrave', 5,5,5,5.0,120);

-- SELECT * FROM MOVIES;
-- -----------------

-- -----------------
-- SELECT * FROM MOVIES;
-- SELECT * FROM MOVIES WHERE genre = 'Action';
-- SELECT title FROM MOVIES WHERE genre = 'Action';
-- SELECT title, genre FROM MOVIES WHERE genre = 'Action';
-- SELECT title FROM MOVIES WHERE imdb_ratings = 5.0;
-- -----------------

-- -----------------
-- SELECT id AS movie_id FROM MOVIES;
-- SELECT title AS movie_name FROM MOVIES;
-- SELECT imdb_ratings AS movie_rating FROM MOVIES;
-- SELECT cast_count AS casts from MOVIES;
-- -----------------

-- -----------------
-- CREATE TABLE USERS(
--     id INT PRIMARY KEY,
--     name VARCHAR(50),
--     age INT,
--     email VARCHAR(50),
--     password VARCHAR(50)
-- );

-- INSERT INTO USERS(id, name, age, email, password)
-- VALUES
-- (1, 'John', 25, 'U3Qc2@example.com', 'password123'),
-- (2, 'Jane', 30, 'qGqQh@example.com', 'password456'),
-- (3, 'Bob', 35, 'I3l0h@example.com', 'password789');

-- SELECT * FROM USERS;

-- UPDATE USERS
-- SET age = 30
-- WHERE id = 1

-- SELECT * FROM USERS;

-- UPDATE USERS
-- SET password = "newpassword"
-- WHERE id = 1

-- SELECT * FROM USERS;
-- -----------------


-- -----------------

SELECT * FROM USERS;
DELETE FROM USERS
WHERE id = 1

SELECT * FROM USERS;

DELETE FROM USERS;

SELECT * FROM USERS;

