create table access_function(
	function_id int primary key not null,
    function_name char(1) not null
);

insert into access_function (function_id, function_name)
values
(1, '0'),
(2, '1'),
(3, '2'),
(4, '3');
