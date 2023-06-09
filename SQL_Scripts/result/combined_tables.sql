
/* ---------- INIT ---------- */

DROP DATABASE IF EXISTS gp3;

CREATE DATABASE gp3;

USE gp3;


/* ---------- CREATE TABLE STATEMENTS ---------- */


/* CREATE_TABLE_admin_access */

create table admin_access(
	admin_id int,
    function_id int,
     primary key(admin_id, function_id)
);


/* CREATE_TABLE_order_detail */

create table `order_detail` (
	`od_id` int not null,
    `pd_id` int not null,
    `sale_pro_id` int not null,
    `pd_amount` int not null,
    `rank_status` char(1) not null default'0',
    primary key (`od_id`, `pd_id`)
);


/* CREATE_TABLE_adoptedapplication */

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



/* CREATE_TABLE_comment */

create table `comment` (
	`com_id` int primary key not null auto_increment,
    `pd_id` int not null,
    `mem_id` int not null,
    `com_date` datetime not null,
    `com_content` varchar(200) default null,
    `com_rank` int default null
);


/* CREATE_TABLE_animalcorporation */

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


/* CREATE_TABLE_hotel_owner */

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


/* CREATE_TABLE_status_date */

create table `status_date` (
	`od_id` int primary key not null,
	`od_status` char(1) not null default'0',
    `od_date` datetime not null
);


/* CREATE_TABLE_Pet */

CREATE TABLE `pet` (
	pet_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,
    pet_name VARCHAR(30),
    pet_type VARCHAR(30),
    pet_size CHAR(1),
    pet_status CHAR(1) NOT NULL DEFAULT '0'
);

INSERT INTO `pet` (mem_id, pet_name, pet_type, pet_size)
VALUES
    (1, 'Fluffy', 'Cat', 'S'),
    (2, 'Buddy', 'Dog', 'M'),
    (3, 'Charlie', 'Dog', 'L'),
    (4, 'Whiskers', 'Cat', 'M'),
    (5, 'Max', 'Dog', 'L'),
    (6, 'Coco', 'Cat', 'S'),
    (7, 'Rocky', 'Dog', 'M'),
    (8, 'Luna', 'Cat', 'S'),
    (9, 'Bailey', 'Dog', 'L'),
    (10, 'Milo', 'Cat', 'M');



/* CREATE_TABLE_room_review */

create table room_review(
	room_review_id int primary key not null AUTO_INCREMENT,
    hotel_id int not null,
	room_order_id int not null,
	room_review_score int not null,
	room_review_content varchar(200)
);

INSERT INTO room_review (hotel_id, room_order_id, room_review_score, room_review_content) VALUES
(1, 1, 4, 'The room was clean and comfortable.'),
(1, 2, 5, 'Excellent room and great service.'),
(2, 3, 3, 'Average room, but the staff was friendly.'),
(2, 4, 2, 'The room was not up to expectations.'),
(3, 5, 4, 'Good room with nice amenities.'),
(3, 6, 5, 'Amazing room and fantastic view.'),
(4, 7, 4, 'Comfortable room and helpful staff.'),
(4, 8, 3, 'The room was noisy and needs improvement.'),
(5, 9, 5, 'Spacious room with modern decor.'),
(5, 10, 4, 'Enjoyed my stay in this room.');



/* CREATE_TABLE_animalfavorite */

CREATE TABLE `animal_favorite` (
	fav_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    animal_id INT NOT NULL,
    mem_id INT NOT NULL
);


/* CREATE_TABLE_product_img */

create table `product_img` (
	`pd_img_id` int primary key not null auto_increment,
    `pd_id` int not null,
    `pd_img` longblob 
);


/* CREATE_TABLE_lostpetpic */

CREATE TABLE `lost_pet_pic` (
	lost_pet_pic_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	article_id INT NOT NULL,
	lost_pet_pic LONGBLOB
);


/* CREATE_TABLE_admin */

create table admin(
	admin_id int primary key not null,
    admin_name varchar(50) not null,
    admin_account varchar(20) not null,
    admin_password varchar(20) not null,
    admin_phone varchar(20) not null,
    admin_address varchar(100) not null,
    admin_email varchar(50) not null,
    admin_title varchar(20) not null,
    admin_status char(1) not null default '0'
);

