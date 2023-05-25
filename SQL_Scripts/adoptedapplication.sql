CREATE TABLE `adopted_application` (
	adopted_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,
    animal_id INT NOT NULL,
    adopter_id_number VARCHAR(10) NOT NULL,
    adopter_name VARCHAR(30) NOT NULL,
    adopter_address VARCHAR(100) NOT NULL,
    adopter_phone VARCHAR(20) NOT NULL,
    adopter_email VARCHAR(40) NOT NULL,
    adopter_job VARCHAR(30) NOT NULL,
    status CHAR(1) NOT NULL,
    adopter_note VARCHAR(500)
);
