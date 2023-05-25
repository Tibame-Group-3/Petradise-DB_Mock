create table `order_detail` (
	`od_id` int not null,
    `pd_id` int not null,
    `sale_pro_id` int not null,
    `pd_amount` int not null,
    `rank_status` char(1) not null default'0',
    primary key (`od_id`, `pd_id`)
);