INSERT INTO admin (admin_id, admin_name, admin_account, admin_password, admin_phone, admin_address, admin_email, admin_title)
VALUES
(1, 'John Doe', 'johndoe', 'pass123', '1234567890', '123 Main St, City', 'johndoe@example.com', '主管'),
(2, 'Jane Smith', 'janesmith', 'password1', '9876543210', '456 Elm St, Town', 'janesmith@example.com', '主管'),
(3, 'David Johnson', 'davidjohnson', 'secret123', '5551234567', '789 Oak Ave, Village', 'davidjohnson@example.com', '正職'),
(4, 'Emily Brown', 'emilybrown', 'abc123', '1112223333', '321 Pine Rd, City', 'emilybrown@example.com', '正職'),
(5, 'Michael Davis', 'michaeldavis', 'qwerty', '4445556666', '654 Cedar Ln, Town', 'michaeldavis@example.com', '正職'),
(6, 'Olivia Wilson', 'oliviawilson', 'adminpass', '7778889999', '987 Spruce Dr, City', 'oliviawilson@example.com', '正職'),
(7, 'William Taylor', 'williamtaylor', 'password123', '2223334444', '159 Birch St, Village', 'williamtaylor@example.com', '工讀'),
(8, 'Sophia Anderson', 'sophiaanderson', 'testpass', '8889990000', '852 Maple Ave, Town', 'sophiaanderson@example.com', '工讀'),
(9, 'James Martin', 'jamesmartin', '12345678', '6667778888', '753 Oakwood Dr, City', 'jamesmartin@example.com', '工讀'),
(10, 'Isabella Thompson', 'isabellathompson', 'pass1234', '3334445555', '456 Elm St, Village', 'isabellathompson@example.com', '正職');



/* CREATE_TABLE_animal */

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



/* CREATE_TABLE_animalpic */

CREATE TABLE `animal_pic` (
	pic_id INT NOT NULL PRIMARY KEY,
    animal_id INT NOT NULL,
    animal_pic LONGBLOB
);



/* CREATE_TABLE_room_order */

create table room_order(
	room_order_id int primary key not null AUTO_INCREMENT,
    mem_id int not null,
    room_type_id int not null,
    room_id int not null,
    pet_id int not null,
    room_order_date datetime not null,
    check_in_date datetime not null,
    check_out_date datetime not null,
    room_order_status char(1) not null,
    room_original_price int not null,
    room_final_price int not null,
    room_bonus int,
    room_od_special_req varchar(200)
);

INSERT INTO room_order (mem_id, room_type_id, room_id, pet_id, room_order_date, check_in_date, check_out_date, room_order_status, room_original_price, room_final_price, room_bonus, room_od_special_req) VALUES
(1, 1, 1, 1, '2023-06-01 09:00:00', '2023-06-05 14:00:00', '2023-06-10 11:00:00', '0', 200, 180, 0, 'No special requests'),
(2, 2, 2, 2, '2023-06-02 10:30:00', '2023-06-07 12:00:00', '2023-06-12 10:00:00', '0', 300, 270, 0, 'Extra blankets needed'),
(3, 3, 3, 3, '2023-06-03 14:45:00', '2023-06-09 13:30:00', '2023-06-14 09:30:00', '0', 250, 225, 0, 'Early check-in required'),
(4, 4, 4, 4, '2023-06-04 16:20:00', '2023-06-11 15:00:00', '2023-06-15 16:00:00', '0', 200, 180, 0, 'No special requests'),
(5, 5, 5, 5, '2023-06-05 18:10:00', '2023-06-13 17:30:00', '2023-06-18 15:30:00', '1', 300, 270, 0, 'Late check-out requested'),
(6, 6, 6, 6, '2023-06-06 20:25:00', '2023-06-15 18:00:00', '2023-06-20 12:00:00', '1', 250, 225, 0, 'No special requests'),
(7, 5, 7, 7, '2023-06-07 11:50:00', '2023-06-16 10:00:00', '2023-06-21 14:00:00', '2', 200, 180, 0, 'No special requests'),
(8, 4, 8, 8, '2023-06-08 13:15:00', '2023-06-19 12:30:00', '2023-06-24 10:30:00', '2', 300, 270, 0, 'Extra towels needed'),
(9, 3, 9, 9, '2023-06-09 15:40:00', '2023-06-22 14:00:00', '2023-06-27 08:00:00', '2', 250, 225, 0, 'No special requests'),
(10, 2, 10, 10, '2023-06-10 17:55:00', '2023-06-25 16:30:00', '2023-06-30 09:30:00', '2', 200, 180, 0, 'No special requests');



