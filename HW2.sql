
CREATE DATABASE assignment2;

CREATE TABLE `movies` (
`movie_id` int NOT NULL AUTO_INCREMENT,
`movie_title` varchar(30) NOT NULL,
 PRIMARY KEY (movie_id) 
);


CREATE TABLE `people` (
`person_id` int NOT NULL AUTO_INCREMENT,
`person_name` varchar(15) NOT NULL,
PRIMARY KEY (person_id)
);


CREATE TABLE `reviews` (
`movie_id` int NOT NULL,
`person_id` int NOT NULL,
`grade` int NOT NULL,
PRIMARY KEY (movie_id,person_id),
FOREIGN KEY (movie_id)
 references movies(movie_id),
FOREIGN KEY (person_id)
 references people(person_id)
ON DELETE CASCADE On UPDATE CASCADE
);


INSERT INTO movies (movie_title) VALUES
("La la Land"),
("Arrival"),
("Lion"),
("Star Trsck Beyond"),
("Jakie"),
("Zootopia");
 
INSERT INTO people (person_name) VALUES
("Pamela"),
("Marina"),
("Anrew"),
("Alex"),
("Albina"),
("Irene");

INSERT INTO reviews (person_id, movie_id,grade) VALUES
(1,1,5),
(1,2,5),
(1,3,4),
(1,5,4),
(1,6,4),
(2,1,3),
(2,2,2),
(2,3,4),
(2,5,5),
(2,6,4),
(3,1,5),
(3,2,5),
(3,3,1),
(3,5,4),
(3,6,3),
(4,1,5),
(4,2,5),
(4,3,3),
(4,5,4),
(4,6,4),
(5,1,4),
(5,2,1),
(5,3,3),
(5,5,5),
(5,6,5),
(6,1,3),
(6,2,5),
(6,3,5),
(6,5,4),
(6,6,3);

SELECT *
FROM reviews;
