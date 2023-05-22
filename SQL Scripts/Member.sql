CREATE DATABASE IF NOT EXISTS gp3;

USE gp3;

DROP TABLE IF EXISTS member;

CREATE TABLE `member` (
	mem_id INT NOT NULL,
    mem_name VARCHAR(50) NOT NULL,
    mem_account VARCHAR(20) NOT NULL,
    mem_password VARCHAR(20) NOT NULL,
    mem_birthday DATE NOT NULL,
    mem_phone VARCHAR(20) NOT NULL,
    mem_email VARCHAR(50) NOT NULL,
    mem_address VARCHAR(100),
    mem_access CHAR(1) NOT NULL,
    mem_bonus INT NOT NULL
);