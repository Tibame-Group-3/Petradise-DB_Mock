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
