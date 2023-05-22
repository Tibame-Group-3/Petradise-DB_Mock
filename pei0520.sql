CREATE DATABASE IF NOT EXISTS gp3;

use gp3;
DROP TABLE IF EXISTS hotel_owner;
DROP TABLE IF EXISTS fav_list;
DROP TABLE IF EXISTS room_type;
DROP TABLE IF EXISTS room;
DROP TABLE IF EXISTS room_pic;
-- 旅館業主--
CREATE TABLE `gp3`.`hotel_owner` (
  `hotel_id` INT NOT NULL AUTO_INCREMENT,
  `hotel_name` VARCHAR(20) NOT NULL,
  `hotel_address` VARCHAR(100) NOT NULL,
  `hotel_status` CHAR(1) NOT NULL DEFAULT '0',
  `hotel_lic` VARCHAR(50) NOT NULL,
  `review_score_people` INT,
  `review_score_total` INT,
  `owner_account` CHAR(8) NOT NULL,
  `owner_password` VARCHAR(20) NOT NULL,
  `owner_name` VARCHAR(50) NOT NULL,
  `owner_id` VARCHAR(10) NOT NULL,
  `owner_bank` CHAR,
  `owner_phone` VARCHAR(20) NOT NULL,
  `owner_email` VARCHAR(50) NOT NULL,
  `owner_access` CHAR(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hotel_id`)
);

-- 收藏清單--
CREATE TABLE `gp3`.`fav_list` (
  `fav_list_id` INT NOT NULL,
  `mem_id` INT NOT NULL,
  `room_type_id` INT NOT NULL,
  PRIMARY KEY (`fav_list_id`),
  FOREIGN KEY (`mem_id`) REFERENCES `member`(`mem_id`),
  FOREIGN KEY (`room_type_id`) REFERENCES `room_type`(`room_type_id`)
);

-- 房型--
CREATE TABLE `gp3`.`room_type` (
  `room_type_id` INT NOT NULL,
  `hotel_id` INT NOT NULL,
  `room_type_name` VARCHAR(30) NOT NULL,
  `room_type_amount` INT NOT NULL,
  `room_type_sale_status` CHAR(1) NOT NULL DEFAULT '0',
  `room_type_about` VARCHAR(1000),
  `room_type_price` INT NOT NULL,
  PRIMARY KEY (`room_type_id`),
  FOREIGN KEY (`hotel_id`) REFERENCES `hotel_owner`(`hotel_id`)
);
-- 房間--
CREATE TABLE `gp3`.`room` (
  `room_id` INT NOT NULL,
  `room_type_id` INT NOT NULL,
  `pet_id` INT NOT NULL,
  `room_name` VARCHAR(30),
  `room_sale_status` CHAR(1) NOT NULL DEFAULT '0',
  `room_status` CHAR(1) NOT NULL DEFAULT '0',
  `room_pet_type` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`room_id`),
  FOREIGN KEY (`room_type_id`) REFERENCES `room_type`(`room_type_id`),
  FOREIGN KEY (`pet_id`) REFERENCES `pet`(`pet_id`)
);
-- 房型圖片--
CREATE TABLE `gp3`.`room_pic` (
  `room_pic_id` INT AUTO_INCREMENT NOT NULL,
  `room_type_id` INT NOT NULL,
  `room_pic` LONGBLOB ,
  PRIMARY KEY (`room_id`),
  FOREIGN KEY (`room_type_id`) REFERENCES ` room_type`(`room_type_id`)
);

