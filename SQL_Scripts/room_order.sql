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
