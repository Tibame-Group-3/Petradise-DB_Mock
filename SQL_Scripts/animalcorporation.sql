CREATE TABLE `animal_corporation` (
	corp_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    applied_status CHAR(1) NOT NULL,
	corp_account CHAR(8) NOT NULL,
	corp_password CHAR(12) NOT NULL,
	corp_name VARCHAR(50) NOT NULL UNIQUE,
	corp_registered_id VARCHAR(50)NOT NULL UNIQUE,
	corp_address VARCHAR(100) NOT NULL,
	contact_name VARCHAR(20) NOT NULL,
	contact_phone VARCHAR(20) NOT NULL,
	contact_email VARCHAR(40) NOT NULL,
	corp_access CHAR(1) NOT NULL
);

INSERT INTO animal_corporation (applied_status, corp_account,corp_password, corp_name, corp_registered_id, corp_address, contact_name, contact_phone, contact_email, corp_access)
VALUE
('1', 'C000001', 'A111', '愛心動物收容所有限公司', '1234567890', '桃園市中壢區', 'John Doe', '123-456-7890', 'john@example.com', '0'),
('1', 'C000002', 'A222', '快樂動物之家股份有限公司', '9876543210', '桃園市桃園區', 'Jane Smith', '987-654-3210', 'jane@example.com', '0'),
('1', 'C000003', 'C444', '寵物天堂收容所有限公司', '2468135790', '桃園市平鎮區', 'Mike Johnson', '456-789-1230', 'mike@example.com', '0'),
('2', 'C000004', 'D555', '美好寵物領養中心', '1357924680', '嘉義市西區', 'Sarah Davis', '789-123-4560', 'sarah@example.com', '0'),
('2', 'C000005', 'F666', '小動物希望基金', '8024681359', '彰化縣彰化市', 'David Wilson', '987-654-3210', 'david@example.com', '1'),
('2', 'C000006', 'E888', '動物基金', '4681357920', '台南市北區', 'Lisa Thompson', '654-321-7890', 'lisa@example.com', '1'),
('2', 'C000007', 'T999', '寵物之家基金會', '5792468130', '台北市大安區', 'Emily Brown', '321-789-4560', 'emily@example.com', '1'),
('2', 'C000008', 'I345','ABC動物保護協會', '4680246813', '新北市板橋區', 'Michael Taylor', '789-456-1230', 'michael@example.com', '1'),
('1', 'C000009', 'Y100', '幸福動物救助中心', '1358024687', '新竹市東區', 'Jessica Wilson', '987-123-4560', 'jessica@example.com', '0'),
('0', 'C000010', 'U567', '樂樂動物救援組織', '2468135799', '高雄市三民區', 'Ryan Anderson', '321-456-7890', 'ryan@example.com', '0');