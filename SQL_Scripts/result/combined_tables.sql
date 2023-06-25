
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
INSERT INTO adopted_application (mem_id, animal_id, adopter_id_number, adopter_name, adopter_address, adopter_phone, adopter_email, adopter_job,status, adopter_note)
VALUES
(1, 20230501, 'A12345678','John Doe', '台北市 - 大安區', '123-456-7890', 'john.doe@example.com','星球保護者','1', 'Note 1'),
(2, 20230502, 'B98765432','Jane Smith', '新北市 - 三峽區', '987-654-3210', 'jane.smith@example.com','夢想實現師','1', 'Note 2'),
(3, 20230503, 'C45678901','Michael Johnson', '桃園市 - 中壢區', '456-789-0123', 'michael.johnson@example.com','魔法藥水師','2', 'Note 3'),
(4, 20230504, 'D21098765','Emily Davis', '台中市 - 西屯區', '210-987-6543', 'emily.davis@example.com','太空旅遊導遊 ','0', 'Note 4'),
(5, 20230505, 'E67890123','David Wilson', '台南市 - 安南區', '678-901-2345', 'david.wilson@example.com','幻想世界設計師','1', 'Note 5'),
(6, 20230506, 'F54321098','Sarah Thompson', '高雄市 - 鳳山區', '543-210-9876', 'sarah.thompson@example.com','太陽能工程師 ','2', 'Note 6'),
 (7, 20230507, 'G10987654','Christopher Lee', '基隆市 - 仁愛區', '109-876-5432', 'christopher.lee@example.com','軟體工程師','3', 'Note 7'),
(8, 20230508, 'H76543210','Jessica Turner', '新竹縣 - 竹北市', '765-432-1098', 'jessica.turner@example.com','超能力訓練師','0', 'Note 8'),
(9,20230509, 'I32109876','Andrew Wilson', '苗栗縣 - 苑裡鎮', '321-098-7654', 'andrew.wilson@example.com','情感治療師','1',  'Note 9'),
(10, 20230510, 'J98765432','Olivia Harris', '彰化縣 - 彰化市', '987-654-3210', 'olivia.harris@example.com','飛行汽車試驗員 ','1', 'Note 10');


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

INSERT INTO animal_corporation (applied_status, corp_account,corp_password, corp_name, corp_registered_id, corp_address, contact_name, contact_phone, contact_email, corp_access)
VALUE
('1', 'C000001', 'A111', '愛心動物收容所有限公司', '1234567890', '桃園市中壢區', 'John Doe', '123-456-7890', 'john@example.com', '0'),
('1', 'C000002', 'A222', '快樂動物之家股份有限公司', '9876543210', '桃園市桃園區', 'Jane Smith', '987-654-3210', 'jane@example.com', '0'),
('1', 'C000003', 'C444', '寵物天堂收容所有限公司', '2468135790', '桃園市平鎮區', 'Mike Johnson', '456-789-1230', 'mike@example.com', '0'),
('2', 'C000004', 'D555', '美好寵物領養中心', '1357924680', '嘉義市西區', 'Sarah Davis', '789-123-4560', 'sarah@example.com', '0'),
('2', 'C000005', 'F666', '小動物希望基金', '8024681359', '彰化縣彰化市', 'David Wilson', '987-654-3210', 'david@example.com', '1'),
('2', 'C000006', 'E888', '動物基金', '4681357920', '台南市北區', 'Lisa Thompson', '654-321-7890', 'lisa@example.com', '1'),
('2', 'C000007', 'T999', '寵物之家基金會', '5792468130', '台北市大安區', 'Emily Brown', '321-789-4560', 'emily@example.com', '1'),
('2', 'C000008', 'I345','ABC動物保護協會', '4680246813', '新北市板橋區', 'Michael Taylor', '789-456-1230', 'michael@example.com', '1'),
('1', 'C000009', 'Y100', '幸福動物救助中心', '1358024687', '新竹市東區', 'Jessica Wilson', '987-123-4560', 'jessica@example.com', '0'),
('0', 'C000010', 'U567', '樂樂動物救援組織', '2468135799', '高雄市三民區', 'Ryan Anderson', '321-456-7890', 'ryan@example.com', '0');


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
  `owner_bank` VARCHAR(14) NOT NULL,
  `owner_phone` VARCHAR(20) NOT NULL,
  `owner_email` VARCHAR(50) NOT NULL,
  `owner_access` CHAR(1) NOT NULL DEFAULT '0'
   
);

