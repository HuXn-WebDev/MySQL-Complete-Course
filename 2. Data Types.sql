-- --------------------------------
CREATE TABLE games(
    name VARCHAR(10),
    genre CHAR(10)
);

INSERT INTO games(name, genre) VALUES("game1", "action");
SELECT * FROM games;
-- --------------------------------

-- --------------------------------
CREATE TABLE events (
    event_name VARCHAR(255),
    event_date DATE,
    event_time TIME,
    event_datetime DATETIME
);

DESC events

INSERT INTO events (event_name, event_date, event_time, event_datetime) 
VALUES ('Meeting', '2024-03-02', '14:30:00', '2024-03-02 14:30:00'),
       ('Presentation', '2024-03-03', '09:00:00', '2024-03-03 09:00:00'),
       ('Party', '2024-03-04', '20:00:00', '2024-03-04 20:00:00');

SELECT * FROM events
-- --------------------------------

-- --------------------------------
SELECT CURRENT_DATE();
SELECT CURRENT_TIME();
SELECT NOW();
-- --------------------------------

-- --------------------------------
CREATE TABLE comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author VARCHAR(255),
    content VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO comments (author, content) 
VALUES ('HuXn', 'This is a great article!'),
       ('Jordan', 'I have a question about this topic.'),
       ('Charlie', 'Thanks for sharing this information.');


SELECT * FROM COMMENTS;

-- updating
UPDATE comments SET content="tf is going on here?" WHERE id=1;
UPDATE comments SET content="Never mind my query is resolved" WHERE id=2;
SELECT * FROM COMMENTS;
-- --------------------------------
