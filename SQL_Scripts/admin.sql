create table admin(
	admin_id int primary key not null auto_increment,
    admin_name varchar(50) not null,
    admin_account varchar(20) not null unique,
    admin_password varchar(20) not null,
    admin_phone varchar(20),
    admin_address varchar(100),
    admin_email varchar(50) not null,
    admin_title char(1) not null,
    admin_status char(1) not null default '0'
);

INSERT INTO admin (admin_name, admin_account, admin_password, admin_email, admin_title)
VALUES
('John Doe', 'johndoe', 'pass123', 'johndoe@example.com', '0'),
('Jane Smith', 'janesmith', 'password1', 'janesmith@example.com', '0'),
('David Johnson', 'davidjohnson', 'password2', 'davidjohnson@example.com', '0'),
('Emily Brown', 'emilybrown', 'abc123', 'emilybrown@example.com', '0'),
('Michael Davis', 'michaeldavis', 'qwerty', 'michaeldavis@example.com', '1'),
('Olivia Wilson', 'oliviawilson', 'adminpass', 'oliviawilson@example.com', '1'),
('William Taylor', 'williamtaylor', 'password123', 'williamtaylor@example.com', '1'),
('Sophia Anderson', 'sophiaanderson', 'testpass', 'sophiaanderson@example.com', '2'),
('James Martin', 'jamesmartin', '12345678', 'jamesmartin@example.com', '2'),
('Isabella Thompson', 'isabellathompson', 'pass1234', 'isabellathompson@example.com', '2');
