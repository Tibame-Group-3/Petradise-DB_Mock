CREATE TABLE `room` (
  `room_id` INT NOT NULL PRIMARY KEY,
  `room_type_id` INT NOT NULL,
  `pet_id` INT NOT NULL,
  `room_name` VARCHAR(30),
  `room_sale_status` CHAR(1) NOT NULL DEFAULT '0',
  `room_status` CHAR(1) NOT NULL DEFAULT '0',
  `room_pet_type` VARCHAR(30) NOT NULL
 );