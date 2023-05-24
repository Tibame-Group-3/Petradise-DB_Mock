create table `sale` (
	`pd_id` int not null,
    `sale_pro_id` int not null,
    `sale_price` int not null,
    primary key (`pd_id`, `sale_pro_id`)
)