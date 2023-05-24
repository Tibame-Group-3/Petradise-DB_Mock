CREATE TABLE `lost_pet_responce` (
	responce_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	mem_id INT NOT NULL,
	article_id INT NOT NULL,
	responce_content VARCHAR(200) NOT NULL,
	responce_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);