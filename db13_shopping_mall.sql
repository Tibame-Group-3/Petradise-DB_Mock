create database if not exists db13;

use db13;

create table product_type(
pd_type_id int primary key not null auto_increment, 
pd_type_name varchar(30) not null unique
);

create table product(
pd_id int primary key not null auto_increment, 
constraint fk_producttype_product
foreign key (pd_type_id) references product_type (pd_type_id),
constraint fk_pet_product
foreign key (pet_type) references pet (pet_type),
pd_name varchar(20) not null,
pd_price int not null,
pd_spe varchar(20) not null,
pd_info varchar(150),
pd_status char(1) default 0,
pd_date datetime not null,
pd_rank double
);

create table product_img(
pd_img_id int primary key not null auto_increment, 
constraint fk_product_productimg
foreign key (pd_id) references product (pd_id),
pd_img longblob
);

create table order_master(
od_id int primary key not null auto_increment, 
constraint fk_member_ordermaster
foreign key (mem_id) references member (mem_id),
price_ori int not null,
price_dis int,
price_bonus int,
price_ship int not null,
price_od int not null,
od_status char(1) not null default 0,
od_pay char(1) not null,
od_ship char(1) not null,
od_note varchar(100),
od_trace varchar(20),
reci_name varchar(50),
reci_phone varchar(20),
reci_add varchar(100),
reci_store varchar(20),
reci_date datetime
);

create table status_date(
constraint fk_ordermaster_statusdate
foreign key (od_id) references order_master (od_id),
constraint fk_ordermaster_statusdate2
foreign key (od_status) references order_master (od_status),
primary key (od_id, od_status),
od_date datetime not null
);

create table order_item(
constraint fk_ordermaster_orderitem
foreign key (od_id) references order_master (od_id),
constraint fk_product_orderitem
foreign key (pd_id) references product (pd_id),
primary key (od_id, pd_id),
pd_amount int not null,
constraint fk_product_orderitem2
foreign key (pd_price) references product (pd_price),
constraint fk_sale_orderitem
foreign key (sale_price) references sale (sale_price),
constraint fk_saleproject_orderitem
foreign key (sale_pro_id) references sale_project (sale_pro_id),
rank_status char(1) not null default 0
);

create table sale(
constraint fk_product_sale
foreign key (pd_id) references product (pd_id),
constraint fk_saleproject_sale
foreign key (sale_pro_id) references sale_project (sale_pro_id),
primary key (pd_id, sale_pro_id),
constraint fk_product_sale2
foreign key (pd_price) references product (pd_price),
sale_price int not null
);

create table sale_project(
sale_pro_id int primary key not null auto_increment, 
sale_pro_name varchar(50) not null,
sale_pro_start datetime not null,
sale_pro_end datetime not null
);

create table comment(
com_id int primary key not null auto_increment, 
constraint fk_product_comment
foreign key (pd_id) references product (pd_id),
constraint fk_member_comment
foreign key (mem_id) references member (mem_id),
com_date datetime not null,
com_content varchar(200),
price_bonus int,
com_rank int
);

create table favorite(
constraint fk_product_favorite
foreign key (pd_id) references product (pd_id),
constraint fk_member_favorite
foreign key (mem_id) references member (mem_id),
primary key (pd_id, mem_id),
fav_date datetime not null
);

