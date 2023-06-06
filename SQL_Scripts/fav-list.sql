CREATE TABLE `fav_list` (
  `fav_list_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `mem_id` INT NOT NULL,
  `room_type_id` INT NOT NULL
   );
   INSERT INTO fav_list (mem_id, room_type_id) VALUES 
(1, 5), (1, 6), (2, 7), (2, 8), (3, 9),
(3, 10), (4, 11), (4, 12), (5, 13), (5, 14);
