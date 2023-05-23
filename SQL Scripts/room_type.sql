CREATE TABLE `room_type` (
  `room_type_id` INT NOT NULL PRIMARY KEY,
  `hotel_id` INT NOT NULL,
  `room_type_name` VARCHAR(30) NOT NULL,
  `room_type_amount` INT NOT NULL,
  `room_type_sale_status` CHAR(1) NOT NULL DEFAULT '0',
  `room_type_about` VARCHAR(1000),
  `room_type_price` INT NOT NULL
 );