CREATE TABLE `animal` (
	animal_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    corp_id INT NOT NULL,
    mem_id INT,
    type VARCHAR(30) NOT NULL,
    animal_name varchar(30) NOT NULL,
    status CHAR(1) NOT NULL,
    animal_sex CHAR(1) NOT NULL,
    animal_age VARCHAR(10) NOT NULL,
    animal_info_note VARCHAR(200)
);

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