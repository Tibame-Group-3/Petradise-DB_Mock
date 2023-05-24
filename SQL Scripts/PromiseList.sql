CREATE TABLE `promise_list`(
	promise_id INT PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,
    animal_id INT NOT NULL,
    promise_time DATETIME NOT NULL,
    promise_status CHAR(1) NOT NULL
);