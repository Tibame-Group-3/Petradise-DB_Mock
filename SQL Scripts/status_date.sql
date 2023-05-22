use gp3;

create table status_date(
od_id int not null,
od_status char(1) not null,
od_date datetime not null,
primary key (od_id, od_status)
);
