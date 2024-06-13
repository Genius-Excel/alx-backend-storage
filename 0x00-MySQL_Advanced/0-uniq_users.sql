-- This SQL script creates a table of users.

CREATE TABLE IF NOT EXISTS users(
	id INT NOT NULL AUTO_INCREMENT,
	email VARCHAR(255) NOT NULL,
	name VARCHAR(255),
	UNIQUE(email),
	PRIMARY KEY(id)
);
