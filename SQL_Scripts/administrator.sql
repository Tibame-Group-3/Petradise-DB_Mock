create table administrator(
	admin_id int primary key not null,
    admin_name varchar(50) not null,
    admin_account varchar(20) not null,
    admin_password varchar(20) not null,
    admin_phone varchar(20) not null,
    admin_address varchar(100) not null,
    admin_email varchar(50) not null,
    admin_title varchar(20) not null,
    admin_status char(1) not null
);

INSERT INTO administrator (admin_id, admin_name, admin_account, admin_password, admin_phone, admin_address, admin_email, admin_title, admin_status)
VALUES
(1, 'John Doe', 'johndoe', 'pass123', '1234567890', '123 Main St, City', 'johndoe@example.com', '主管', '1'),
(2, 'Jane Smith', 'janesmith', 'password1', '9876543210', '456 Elm St, Town', 'janesmith@example.com', '主管', '2'),
(3, 'David Johnson', 'davidjohnson', 'secret123', '5551234567', '789 Oak Ave, Village', 'davidjohnson@example.com', '正職', '3'),
(4, 'Emily Brown', 'emilybrown', 'abc123', '1112223333', '321 Pine Rd, City', 'emilybrown@example.com', '正職', '3'),
(5, 'Michael Davis', 'michaeldavis', 'qwerty', '4445556666', '654 Cedar Ln, Town', 'michaeldavis@example.com', '正職', '4'),
(6, 'Olivia Wilson', 'oliviawilson', 'adminpass', '7778889999', '987 Spruce Dr, City', 'oliviawilson@example.com', '正職', '1'),
(7, 'William Taylor', 'williamtaylor', 'password123', '2223334444', '159 Birch St, Village', 'williamtaylor@example.com', '工讀', '2'),
(8, 'Sophia Anderson', 'sophiaanderson', 'testpass', '8889990000', '852 Maple Ave, Town', 'sophiaanderson@example.com', '工讀', '3'),
(9, 'James Martin', 'jamesmartin', '12345678', '6667778888', '753 Oakwood Dr, City', 'jamesmartin@example.com', '工讀', '1'),
(10, 'Isabella Thompson', 'isabellathompson', 'pass1234', '3334445555', '456 Elm St, Village', 'isabellathompson@example.com', '正職', '4');
