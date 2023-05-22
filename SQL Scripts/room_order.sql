create table room_order(
	room_order_id int not null,
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