use udemy;

CREATE TABLE cats3
(
	name VARCHAR(100) NOT NULL DEFAULT "no name given",
	age INT
);

INSERT INTO cats3 (age)
VALUES (2);