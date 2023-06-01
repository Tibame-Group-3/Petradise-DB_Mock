use gp3;

create table `comment`(
com_id int primary key not null auto_increment, 
pd_id int not null,
mem_id int not null,
com_date datetime not null,
com_content varchar(200),
com_rank int
);
