create table `status_date` (
	`od_id` int primary key not null,
	`od_status` char(1) not null default'0',
    `od_date` datetime not null
);