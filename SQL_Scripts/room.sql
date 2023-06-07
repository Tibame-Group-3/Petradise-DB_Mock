use test;
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
 
