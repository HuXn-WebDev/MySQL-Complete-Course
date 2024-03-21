CREATE TABLE MOVIES (
    movie_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    year INT NOT NULL,
    director VARCHAR(100) NOT NULL,
    genre VARCHAR(100) NOT NULL
);

CREATE TABLE Person (
    person_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(255),
    gender VARCHAR(100),
    country VARCHAR(100)
);

CREATE TABLE Comment (
    comment_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    comment_content TEXT NOT NULL,
    movie_id INT NOT NULL,
    person_id INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES MOVIES(movie_id),
    FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

INSERT INTO Movies(title, year, director, genre)
VALUES ('The Shawshank Redemption',1994,'Frank Darabont','Drama'),
('The Godfather',1972,'Francis Ford Coppola','Crime'),
('The Godfather: Part II',1974,'Francis Ford Coppola','Crime'),
('The Dark Knight',2008,'Christopher Nolan','Action'),
('12 Angry Men',1957,'Sidney Lumet','Drama'),
('Schindler''s List',1993,'Steven Spielberg','Drama'),
('Pulp Fiction',1994,'Quentin Tarantino','Crime'),
('The Lord of the Rings: The Return of the King',2003,'Peter Jackson','Action'),
('The Good, the Bad and the Ugly',1966,'Sergio Leone','Western'),
('Fight Club',1999,'David Fincher','Drama');


INSERT INTO PERSON(name,age,email,gender,country)
VALUES ('Tom Hanks', 63, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Brad Pitt', 59, 'U7lZD@example.com', 'Male', 'United States'),
    ('Leonardo DiCaprio', 47, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Margot Robbie', 35, 'Vx5uZ@example.com', 'Female', 'United States'),
    ('Kate Winslet', 32, 'Vx5uZ@example.com', 'Female', 'United States'),
    ('Christian Bale', 45, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Heath Ledger', 49, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Gary Oldman', 51, 'Vx5uZ@example.com', 'Male', 'United States'),
    ('Tom Cruise', 47, 'Vx5uZ@example.com', 'Male', 'United States');

INSERT INTO Comment(movie_id, person_id, comment_content)
VALUES (1,1,'I really like this movie.'),
       (2, 2, 'I really like this movie.'),
       (3, 3, 'I really like this movie.'),
       (4, 4, 'I really like this movie.'),
       (5, 5, 'I really like this movie.'),
       (6, 6, 'I really like this movie.'),
       (7, 7, 'I really like this movie.'),
       (8, 8, 'I really like this movie.'),
       (9, 9, 'I really like this movie.');

