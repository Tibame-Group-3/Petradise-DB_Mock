create table admin_access(
	access_id int primary key not null auto_increment,
	admin_id int,
    function_id int
);