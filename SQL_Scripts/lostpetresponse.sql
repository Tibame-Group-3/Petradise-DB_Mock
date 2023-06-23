CREATE TABLE `lost_pet_response` (
	response_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	mem_id INT NOT NULL,
	article_id INT NOT NULL,
	response_content VARCHAR(200) NOT NULL,
	response_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);