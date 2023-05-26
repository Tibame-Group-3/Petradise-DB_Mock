CREATE TABLE `member` (
	mem_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mem_name VARCHAR(50) NOT NULL,
    mem_account VARCHAR(20) NOT NULL,
    mem_password VARCHAR(20) NOT NULL,
    mem_birthday DATE NOT NULL,
    mem_phone VARCHAR(20) NOT NULL,
    mem_email VARCHAR(50) NOT NULL,
    mem_address VARCHAR(100),
    mem_access CHAR(1) NOT NULL DEFAULT '0',
    mem_bonus INT NOT NULL DEFAULT 0
);

INSERT INTO `member` (mem_name, mem_account, mem_password, mem_birthday, mem_phone, mem_email, mem_address)
VALUES
	('testing', 'testing', 'testing', '1970-01-01', '1234567890', 'tibamegp3@gmail.com', '320桃園市中壢區復興路46號9樓'),
    ('John Doe', 'john123', 'pass123', '1990-05-10', '1234567890', 'john.doe@example.com', '123 Main St, City'),
    ('Jane Smith', 'jane456', 'pass456', '1985-08-20', '9876543210', 'jane.smith@example.com', '456 Elm St, City'),
    ('Michael Johnson', 'michael789', 'pass789', '1992-02-15', '4567891230', 'michael.johnson@example.com', '789 Oak St, City'),
    ('Emily Davis', 'emily001', 'pass001', '1998-11-25', '7891234560', 'emily.davis@example.com', '987 Pine St, City'),
    ('David Wilson', 'david234', 'pass234', '1987-07-05', '1237894560', 'david.wilson@example.com', '345 Maple St, City'),
    ('Olivia Thomas', 'olivia567', 'pass567', '1995-04-18', '9874561230', 'olivia.thomas@example.com', '654 Cedar St, City'),
    ('James Anderson', 'james890', 'pass890', '1983-09-30', '1239876540', 'james.anderson@example.com', '789 Pine St, City'),
    ('Sophia Miller', 'sophia002', 'pass002', '1991-06-12', '7894561230', 'sophia.miller@example.com', '123 Cedar St, City'),
    ('Daniel Taylor', 'daniel345', 'pass345', '1997-03-05', '4561237890', 'daniel.taylor@example.com', '456 Maple St, City'),
    ('Ava Martinez', 'ava678', 'pass678', '1994-01-15', '1234567890', 'ava.martinez@example.com', '789 Elm St, City');
