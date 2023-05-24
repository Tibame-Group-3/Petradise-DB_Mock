CREATE TABLE `animal` (
	animal_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    corp_id INT NOT NULL,
    mem_id INT,
    type VARCHAR(30) NOT NULL,
    animal_name varchar(30) NOT NULL,
    status CHAR(1) NOT NULL,
    animal_sex CHAR(1) NOT NULL,
    animal_age VARCHAR(10) NOT NULL,
    animal_info_note VARCHAR(200)
);