INSERT INTO `hotel_owner` (
  `hotel_name`,
  `hotel_address`,
  `hotel_status`,
  `hotel_lic_id`,
  `hotel_lic_pic`,
  `review_score_people`,
  `review_score_total`,
  `owner_account`,
  `owner_password`,
  `owner_name`,
  `owner_id`,
  `owner_bank`,
  `owner_phone`,
  `owner_email`,
  `owner_access`
) VALUES
  ('寵物樂園', '台北市雙園大道123號', '2', 'LIC123456', null, 100, 5, 'acct001', 'pass123', '張小花', 'A123456789', '01234567890123', '0912345678', 'changxiaohua@example.com', '0'),
  ('毛孩之家', '台北市忠孝東路四段456號', '2', 'LIC987654',  null, 80, 4, 'acct002', 'pass456', '李大狗', 'A187654321', '12345678901234', '0987654321', 'lidagou@example.com', '0'),
  ('愛心寵寓', '新北市板橋區新站路123號', '2', 'LIC246813',  null, 90, 5, 'acct003', 'pass789', '王小貓', 'F135792468', '234567890123', '0910293847', 'wangxiaomao@example.com', '0'),
  ('喵喵別墅', '新北市淡水區中山路456號', '2', 'LIC369852', null, 95, 4, 'acct004', 'pass369', '劉小魚', 'F246813579', '3456789012', '0956784321', 'liuxiaoyu@example.com', '0'),
  ('喵響小屋', '桃園市桃園路789號', '2', 'LIC582019',  null, 85, 2, 'acct005', 'pass582', '陳小鳥', 'H179135246', '456789012345', '0998765432', 'chenxiaoniao@example.com', '0'),
  ('汪汪大飯店', '桃園市中正東路一段101號', '2', 'LIC729104',null, 75, 3, 'acct006', 'pass729', '林小狼', 'H292571834', '56789012345678', '0901234567', 'linxiaolang@example.com', '0'),
  ('寵物天地', '桃園市中山北路二段222號', '2', 'LIC860527', null, 85, 1, 'acct007', 'pass860', '張小鳳', 'H151357246', '67890123456789', '0976543210', 'zhangxiaofeng@example.com', '0'),
  ('愛心寵物館', '桃園市龍潭路333號', '2', 'LIC417623',  null, 95, 3, 'acct008', 'pass417', '王大熊', 'H124617395', '91283092830192', '0945678901', 'wangdaxiong@example.com', '0'),
  ('小魚寵物店', '桃園市鶯歌路8號', '2', 'LIC536281',  null, 90, 5, 'acct009', 'pass536', '李小龍', 'H113548962', '39842084204320', '0928374650', 'lixiaolong@example.com', '0'),
  ('毛茸茸寵物屋', '桃園市大溪路55號', '2', 'LIC962384',  null, 80, 5, 'acct010', 'pass962', '林大貓', 'H124769531', '57385924759328', '0932145678', 'lindamao@example.com', '0'),
  ('汪汪小窩', '桃園市八德路16號', '2', 'LIC185739',  null, 85, 5, 'acct011', 'pass185', '陳小狗', 'H152864173', '20394029384039', '0945678901', 'chenxiaogou@example.com', '0'),
  ('喵喵寵物園', '台中市文心路777號', '2', 'LIC327598',  null, 95, 4, 'acct012', 'pass327', '張小貓', 'B289236751', '49582058239482', '0987654321', 'zhangxiaomao@example.com', '0'),
  ('狗狗小屋', '台中市中山南路88號', '2', 'LIC514729',  null, 90, 2, 'acct013', 'pass514', '林小狗', 'B183246915', '73294820938291', '0956784321', 'linxiaogou@example.com', '0'),
  ('寵物天堂', '高雄市中山一路11號', '2', 'LIC671923', null, 80, 4, 'acct014', 'pass671', '李小貓', 'E226537491', '10483948209382', '0910293847', 'lixiaomao@example.com', '0'),
  ('小魚養殖場', '高雄市忠孝路1212號', '2', 'LIC950738',  null, 85, 2, 'acct015', 'pass950', '陳大魚', 'E117638425', '28749287348732', '0928374650', 'chendayu@example.com', '0');
  



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


/* CREATE_TABLE_pet_pic */

