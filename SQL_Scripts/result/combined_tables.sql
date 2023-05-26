
/* ---------- INIT ---------- */

DROP DATABASE gp3;

CREATE DATABASE gp3;

USE gp3;


/* ---------- CREATE TABLE STATEMENTS ---------- */


/* order_detail */

create table `order_detail` (
	`od_id` int not null,
    `pd_id` int not null,
    `sale_pro_id` int not null,
    `pd_amount` int not null,
    `rank_status` char(1) not null default'0',
    primary key (`od_id`, `pd_id`)
);


/* adoptedapplication */

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



/* administrator_access */

create table administrator_access(
	admin_id int,
    function_id int,
     primary key(admin_id, function_id)
);


/* comment */

create table `comment` (
	`com_id` int primary key not null auto_increment,
    `pd_id` int not null,
    `mem_id` int not null,
    `com_date` datetime not null,
    `com_content` varchar(200) default null,
    `com_rank` int default null
);


/* animalcorporation */

CREATE TABLE `animal_corporation` (
	corp_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    applied_status CHAR(1) NOT NULL,
	corp_account CHAR(8) NOT NULL,
	corp_password CHAR(12) NOT NULL,
	corp_name VARCHAR(50) NOT NULL UNIQUE,
	corp_registered_id VARCHAR(50)NOT NULL UNIQUE,
	corp_address VARCHAR(100) NOT NULL,
	contact_name VARCHAR(20) NOT NULL,
	contact_phone VARCHAR(20) NOT NULL,
	contact_email VARCHAR(40) NOT NULL,
	corp_access CHAR(1) NOT NULL
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


/* status_date */

create table `status_date` (
	`od_id` int primary key not null,
	`od_status` char(1) not null default'0',
    `od_date` datetime not null
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


/* animalfavorite */

CREATE TABLE `animal_favorite` (
	fav_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    animal_id INT NOT NULL,
    mem_id INT NOT NULL
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


/* product_img */

create table `product_img` (
	`pd_img_id` int primary key not null auto_increment,
    `pd_id` int not null,
    `pd_img` longblob 
);


/* lostpetpic */

CREATE TABLE `lost_pet_pic` (
	lost_pet_pic_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	article_id INT NOT NULL,
	lost_pet_pic LONGBLOB
);


/* animal */

CREATE TABLE `animal` (
	animal_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    corp_id INT NOT NULL,
    mem_id INT,
    type VARCHAR(30) NOT NULL,
    animal_name varchar(30) NOT NULL,
    status CHAR(1) NOT NULL,
    animal_sex CHAR(1) NOT NULL,
    animal_age VARCHAR(10) NOT NULL,
    animal_info_note VARCHAR(200)
);



/* animalpic */

CREATE TABLE `animal_pic` (
	pic_id INT NOT NULL PRIMARY KEY,
    animal_id INT NOT NULL,
    animal_pic LONGBLOB
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


/* favorite */

create table `favorite` (
	`pd_id` int not null,
    `mem_id` int not null,
    `fav_date` datetime not null,
    primary key (`pd_id`, `mem_id`)
);


/* lostpetresponce */

CREATE TABLE `lost_pet_responce` (
	responce_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	mem_id INT NOT NULL,
	article_id INT NOT NULL,
	responce_content VARCHAR(200) NOT NULL,
	responce_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);


/* access_function */

create table access_function(
	function_id int primary key not null,
    function_name varchar(20) not null
);


/* order_master */

create table `order_master` (
	`od_id` int primary key not null auto_increment,
    `mem_id` int not null,
    `price_ori` int not null,
    `price_dis` int,
    `price_bonus` int,
    `price_ship` int not null,
    `price_od` int not null,
    `od_status` char(1) default'0',
    `od_pay` char(1),
    `od_ship` char(1),
    `od_note` varchar(100) default null,
    `od_trace` varchar(20),
    `reci_name` varchar(50) not null,
    `reci_phone` varchar(20) not null,
    `reci_add` varchar(100),
    `reci_store` varchar(20),
    `reci_date` datetime default null
);


/* news_list */

use gp3;

create table news_list(
news_id int primary key not null auto_increment,
admin_id int not null,
news_title varchar(20) not null,
news_content varchar(1000) not null,
news_date datetime not null,
news_photo longblob
);



/* sale */

create table `sale` (
	`pd_id` int not null,
    `sale_pro_id` int not null,
    `sale_price` int not null,
    primary key (`pd_id`, `sale_pro_id`)
);


/* sale_project */

create table `sale_project` (
	`sale_pro_id` int primary key not null auto_increment,
    `dale_pro_name` varchar(50) not null,
    `sale_pro_start` datetime not null,
	`sale_pro_end` datetime not null
);


/* room_pic */

CREATE TABLE `room_pic` (
  `room_pic_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  `room_type_id` INT NOT NULL,
  `room_pic` LONGBLOB 
 );


/* promiselist */

CREATE TABLE `promise_list`(
	promise_id INT PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,
    animal_id INT NOT NULL,
    promise_time DATETIME NOT NULL,
    promise_status CHAR(1) NOT NULL
);


/* product */

create table `product` (
	`pd_id` int primary key not null auto_increment,
    `pd_type` varchar(20) not null,
    `pd_pet_type` varchar(20) not null,
    `pd_name` varchar(20) not null,
    `pd_price` int not null,
    `pd_spe` varchar(20) not null,
    `pd_info` varchar(150) default null,
    `pd_status` char(1) not null default'1',
    `pd_date` datetime not null,
    `pd_rank` double default null
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
    mem_access CHAR(1) NOT NULL DEFAULT '0',
    mem_bonus INT NOT NULL DEFAULT 0
);

INSERT INTO `member` (mem_name, mem_account, mem_password, mem_birthday, mem_phone, mem_email, mem_address)
VALUES
	('testing', 'testing', 'testing', '1970-01-01', '1234567890', 'tibamegp3@gmail.com', '320桃園市中壢區復興路46號9樓'),
    ('John Doe', 'john123', 'pass123', '1990-05-10', '1234567890', 'john.doe@example.com', '123 Main St, City'),
    ('Jane Smith', 'jane456', 'pass456', '1985-08-20', '9876543210', 'jane.smith@example.com', '456 Elm St, City'),
    ('Michael Johnson', 'michael789', 'pass789', '1992-02-15', '4567891230', 'michael.johnson@example.com', '789 Oak St, City'),
    ('Emily Davis', 'emily001', 'pass001', '1998-11-25', '7891234560', 'emily.davis@example.com', '987 Pine St, City'),
    ('David Wilson', 'david234', 'pass234', '1987-07-05', '1237894560', 'david.wilson@example.com', '345 Maple St, City'),
    ('Olivia Thomas', 'olivia567', 'pass567', '1995-04-18', '9874561230', 'olivia.thomas@example.com', '654 Cedar St, City'),
    ('James Anderson', 'james890', 'pass890', '1983-09-30', '1239876540', 'james.anderson@example.com', '789 Pine St, City'),
    ('Sophia Miller', 'sophia002', 'pass002', '1991-06-12', '7894561230', 'sophia.miller@example.com', '123 Cedar St, City'),
    ('Daniel Taylor', 'daniel345', 'pass345', '1997-03-05', '4561237890', 'daniel.taylor@example.com', '456 Maple St, City'),
    ('Ava Martinez', 'ava678', 'pass678', '1994-01-15', '1234567890', 'ava.martinez@example.com', '789 Elm St, City');



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



/* lostpetarticle */

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


/* administrator_access */
alter table administrator_access add(
	constraint fk_admin_id foreign key(admin_id) references administrator(admin_id),
    constraint fk_function_id foreign key(function_id) references access_function(function_id)
);

/* room_order */
alter table room_order add(
	constraint fk_mem_id foreign key(mem_id) references member(mem_id),
	constraint fk_room_type_id foreign key(room_type_id) references room_type(room_type_id),
    constraint fk_room_id foreign key(room_id) references room(room_id),
	constraint fk_pet_id foreign key(pet_id) references pet(pet_id)
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

/* comment */
alter table `comment` add (
	constraint `fk_sale_product_product` foreign key (`pd_id`) references `product` (`pd_id`),
    constraint `fk_sale_product_member` foreign key (`mem_id`) references `member` (`mem_id`)
);

/* favorite */
alter table `favorite` add (
	constraint `fk_favorite_product` foreign key (`pd_id`) references `product` (`pd_id`),
    constraint `fk_favorite_member` foreign key (`mem_id`) references `member` (`mem_id`)
);

/* order_detail */
alter table `order_detail` add ( 
	constraint `fk_oder_detail_order_master` foreign key (`od_id`) references `order_master` (`od_id`),
    constraint `fk_oder_detail_product` foreign key (`pd_id`) references `product` (`pd_id`),
    constraint `fk_oder_detail_sale_project` foreign key (`sale_pro_id`) references `sale_project` (`sale_pro_id`)
);

/* order_master */
alter table `order_master` add (
	constraint `fk_order_master_member` foreign key (`mem_id`) references `member` (`mem_id`)
);

/* product_img */
alter table `product_img` add (
	constraint `fk_product_img_product` foreign key (`pd_id`) references `product` (`pd_id`)
);

/* sale */
alter table `sale` add (
	constraint `fk_sale_product` foreign key (`pd_id`) references `product` (`pd_id`),
    constraint `fk_sale_sale_project` foreign key (`sale_pro_id`) references `sale_project` (`sale_pro_id`)
);

/* status_date */
alter table `status_date` add (
	constraint `fk_status_date_order_master` foreign key (`od_id`) references `order_master` (`od_id`)
);

/* animal */
alter table `animal` add (
	constraint `fk_animal_mem_id` foreign key (`mem_id`) references `member` (`mem_id`)
);

/* animal_pic */
alter table `animal_pic` add (
	constraint `fk_animal_pic_animal_id` foreign key (`animal_id`) references `animal` (`animal_id`)
);

/* promise_list */
alter table `promise_list` add (
	constraint `fk_promise_list_mem_id` foreign key (`mem_id`) references `member` (`mem_id`),
    constraint `fk_promise_list_animal_id` foreign key (`animal_id`) references `animal` (`animal_id`)
);

/* adopted_application */
alter table `adopted_application` add (
	constraint `fk_adopted_application_mem_id` foreign key (`mem_id`) references `member` (`mem_id`),
    constraint `fk_adopted_application_animal_id` foreign key (`animal_id`) references `animal` (`animal_id`)
);

/* animal_favorite */
alter table `animal_favorite` add (
	constraint `fk_animal_favorite_mem_id` foreign key (`mem_id`) references `member` (`mem_id`),
    constraint `fk_animal_favorite_animal_id` foreign key (`animal_id`) references `animal` (`animal_id`)
);

/* lost_pet_article */
alter table `lost_pet_article` add (
	constraint `fk_lost_pet_article_mem_id` foreign key (`mem_id`) references `member` (`mem_id`)
);

/* lost_pet_responce */
alter table `lost_pet_responce` add (
	constraint `fk_lost_pet_responce_mem_id` foreign key (`mem_id`) references `member` (`mem_id`),
    constraint `fk_lost_pet_responce_article_id` foreign key (`article_id`) references `lost_pet_article` (`article_id`)
);

/* lost_pet_pic */
alter table `lost_pet_pic` add (
    constraint `fk_lost_pet_pic_article_id` foreign key (`article_id`) references `lost_pet_article` (`article_id`)
);

/* news_list */
alter table news_list add(
	constraint fk_administrator_newslist
	foreign key (admin_id) references administrator (admin_id)
);

