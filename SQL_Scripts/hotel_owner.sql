use gp3;

SELECT * FROM gp3.hotel_owner;

drop TABLE hotel_owner;

CREATE TABLE `hotel_owner` (
  `hotel_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `hotel_name` VARCHAR(20) NOT NULL,
  `hotel_address` VARCHAR(100) NOT NULL,
  `hotel_status` CHAR(1) NOT NULL DEFAULT '0',
  `hotel_lic_id` VARCHAR(50) NOT NULL,
  `hotel_lic_pic` LONGBLOB,
  `review_score_people` INT,
  `review_score_total` INT,
  `owner_account` CHAR(8) NOT NULL,
  `owner_password` VARCHAR(20) NOT NULL,
  `owner_name` VARCHAR(50) NOT NULL,
  `owner_id` VARCHAR(10) NOT NULL,
  `owner_bank` VARCHAR(14) NOT NULL,
  `owner_phone` VARCHAR(20) NOT NULL,
  `owner_email` VARCHAR(50) NOT NULL,
  `owner_access` CHAR(1) NOT NULL DEFAULT '0'
   
);

INSERT INTO `hotel_owner` (
  `hotel_name`,
  `hotel_address`,
  `hotel_status`,
  `hotel_lic_id`,
  `hotel_lic_pic`,
  `review_score_people`,
  `review_score_total`,
  `owner_account`,
  `owner_password`,
  `owner_name`,
  `owner_id`,
  `owner_bank`,
  `owner_phone`,
  `owner_email`,
  `owner_access`
) VALUES
  ('寵物樂園', '台北市雙園大道123號', '2', 'LIC123456', null, 100, 5, 'acct001', 'pass123', '張小花', 'A123456789', '01234567890123', '0912345678', 'changxiaohua@example.com', '0'),
  ('毛孩之家', '台北市忠孝東路四段456號', '2', 'LIC987654',  null, 80, 4, 'acct002', 'pass456', '李大狗', 'A187654321', '12345678901234', '0987654321', 'lidagou@example.com', '0'),
  ('愛心寵寓', '新北市板橋區新站路123號', '2', 'LIC246813',  null, 90, 5, 'acct003', 'pass789', '王小貓', 'F135792468', '234567890123', '0910293847', 'wangxiaomao@example.com', '0'),
  ('喵喵別墅', '新北市淡水區中山路456號', '2', 'LIC369852', null, 95, 4, 'acct004', 'pass369', '劉小魚', 'F246813579', '3456789012', '0956784321', 'liuxiaoyu@example.com', '0'),
  ('喵響小屋', '桃園市桃園路789號', '2', 'LIC582019',  null, 85, 2, 'acct005', 'pass582', '陳小鳥', 'H179135246', '456789012345', '0998765432', 'chenxiaoniao@example.com', '0'),
  ('汪汪大飯店', '桃園市中正東路一段101號', '2', 'LIC729104',null, 75, 3, 'acct006', 'pass729', '林小狼', 'H292571834', '56789012345678', '0901234567', 'linxiaolang@example.com', '0'),
  ('寵物天地', '桃園市中山北路二段222號', '2', 'LIC860527', null, 85, 1, 'acct007', 'pass860', '張小鳳', 'H151357246', '67890123456789', '0976543210', 'zhangxiaofeng@example.com', '0'),
  ('愛心寵物館', '桃園市龍潭路333號', '2', 'LIC417623',  null, 95, 3, 'acct008', 'pass417', '王大熊', 'H124617395', '91283092830192', '0945678901', 'wangdaxiong@example.com', '0'),
  ('小魚寵物店', '桃園市鶯歌路8號', '2', 'LIC536281',  null, 90, 5, 'acct009', 'pass536', '李小龍', 'H113548962', '39842084204320', '0928374650', 'lixiaolong@example.com', '0'),
  ('毛茸茸寵物屋', '桃園市大溪路55號', '2', 'LIC962384',  null, 80, 5, 'acct010', 'pass962', '林大貓', 'H124769531', '57385924759328', '0932145678', 'lindamao@example.com', '0'),
  ('汪汪小窩', '桃園市八德路16號', '2', 'LIC185739',  null, 85, 5, 'acct011', 'pass185', '陳小狗', 'H152864173', '20394029384039', '0945678901', 'chenxiaogou@example.com', '0'),
  ('喵喵寵物園', '台中市文心路777號', '2', 'LIC327598',  null, 95, 4, 'acct012', 'pass327', '張小貓', 'B289236751', '49582058239482', '0987654321', 'zhangxiaomao@example.com', '0'),
  ('狗狗小屋', '台中市中山南路88號', '2', 'LIC514729',  null, 90, 2, 'acct013', 'pass514', '林小狗', 'B183246915', '73294820938291', '0956784321', 'linxiaogou@example.com', '0'),
  ('寵物天堂', '高雄市中山一路11號', '2', 'LIC671923', null, 80, 4, 'acct014', 'pass671', '李小貓', 'E226537491', '10483948209382', '0910293847', 'lixiaomao@example.com', '0'),
  ('小魚養殖場', '高雄市忠孝路1212號', '2', 'LIC950738',  null, 85, 2, 'acct015', 'pass950', '陳大魚', 'E117638425', '28749287348732', '0928374650', 'chendayu@example.com', '0');
  