CREATE TABLE `pet_pic`(
	`id` INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `pet_id` INTEGER NOT NULL,
    `pic` LONGBLOB NOT NULL
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
	admin_id int primary key not null auto_increment,
    admin_name varchar(50) not null,
    admin_account varchar(20) not null unique,
    admin_password varchar(20) not null,
    admin_phone varchar(20),
    admin_address varchar(100),
    admin_email varchar(50) not null,
    admin_title char(1) not null,
    admin_status char(1) not null default '0'
);

INSERT INTO admin (admin_name, admin_account, admin_password, admin_email, admin_title)
VALUES
('John Doe', 'johndoe', 'pass123', 'johndoe@example.com', '0'),
('Jane Smith', 'janesmith', 'password1', 'janesmith@example.com', '0'),
('David Johnson', 'davidjohnson', 'password2', 'davidjohnson@example.com', '0'),
('Emily Brown', 'emilybrown', 'abc123', 'emilybrown@example.com', '0'),
('Michael Davis', 'michaeldavis', 'qwerty', 'michaeldavis@example.com', '1'),
('Olivia Wilson', 'oliviawilson', 'adminpass', 'oliviawilson@example.com', '1'),
('William Taylor', 'williamtaylor', 'password123', 'williamtaylor@example.com', '1'),
('Sophia Anderson', 'sophiaanderson', 'testpass', 'sophiaanderson@example.com', '2'),
('James Martin', 'jamesmartin', '12345678', 'jamesmartin@example.com', '2'),
('Isabella Thompson', 'isabellathompson', 'pass1234', 'isabellathompson@example.com', '2');



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

INSERT INTO animal (animal_id, mem_id, corp_id, type, animal_name, status, animal_sex, animal_age, animal_info_note)
VALUES
(20230501, 1, '11111001', '狗', 'Max', '0', '公', '2歲', '友善且精力充沛'),
(20230502, 2, '11111002', '貓', 'Luna', '0', '母', '1歲', '好玩且獨立'),
(20230503, 3, '11111003', '兔子', 'Bunny', '0', '母', '6個月', '喜歡跳來跳去'),
(20230504, 4, '11111004', '鳥', 'Charlie', '0', '公', '3歲', '歌聲優美'),
(20230505, 5, '11111005', '倉鼠', 'Coco', '1', '母', '1.5歲', '喜歡在輪子上奔跑'),
(20230506, 6, '11111006', '天竺鼠', 'Oreo', '2', '公', '1歲', '喜歡被撫摸'),
(20230507, 7, '11111007', '狗', 'Nemo', '1', '公', '1.5歲', '色彩繽紛且活潑'),
(20230508, 8, '11111008', '狗', 'Sheldon', '1', '公', '5歲', '緩慢而穩定'),
(20230509, 9, '11111009', '貓', 'Slytherin', '0', '公', '2歲', '無毒且友善'),
(20230510, 10, '11111010', '貓', 'Ziggy', '0', '母', '3歲', '喜歡晒太陽');


/* CREATE_TABLE_animalpic */

CREATE TABLE `animal_pic` (
	pic_id INT NOT NULL PRIMARY KEY,
    animal_id INT NOT NULL,
    animal_pic LONGBLOB
);
INSERT INTO animal_pic (pic_id, animal_id, animal_pic) VALUES
(1, 20230501, 'ImageData1'),
(2,20230502, 'ImageData2'),
(3, 20230503, 'ImageData3'),
(4, 20230504, 'ImageData4'),
(5,20230505, 'ImageData5'),
(6, 20230506, 'ImageData6'),
(7,20230507, 'ImageData7'),
(8, 20230508, 'ImageData8'),
(9,20230509, 'ImageData9'),
(10, 20230510, 'ImageData10');


/* CREATE_TABLE_room_order */

create table room_order(
	room_order_id int primary key not null AUTO_INCREMENT,
    mem_id int not null,
    room_type_id int not null,
    room_id int,
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

INSERT INTO animal_favorite (fav_id, animal_id, mem_id)
VALUES
(110, 20230501, 1),
(112, 20230502, 2),
(113, 20230503, 3),
(114, 20230504, 4),
(115, 20230505, 5),
(116, 20230506, 6),
(117, 20230507, 7),
(118, 20230508, 8),
(119, 20230509, 9),
(120, 20230510, 10);



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
	function_id int primary key not null auto_increment,
    function_name char(1) not null
);

