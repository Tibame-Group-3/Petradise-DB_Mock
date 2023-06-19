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


