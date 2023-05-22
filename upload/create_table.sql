create table administrator(
	admin_id int primary key,
    admin_name varchar(50) not null,
    admin_account varchar(20) not null,
    admin_password varchar(20) not null,
    admin_phone varchar(20) not null,
    admin_address varchar(100) not null,
    admin_email varchar(50) not null,
    admim_title varchar(20) not null,
    admin_status char(1) default 1
);

create table access_function(
	function_id int primary key,
    function_name varchar(20) not null
);

create table administrator_access(
	admin_id int,
    function_id int,
    primary key(admin_id, function_id),
    constraint fk_admin_id foreign key(admin_id) references administrator(admin_id),
    constraint fk_function_id foreign key(function_id) references access_function(function_id)
);

create table room_order(
	room_order_id int primary key,
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
    room_od_special_req varchar(100),
	constraint fk_mem_id foreign key(mem_id) references member(mem_id),
	constraint fk_room_type_id foreign key(room_type_id) references room_type(room_type_id),
    constraint fk_room_id foreign key(room_id) references room(room_id),
	constraint fk_pet_id foreign key(pet_id) references pet(pet_id)
);

create table room_review(
	room_review_id int primary key,
    hotel_id int not null,
	room_order_id int not null,
	room_review_score int not null,
	room_review_content varchar(200)
);