/* CREATE_TABLE_favorite */

create table `favorite` (
	`pd_id` int not null,
    `mem_id` int not null,
    `fav_date` datetime not null,
    primary key (`pd_id`, `mem_id`)
);


/* CREATE_TABLE_lostpetresponce */

CREATE TABLE `lost_pet_responce` (
	responce_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	mem_id INT NOT NULL,
	article_id INT NOT NULL,
	responce_content VARCHAR(200) NOT NULL,
	responce_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);


/* CREATE_TABLE_access_function */

create table access_function(
	function_id int primary key not null,
    function_name char(1) not null
);

insert into access_function (function_id, function_name)
values
(1, '0'),
(2, '1'),
(3, '2'),
(4, '3');



/* CREATE_TABLE_order_master */

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


/* CREATE_TABLE_news_list */

use gp3;

create table news_list(
news_id int primary key not null auto_increment,
admin_id int not null,
news_title varchar(20) not null,
news_content varchar(1000) not null,
news_date datetime not null,
news_photo longblob
);



/* CREATE_TABLE_sale */

create table `sale` (
	`pd_id` int not null,
    `sale_pro_id` int not null,
    `sale_price` int not null,
    primary key (`pd_id`, `sale_pro_id`)
);


/* CREATE_TABLE_sale_project */

create table `sale_project` (
	`sale_pro_id` int primary key not null auto_increment,
    `dale_pro_name` varchar(50) not null,
    `sale_pro_start` datetime not null,
	`sale_pro_end` datetime not null
);


/* CREATE_TABLE_room_pic */

CREATE TABLE `room_pic` (
  `room_pic_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  `room_type_id` INT NOT NULL,
  `room_pic` LONGBLOB 
 );
 INSERT INTO `room_pic` (`room_type_id`) 
VALUES 
(1),(1),
(2),(2),
(3),(3),
(4),(4),
(5),(5),
(6),(6),
(7),(7),
(8),(8),
(9),(9),
(10),(10),
(11),(11),
(12),(12),
(13),(13),
(14),(14),
(15),(15),
(16),(16),
(17),(17),
(18),(18),
(19),(19),
(20),(20),
(21),(21),
(22),(22),
(23),(23);



/* CREATE_TABLE_promiselist */

CREATE TABLE `promise_list`(
	promise_id INT PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,
    animal_id INT NOT NULL,
    promise_time DATETIME NOT NULL,
    promise_status CHAR(1) NOT NULL
);


/* CREATE_TABLE_product */

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


/* CREATE_TABLE_room */

CREATE TABLE `room` (
  `room_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `room_type_id` INT NOT NULL,
   `pet_id`INT ,
  `room_name` VARCHAR(30),
  `room_sale_status` CHAR(1) NOT NULL DEFAULT '0',
  `room_status` CHAR(1) NOT NULL DEFAULT '0'
  );
 INSERT INTO room (room_type_id, pet_id,room_name, room_sale_status, room_status) VALUES 
