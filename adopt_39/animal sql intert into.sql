
-- animal--
INSERT INTO animal (animal_id, mem_id, corp_id, type, animal_name, status, animal_sex, animal_age, animal_info_note)
VALUES
(20230501, 1, '11111001', '狗', 'Max', '0', '公', '2歲', '友善且精力充沛'),
(20230502, 2, '11111002', '貓', 'Luna', '0', '母', '1歲', '好玩且獨立'),
(20230503, 3, '11111003', '兔子', 'Bunny', '0', '母', '6個月', '喜歡跳來跳去'),
(20230504, 4, '11111004', '鳥', 'Charlie', '0', '公', '3歲', '歌聲優美'),
(20230505, 5, '11111005', '倉鼠', 'Coco', '1', '母', '1.5歲', '喜歡在輪子上奔跑'),
(20230506, 6, '11111006', '天竺鼠', 'Oreo', '2', '公', '1歲', '喜歡被撫摸'),
(20230507, 7, '11111007', '狗', 'Nemo', '1', '公', '1.5歲', '色彩繽紛且活潑'),
(20230508, 8, '11111008', '狗', 'Sheldon', '1', '公', '5歲', '緩慢而穩定'),
(20230509, 9, '11111009', '貓', 'Slytherin', '0', '公', '2歲', '無毒且友善'),
(20230510, 10, '11111010', '貓', 'Ziggy', '0', '母', '3歲', '喜歡晒太陽');

-- adopted_application-- 

INSERT INTO adopted_application (mem_id, animal_id, adopter_id_number, adopter_name, adopter_address, adopter_phone, adopter_email, adopter_job,status, adopter_note)
VALUES
(1, 20230501, 'A12345678','John Doe', '台北市 - 大安區', '123-456-7890', 'john.doe@example.com','星球保護者','1', 'Note 1'),
(2, 20230502, 'B98765432','Jane Smith', '新北市 - 三峽區', '987-654-3210', 'jane.smith@example.com','夢想實現師','1', 'Note 2'),
(3, 20230503, 'C45678901','Michael Johnson', '桃園市 - 中壢區', '456-789-0123', 'michael.johnson@example.com','魔法藥水師','2', 'Note 3'),
(4, 20230504, 'D21098765','Emily Davis', '台中市 - 西屯區', '210-987-6543', 'emily.davis@example.com','太空旅遊導遊 ','0', 'Note 4'),
(5, 20230505, 'E67890123','David Wilson', '台南市 - 安南區', '678-901-2345', 'david.wilson@example.com','幻想世界設計師','1', 'Note 5'),
(6, 20230506, 'F54321098','Sarah Thompson', '高雄市 - 鳳山區', '543-210-9876', 'sarah.thompson@example.com','太陽能工程師 ','2', 'Note 6'),
 (7, 20230507, 'G10987654','Christopher Lee', '基隆市 - 仁愛區', '109-876-5432', 'christopher.lee@example.com','軟體工程師','3', 'Note 7'),
(8, 20230508, 'H76543210','Jessica Turner', '新竹縣 - 竹北市', '765-432-1098', 'jessica.turner@example.com','超能力訓練師','0', 'Note 8'),
(9,20230509, 'I32109876','Andrew Wilson', '苗栗縣 - 苑裡鎮', '321-098-7654', 'andrew.wilson@example.com','情感治療師','1',  'Note 9'),
(10, 20230510, 'J98765432','Olivia Harris', '彰化縣 - 彰化市', '987-654-3210', 'olivia.harris@example.com','飛行汽車試驗員 ','1', 'Note 10');


-- animal_corporation--

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


-- promise_list--
INSERT INTO promise_list (mem_id, animal_id, promise_time, promise_status)
VALUES
(1, 20230501, '2023-06-07 10:00:00', '0'),
(2, 20230502, '2023-06-07 11:30:00', '0'),
(3, 20230503, '2023-06-07 14:45:00', '1'),
(4, 20230504, '2023-06-08 09:15:00', '1'),
(5, 20230505, '2023-06-08 13:00:00', '1'),
(6, 20230506, '2023-06-09 10:30:00', '2'),
(7, 20230507, '2023-06-09 14:00:00', '2'),
(8, 20230508, '2023-06-10 11:00:00', '1'),
(9, 20230509, '2023-06-10 14:30:00', '3'),
(10, 20230510, '2023-06-11 10:45:00', '0');


INSERT INTO animal_favorite (fav_id, animal_id, mem_id)
VALUES
(111, 20230501, 1),
(222, 20230502, 2),
(333, 20230503, 3),
(444, 20230504, 4),
(555, 20230505, 5),
(666, 20230506, 6),
(777, 20230507, 7),
(888, 20230508, 8),
(999, 20230509, 9),
(100, 20230510, 10);


-- animal_pic--
INSERT INTO animal_pic (pic_id, animal_id, animal_pic) VALUES
(1, 20230501, 'ImageData1'),
(2,20230502, 'ImageData2'),
(3, 20230503, 'ImageData3'),
(4, 20230504, 'ImageData4'),
(5,20230505, 'ImageData5'),
(6, 20230506, 'ImageData6'),
(7,20230507, 'ImageData7'),
(8, 20230508, 'ImageData8'),
(9,20230509, 'ImageData9'),
(10, 20230510, 'ImageData10');