insert into access_function (function_name)
values
('0'),
('1'),
('2'),
('3');



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
    `reci_name` varchar(50) not null,
    `reci_phone` varchar(20) not null,
    `reci_add` varchar(100)
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
    `sale_discount` double not null default 1,
    primary key (`pd_id`, `sale_pro_id`)
);


/* CREATE_TABLE_sale_project */

create table `sale_project` (
	`sale_pro_id` int primary key not null auto_increment,
    `sale_pro_name` varchar(100) not null,
    `sale_pro_start` datetime not null,
	`sale_pro_end` datetime not null
);


/* CREATE_TABLE_room_pic */

CREATE TABLE `room_pic` (
  `room_pic_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
  `room_type_id` INT NOT NULL,
  `room_pic` LONGBLOB 
 );




/* CREATE_TABLE_promiselist */

CREATE TABLE `promise_list`(
	promise_id INT PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,
    animal_id INT NOT NULL,
    promise_time DATETIME NOT NULL,
    promise_status CHAR(1) NOT NULL
);
INSERT INTO promise_list (mem_id, animal_id, promise_time, promise_status)
VALUES
(1, 20230501, '2023-06-07 10:00:00', '0'),
(2, 20230502, '2023-06-07 11:30:00', '0'),
(3, 20230503, '2023-06-07 14:45:00', '1'),
(4, 20230504, '2023-06-08 09:15:00', '1'),
(5, 20230505, '2023-06-08 13:00:00', '1'),
(6, 20230506, '2023-06-09 10:30:00', '2'),
(7, 20230507, '2023-06-09 14:00:00', '2'),
(8, 20230508, '2023-06-10 11:00:00', '1'),
(9, 20230509, '2023-06-10 14:30:00', '3'),
(10, 20230510, '2023-06-11 10:45:00', '0');



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
    `pd_rank` double default null,
    `pd_img` longblob
);


/* CREATE_TABLE_room */

CREATE TABLE `room` (
  `room_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `room_type_id` INT NOT NULL,
   `pet_name` VARCHAR(30),
  `room_name` VARCHAR(30),
  `room_sale_status` CHAR(1) NOT NULL DEFAULT '0',
  `room_status` CHAR(1) NOT NULL DEFAULT '0'
  );

 INSERT INTO room (room_type_id, room_name, pet_name,room_sale_status, room_status) VALUES 
(5, '房間A', NULL, '0', '0'), (5, '房間B', NULL,'0', '0'), (5, '房間C',NULL, '0', '0'), 
(6, '房間A', NULL,'0', '0'), (6, '房間B',NULL, '0', '0'),  
(7, '房間A', NULL,'0', '0'), (7, '房間B', NULL,'0', '0'), (7, '房間C',NULL, '0', '0'), 
(8, '房間A', NULL,'0', '0'), (8, '房間B',NULL, '0', '0'), (8, '房間C',NULL, '0', '0'), 
(9, '房間A', NULL,'0', '0'), (9, '房間B',NULL, '0', '0'), (9, '房間C', NULL,'0', '0'), 
(10, '房間A', NULL,'0', '0'), (10, '房間B',NULL, '0', '0'),
(11, '房間A',NULL, '0', '0'), (11, '房間B',NULL, '0', '0'),
(12, '房間A', NULL,'0', '0'), (12, '房間B',NULL, '0', '0'),
(13, '房間A',NULL, '0', '0'), (13, '房間B',NULL, '0', '0'),
(14, '房間A', NULL,'0', '0'), (14, '房間B',NULL, '0', '0'),
(15, '房間A', NULL,'0', '0'), (15, '房間B',NULL, '0', '0'),
(16, '房間A', NULL,'0', '0'), (16, '房間B', NULL,'0', '0'),
(17, '房間A',NULL, '0', '0'), (17, '房間B',NULL, '0', '0'),
(18, '房間A',NULL, '0', '0'), (18, '房間B',NULL, '0', '0'),
(19, '房間A', NULL,'0', '0'), (19, '房間B',NULL, '0', '0');





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
  CONSTRAINT fk_room_room_type FOREIGN KEY (room_type_id) REFERENCES room_type (room_type_id)
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


/* pet_pics */
ALTER TABLE `pet_pic` add(
    CONSTRAINT `fk_pet_pic_pet` FOREIGN KEY (pet_id) REFERENCES `pet` (pet_id)
)
