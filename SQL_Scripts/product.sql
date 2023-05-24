create table `product` (
	`pd_id` int primary key not null auto_increment,
    `pd_type` varchar(20) not null,
    `pd_pet_type` varchar(20) not null,
    `pd_name` varchar(20) not null,
    `pd_price` int not null,
    `pd_spe` varchar(20) not null default null,
    `pd_info` varchar(150) default null,
    `pd_status` char(1) not null default'1',
    `pd_date` datetime not null,
    `pd_rank` double default null
)