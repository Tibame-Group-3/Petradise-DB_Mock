CREATE DATABASE IF NOT EXISTS gp3;

use gp3;

DROP TABLE IF EXISTS hotel_owner;
CREATE TABLE hotel_owner (
  hotel_id INT NOT NULL AUTO_INCREMENT,
  hotel_name VARCHAR(20) NOT NULL,
  hotel_address VARCHAR(100) NOT NULL,
  hotel_status CHAR(1) NOT NULL DEFAULT '0',
  hotel_lic VARCHAR(50) NOT NULL,
  review_score_people INT,
  review_score_total INT,
  owner_account CHAR(8) NOT NULL,
  owner_password VARCHAR(20) NOT NULL,
  owner_name VARCHAR(50) NOT NULL,
  owner_id VARCHAR(10) NOT NULL,
  owner_bank CHAR,
  owner_phone VARCHAR(20) NOT NULL,
  owner_email VARCHAR(50) NOT NULL,
  owner_access CHAR(1) NOT NULL DEFAULT '0',
  constraint PRIMARY KEY(hotel_id)
);