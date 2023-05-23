
/* ---------- INIT ---------- */

DROP DATABASE gp3;

CREATE DATABASE gp3;

USE gp3;


/* ---------- CREATE TABLE STATEMENTS ---------- */


/* administrator_access */

create table administrator_access(
	admin_id int,
    function_id int,
     primary key(admin_id, function_id)
);


/* hotel_owner */

CREATE TABLE `hotel_owner` (
  `hotel_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `hotel_name` VARCHAR(20) NOT NULL,
  `hotel_address` VARCHAR(100) NOT NULL,
  `hotel_status` CHAR(1) NOT NULL DEFAULT '0',
  `hotel_lic_id` VARCHAR(50) NOT NULL,
  `hotel_lic_pic` LONGBLOB,
  `review_score_people` INT,
  `review_score_total` INT,
  `owner_account` CHAR(8) NOT NULL,
  `owner_password` VARCHAR(20) NOT NULL,
  `owner_name` VARCHAR(50) NOT NULL,
  `owner_id` VARCHAR(10) NOT NULL,
  `owner_bank` CHAR,
  `owner_phone` VARCHAR(20) NOT NULL,
  `owner_email` VARCHAR(50) NOT NULL,
  `owner_access` CHAR(1) NOT NULL DEFAULT '0'
   
);


/* Pet */

CREATE TABLE `pet` (
	pet_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,
    pet_name VARCHAR(30),
    pet_type VARCHAR(30),
    pet_size CHAR(1),
    pet_status CHAR(1) NOT NULL
);


/* room_review */

create table room_review(
	room_review_id int primary key not null,
    hotel_id int not null,
	room_order_id int not null,
	room_review_score int not null,
	room_review_content varchar(200)
);


/* administrator */

create table administrator(
	admin_id int primary key not null,
    admin_name varchar(50) not null,
    admin_account varchar(20) not null,
    admin_password varchar(20) not null,
    admin_phone varchar(20) not null,
    admin_address varchar(100) not null,
    admin_email varchar(50) not null,
    admim_title varchar(20) not null,
    admin_status char(1) not null
);


/* room_order */

create table room_order(
	room_order_id int primary key not null,
    mem_id int not null,
    room_type_id int not null,
    room_id int not null,
    pet_id int not null,
    room_order_date datetime not null,
    check_in_date datetime not null,
    check_out_date datetime not null,
    room_order_status char(1) not null,
    room_original_price int not null,
    room_final_pirce int not null,
    room_bonus int,
    room_od_special_req varchar(100)
);


/* access_function */

create table access_function(
	function_id int primary key not null,
    function_name varchar(20) not null
);


/* room_pic */

CREATE TABLE `room_pic` (
  `room_pic_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  `room_type_id` INT NOT NULL,
  `room_pic` LONGBLOB 
 );


/* room */

CREATE TABLE `room` (
  `room_id` INT NOT NULL PRIMARY KEY,
  `room_type_id` INT NOT NULL,
  `pet_id` INT NOT NULL,
  `room_name` VARCHAR(30),
  `room_sale_status` CHAR(1) NOT NULL DEFAULT '0',
  `room_status` CHAR(1) NOT NULL DEFAULT '0',
  `room_pet_type` VARCHAR(30) NOT NULL
 );


/* room_type */

CREATE TABLE `room_type` (
  `room_type_id` INT NOT NULL PRIMARY KEY,
  `hotel_id` INT NOT NULL,
  `room_type_name` VARCHAR(30) NOT NULL,
  `room_type_amount` INT NOT NULL,
  `room_type_sale_status` CHAR(1) NOT NULL DEFAULT '0',
  `room_type_about` VARCHAR(1000),
  `room_type_price` INT NOT NULL
 );


/* Member */

CREATE TABLE `member` (
	mem_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mem_name VARCHAR(50) NOT NULL,
    mem_account VARCHAR(20) NOT NULL,
    mem_password VARCHAR(20) NOT NULL,
    mem_birthday DATE NOT NULL,
    mem_phone VARCHAR(20) NOT NULL,
    mem_email VARCHAR(50) NOT NULL,
    mem_address VARCHAR(100),
    mem_access CHAR(1) NOT NULL,
    mem_bonus INT NOT NULL
);


/* bonus */

CREATE TABLE `bonus`(
	bonus_id INT NOT NULL AUTO_INCREMENT,
    mem_id INT NOT NULL,
    bonus INT NOT NULL,
	bonus_type VARCHAR(20),
    bonus_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    bonus_status CHAR NOT NULL,
    bonus_content VARCHAR(50),
    CONSTRAINT PRIMARY KEY(bonus_id, mem_id)
);



/* fav-list */

CREATE TABLE `fav_list` (
  `fav_list_id` INT NOT NULL PRIMARY KEY,
  `mem_id` INT NOT NULL,
  `room_type_id` INT NOT NULL
   );


/* ---------- ADD CONSTRAINTS ---------- */


/* PET */
ALTER TABLE pet ADD(
    CONSTRAINT fk_pet_member FOREIGN KEY (mem_id) REFERENCES member (mem_id)
);

    
/* BONUS */
ALTER TABLE bonus ADD(
    CONSTRAINT fk_bonus_member FOREIGN KEY (mem_id)  REFERENCES member (mem_id)
);
-- fav_list--
ALTER TABLE fav_list ADD(
    CONSTRAINT fk_fav_list_member FOREIGN KEY (mem_id) REFERENCES member (mem_id),
    CONSTRAINT fk_fav_list_room_type FOREIGN KEY (room_type_id) REFERENCES room_type (room_type_id)
);
-- room_type--
ALTER TABLE room_type ADD(
  
    CONSTRAINT fk_room_type_hotel_owner FOREIGN KEY (hotel_id) REFERENCES hotel_owner (hotel_id)
);
-- room--
ALTER TABLE room ADD(
  CONSTRAINT fk_room_room_type FOREIGN KEY (room_type_id) REFERENCES room_type (room_type_id),
  CONSTRAINT fk_room_pet FOREIGN KEY (pet_id) REFERENCES pet (pet_id)
);

-- room_pic--
ALTER TABLE room ADD(
    CONSTRAINT fk_room_pic_room_type FOREIGN KEY (room_type_id) REFERENCES room_type (room_type_id)
);

