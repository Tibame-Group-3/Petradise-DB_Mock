use gp3;

create table sale(
pd_id int,
sale_pro_id int,
sale_price int not null,
primary key (pd_id, sale_pro_id)
);
