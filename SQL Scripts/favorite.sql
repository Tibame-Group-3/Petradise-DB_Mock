use gp3;

create table favorite(
pd_id int,
mem_id int,
fav_date datetime not null,
primary key (pd_id, mem_id)
);
