CREATE TABLE `adopted_application` (
	adopted_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,
    animal_id INT NOT NULL,
    adopter_id_number VARCHAR(10) NOT NULL,
    adopter_name VARCHAR(30) NOT NULL,
    adopter_address VARCHAR(100) NOT NULL,
    adopter_phone VARCHAR(20) NOT NULL,
    adopter_email VARCHAR(40) NOT NULL,
    adopter_job VARCHAR(30) NOT NULL,
    status CHAR(1) NOT NULL,
    adopter_note VARCHAR(500)
);
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