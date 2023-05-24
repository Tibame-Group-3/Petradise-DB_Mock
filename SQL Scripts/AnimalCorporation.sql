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