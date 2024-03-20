--------------------------
-- SELECT first_name, last_name
-- FROM Users
-- -- WHERE age != 35
-- -- WHERE first_name != "Emma";
-- WHERE password != "password4";
--------------------------

--------------------------
SELECT *
FROM Users
-- WHERE age > 50;
-- WHERE age > 60;
WHERE LENGTH(first_name) > 5;
--------------------------

--------------------------
SELECT *
FROM Users
-- WHERE age < 50;
-- WHERE age < 60;
WHERE LENGTH(first_name) < 5;
--------------------------


--------------------------
SELECT *
FROM Users
-- WHERE age > 50 AND LENGTH(first_name) > 5
WHERE first_name = "Emma" AND last_name = "Johnson"
--------------------------

--------------------------
SELECT *
FROM Users
-- WHERE age < 30 OR age > 70;
WHERE first_name = 'Jane' OR last_name = 'Johnson';
--------------------------

--------------------------
SELECT *
FROM Users
WHERE age BETWEEN 40 AND 60;
--------------------------

--------------------------
SELECT *
FROM Users
-- WHERE age IN (25, 30, 35);
-- WHERE first_name IN ('Jane', 'Emma', 'Olivia');
WHERE email IN ('jane@example.com', 'olivia@example.com');
--------------------------

--------------------------
SELECT first_name, age,
    CASE
        WHEN age < 30 THEN 'Young'
        WHEN age >= 30 AND age < 60 THEN 'Middle-aged'
        ELSE 'Senior'
    END AS age_group
FROM
    Users;
--------------------------
