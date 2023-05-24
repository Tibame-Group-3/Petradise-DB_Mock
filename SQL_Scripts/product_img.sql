create table `product_img` (
	`pd_img_id` int primary key not null auto_increment,
    `pd_id` int not null,
    `pd_img` longblob 
)