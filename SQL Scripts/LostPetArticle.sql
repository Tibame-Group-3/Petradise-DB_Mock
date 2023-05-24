CREATE TABLE `lost_pet_article` (
	article_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	mem_id INT NOT NULL,
	article_update DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	lost_date DATE NOT NULL,
	lost_place VARCHAR(50) NOT NULL,
	chip_num CHAR(20),
	species VARCHAR(20),
	color VARCHAR(100) NOT NULL,
	feature CHAR(50) NOT NULL,
	text VARCHAR(200),
	contact_phone VARCHAR(20),
	article_status CHAR(1) NOT NULL
);