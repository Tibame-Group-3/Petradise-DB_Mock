use gp3;

create table sale_project(
sale_pro_id int primary key not null auto_increment, 
sale_pro_name varchar(50) not null,
sale_pro_start datetime not null,
sale_pro_end datetime not null
);
