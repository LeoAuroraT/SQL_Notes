use udemy;

DROP TABLE cats_unique;
CREATE TABLE cats_unique
(
	cat_id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL DEFAULT "no name given",
	age INT
);

INSERT INTO cats_unique (name, age)
VALUES ("6657", 3);