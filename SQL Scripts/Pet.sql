CREATE DATABASE IF NOT EXISTS gp3;

USE gp3;

DROP TABLE IF EXISTS pet;

CREATE TABLE `pet` (
	pet_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,
    pet_name VARCHAR(30),
    pet_type VARCHAR(30),
    pet_size CHAR(1),
    pet_status CHAR(1) NOT NULL
);