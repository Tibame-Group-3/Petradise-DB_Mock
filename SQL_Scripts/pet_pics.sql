CREATE TABLE `pet_pics`(
	`id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `mem_id` INTEGER NOT NULL,
    `pet_id` INTEGER NOT NULL,
    `pic` LONGBLOB NOT NULL
);