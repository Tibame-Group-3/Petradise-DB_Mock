create table access_function(
	function_id int primary key not null,
    function_name varchar(20) not null
);

insert into access_function (function_id, function_name)
values
(1, '旅館'),
(2, '收容'),
(3, '商城'),
(4, '員工');
