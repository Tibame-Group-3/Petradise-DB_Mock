use gp3;

create table order_master(
od_id int primary key not null auto_increment, 
mem_id int not null,
price_ori int not null,
price_dis int,
price_bonus int,
price_ship int not null,
price_od int not null,
od_status char(1) not null default 0,
od_pay char(1),
od_ship char(1),
od_note varchar(100),
od_trace varchar(20),
reci_name varchar(50),
reci_phone varchar(20),
reci_add varchar(100),
reci_store varchar(20),
reci_date datetime
);