(5, NULL, '房間A', '0', '0'), (5, NULL,'房間B','0', '0'), (5,NULL, '房間C', '0', '0'), 
(6,  NULL,'房間A', '0', '0'), (6,NULL, '房間B', '0', '0'),  
(7, NULL,'房間A', '0', '0'), (7,NULL, '房間B', '0', '0'), (7,NULL, '房間C', '0', '0'), 
(8,NULL, '房間A','0', '0'), (8, NULL,'房間B','0', '0'), (8,NULL, '房間C', '0', '0'), 
(9,NULL, '房間A','0', '0'), (9, NULL,'房間B','0', '0'), (9,NULL, '房間C', '0', '0'), 
(10,NULL, '房間A', '0', '0'), (10,NULL, '房間B', '0', '0'),
(11,NULL, '房間A', '0', '0'), (11, NULL,'房間B', '0', '0'),
(12, NULL,'房間A', '0', '0'), (12,NULL, '房間B', '0', '0'),
(13, NULL,'房間A','0', '0'), (13,NULL, '房間B', '0', '0'),
(14, NULL,'房間A', '0', '0'), (14, NULL,'房間B', '0', '0'),
(15,NULL, '房間A', '0', '0'), (15,NULL, '房間B', '0', '0'),
(16, NULL,'房間A', '0', '0'), (16, NULL,'房間B', '0', '0'),
(17,NULL, '房間A', '0', '0'), (17,NULL, '房間B', '0', '0'),
(18,NULL,'房間A', '0', '0'), (18,NULL, '房間B', '0', '0'),
(19,NULL, '房間A','0', '0'), (19,NULL, '房間B', '0', '0');
 



/* CREATE_TABLE_room_type */

CREATE TABLE `room_type` (
  `room_type_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `hotel_id` INT NOT NULL,
  `room_type_name` VARCHAR(30) NOT NULL,
  `room_type_amount` INT NOT NULL,
  `room_type_sale_status` CHAR(1) NOT NULL DEFAULT '0',
  `room_type_about` VARCHAR(1000),
  `room_type_price` INT NOT NULL,
  `room_pet_type`  VARCHAR(30) NOT NULL,
  `room_type_size`  CHAR(1) NOT NULL
 );
INSERT INTO room_type( hotel_id, room_type_name, room_type_amount, room_type_sale_status, room_type_about, room_type_price, room_pet_type,room_type_size)
VALUES
(1, '小型豪華貓房', 1, '1', '為貓咪打造的豪華套房，提供貓砂箱、玩具與舒適的睡床。', 1000, '貓','0'),
(2, '小型舒適貓房', 2, '1', '為貓咪打造的舒適套房，提供貓砂箱、玩具與舒適的睡床。', 800, '貓','0'),
(3, '小型舒適狗房', 2, '1', '專為狗狗打造的套房，提供豐富的玩具與運動空間。', 1200, '狗','0'),
(4, '大型豪華狗房', 2, '1', '專為狗狗打造的套房，提供豐富的玩具與運動空間。', 1700, '狗','2'),
(5, '小型舒適貓房', 3, '1', '為貓咪打造的舒適空間，提供貓砂箱、玩具與睡床。', 800, '貓','0'),
(5, '小型貓咪特色小屋', 2, '1', '我們的貓咪特色小屋是仿照貓樹設計，提供您的愛貓一個獨特而舒適的空間。室內配置多層次的跳台和挖洞玩耍的隱藏空間，讓您的愛貓可以自由探索、遊戲，充分伸展身體。更重要的是，我們的小屋內設有溫馨的睡床和專為貓咪設計的玩具，讓您的愛貓能夠享受到最大的舒適。', 1300, '貓','0'),
(5, '小型舒適狗房', 3, '1', '專為狗狗打造的舒適空間，提供玩具與運動空間。', 1000, '狗','0'),
(6, '大型狗狗王者套房', 3, '1', '專為狗狗打造的舒適空間，提供豐富與多元的玩具，以及寬敞的運動空間，讓您的毛孩在享受假期的同時，也能擁有豐富與健康的生活品質。', 1500, '狗','2'),
(7, '木木梟之家', 3, '1', '為木木梟打造的田園風房間，提供綠色樹蔭與林間清新的感受，是木木梟們的夢幻住所。', 2000, '鳥','2'),
(8, '小型豪華貓房', 2, '1', '為貓咪打造的豪華套房，提供貓砂箱、玩具與舒適的睡床。', 1000, '貓','0'),
(8, '小型舒適貓房', 2, '1', '為單只貓咪打造的舒適空間，提供貓砂箱、玩具與睡床。', 800, '貓','0'),
(9, '小型豪華貓房',2 , '1', '為兩隻貓咪打造的豪華套房，提供貓砂箱、玩具與舒適的睡床。', 1200, '貓','0'),
(9, '小型豪華狗房', 2, '1', '專為小型狗狗打造的套房，提供豐富的玩具與運動空間。', 500, '狗','0'),
(9, '中型豪華狗房', 2, '1', '專為中型狗狗打造的套房，提供豐富的玩具與運動空間。', 700, '狗','1'),
(9, '大型豪華狗房', 2, '1', '專為小型狗狗打造的套房，提供豐富的玩具與運動空間。', 1000, '狗','0'),
(10, '大型狗狗尊爵套房', 2, '1', '專為狗狗打造的舒適空間，提供玩具與運動空間。', 1500, '狗','2'),
(10, '小型貓咪運動房', 2, '1', '為貓咪打造的舒適空間，提供貓砂箱、玩具與睡床。', 800, '貓','0'),
(11, '大型狗狗陽光房', 2, 1, '帶有大型窗戶的房間', 1500, '狗','2'),
(11, '中型狗狗陽光房', 2, 1, '帶有大型窗戶的房間', 1200, '狗','1'),
(12, '大型豪華狗房', 2, '1', '專為狗狗打造的套房，提供豐富的玩具與運動空間。', 1200, '狗','2'),
(13, '小型舒適狗房', 2, '1', '專為狗狗打造的舒適空間，提供玩具與運動空間。', 500, '狗','0'),
(14, '貓咪陽光房', 2, '1', '為貓咪打造的舒適空間，提供貓砂箱、玩具與睡床，且帶有大型窗戶。', 800, '貓','0'),
(15, '舒適貓房', 2, '1', '為貓咪打造的豪華套房，提供貓砂箱、玩具與舒適的睡床。', 500, '貓','0');


/* CREATE_TABLE_Member */

CREATE TABLE `member` (
	mem_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mem_name VARCHAR(50) NOT NULL,
    mem_account VARCHAR(20) NOT NULL UNIQUE,
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



/* CREATE_TABLE_bonus */

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



/* CREATE_TABLE_lostpetarticle */

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
	article_status CHAR(1) NOT NULL,
    title VARCHAR(60) NOT NULL
);


/* CREATE_TABLE_fav-list */

CREATE TABLE `fav_list` (
  `fav_list_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `mem_id` INT NOT NULL,
  `room_type_id` INT NOT NULL
   );
   INSERT INTO fav_list (mem_id, room_type_id) VALUES 
