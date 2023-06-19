create table `favorite` (
	`pd_id` int not null,
    `mem_id` int not null,
    `fav_date` datetime not null,
    primary key (`pd_id`, `mem_id`)
);

INSERT INTO animal_favorite (fav_id, animal_id, mem_id)
VALUES
(110, 20230501, 1),
(112, 20230502, 2),
(113, 20230503, 3),
(114, 20230504, 4),
(115, 20230505, 5),
(116, 20230506, 6),
(117, 20230507, 7),
(118, 20230508, 8),
(119, 20230509, 9),
(120, 20230510, 10);
