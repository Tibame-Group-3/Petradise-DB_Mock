create table administrator_access(
	admin_id int,
    function_id int,
     primary key(admin_id, function_id)
);