(1, 5), (1, 6), (2, 7), (2, 8), (3, 9),
(3, 10), (4, 11), (4, 12), (5, 13), (5, 14);



/* ---------- ADD CONSTRAINTS ---------- */


/* PET */
ALTER TABLE pet ADD(
    CONSTRAINT fk_pet_member FOREIGN KEY (mem_id) REFERENCES member (mem_id)
);

    
/* BONUS */
ALTER TABLE bonus ADD(
    CONSTRAINT fk_bonus_member FOREIGN KEY (mem_id)  REFERENCES member (mem_id)
);


/* admin_access */
alter table admin_access add(
	constraint fk_admin_access_admin foreign key(admin_id) references admin(admin_id),
    constraint fk_admin_access_access_function foreign key(function_id) references access_function(function_id)
);

/* room_order */
alter table room_order add(
	constraint fk_room_order_member foreign key(mem_id) references member(mem_id),
	constraint fk_room_order_room_type foreign key(room_type_id) references room_type(room_type_id),
    constraint fk_room_order_room foreign key(room_id) references room(room_id),
	constraint fk_room_order_pet foreign key(pet_id) references pet(pet_id)
);

/* room_review */
alter table room_review add(
	constraint fk_room_review_hotel_owner foreign key(hotel_id) references hotel_owner(hotel_id),
    constraint fk_room_review_room_order foreign key(room_order_id) references room_order(room_order_id)
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
	constraint fk_newslist_admin
	foreign key (admin_id) references admin (admin_id)
);

