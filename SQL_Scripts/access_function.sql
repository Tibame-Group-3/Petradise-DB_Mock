create table access_function(
	function_id int primary key not null auto_increment,
    function_name char(1) not null
);

insert into access_function (function_name)
values
('0'),
('1'),
('2'),
('3');
