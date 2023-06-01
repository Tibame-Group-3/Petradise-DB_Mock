use gp3;

create table news_list(
news_id int primary key not null auto_increment,
admin_id int not null,
news_title varchar(20) not null,
news_content varchar(1000) not null,
news_date datetime not null,
news_photo longblob
);
