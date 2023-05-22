CREATE DATABASE IF NOT EXISTS gp3;

USE gp3;

DROP TABLE IF EXISTS bonus;

CREATE TABLE `bonus`(
	bonus_id INT NOT NULL AUTO_INCREMENT,
    mem_id INT NOT NULL,
    bonus INT NOT NULL,
	bonus_type VARCHAR(20),
    bonus_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    bonus_status CHAR NOT NULL,
    bonus_content VARCHAR(50),
    CONSTRAINT PRIMARY KEY(bonus_id, mem_id)
);
