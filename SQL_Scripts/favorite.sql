create table `favorite` (
	`pd_id` int not null,
    `mem_id` int not null,
    `fav_date` datetime not null,
    primary key (`pd_id, mem_id`)
)