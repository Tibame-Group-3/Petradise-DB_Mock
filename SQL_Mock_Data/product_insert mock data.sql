use gp3;

--  `product` --
alter table `gp3`.`product` drop column `pd_spe`;
insert into `product` 
(pd_type,
pd_pet_type,
pd_name,
pd_price,
pd_info,
pd_status,
pd_date,
pd_rank) 
values 
("寶可夢球", "寶可夢", "精靈球", 200, "捕獲率×1。用於投向野生寶可夢並將其捕捉的球。它是膠囊樣式的。", 0, current_timestamp(), 4.5 ),
("寶可夢球", "寶可夢", "超級球", 600, "捕獲率×1.5。比起精靈球來更容易捉到寶可夢的，性能還算不錯的球。", 0, current_timestamp(), 5.0 ),
("寶可夢球", "寶可夢", "高級球", 800, "捕獲率×2。比起超級球來更容易捉到寶可夢的，性能非常不錯的球。", 0, current_timestamp(), 5.0 ),
("樹果", "寶可夢", "桃桃果", 80, "讓寶可夢攜帶後，可以治愈中毒。", 0, current_timestamp(), 4.0 ),
("樹果", "寶可夢", "櫻子果", 80, "讓寶可夢攜帶後，可以治愈麻痺。", 0, current_timestamp(), 4.0 ),
("樹果", "寶可夢", "橙橙果", 80, "讓寶可夢攜帶後，可以回復10HP。", 0, current_timestamp(), 5.0 ),

('飼料', '狗', 'Acana 狗糧', 600, '適合所有狗隻的營養食品', 0, current_timestamp(), 4.5),
('飼料', '狗', 'Royal Canin 狗糧', 420, '提供高品質蛋白質的狗糧', 0, current_timestamp(), 4.0),
('玩具', '狗', 'KONG 玩具球', 350, '耐咬、可互動的狗玩具', 0, current_timestamp(), 2.0),
('玩具', '狗', 'Nylabone 玩具球', 270, '可發出聲音的互動狗玩具', 0, current_timestamp(), 5.0),
('保健', '狗', '狗維他命', 880, '增強狗隻免疫力的維他命', 0, current_timestamp(), 3.5),
('保健', '狗', '狗關節補給', 750, '維護狗隻關節健康的保健品', 0, current_timestamp(), 5.0),

('飼料', '貓', 'Royal Canin 貓糧', 680, '提供全面營養的貓糧', 0, current_timestamp(), 5.0 ),
('飼料', '貓', 'Orijen 貓糧', 500, '含有豐富蛋白質的貓糧', 0, current_timestamp(), 5.0 ),
('玩具', '貓', 'KONG 逗貓棒', 240, '讓貓咪保持活躍的玩具', 0, current_timestamp(), 4.0 ),
('玩具', '貓', 'Nylabone 逗貓棒', 150, '可追逐的互動貓玩具', 0, current_timestamp(), 3.5 ),
('保健', '貓', '貓牙膏', 360, '清潔貓咪口腔的牙膏', 0, current_timestamp(), 5.0 ),
('保健', '貓', '貓毛球膏', 390, '促進貓咪消化系統健康的膏狀產品', 0, current_timestamp(), 4.0 );

/*
-- 創建包含BLOB列的表
CREATE TABLE `images` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `image` BLOB
);

-- 插入圖像數據
INSERT INTO `images` (`image`) VALUES
  (LOAD_FILE('/path/to/image.jpg'));

-- 檢索圖像數據
SELECT `image` FROM `images` WHERE `id` = 1;



-- product_img --
insert into `product_img` 
(pd_id,
pd_img) 
values
();
*/

-- sale --
alter table `sale` rename column sale_price to sale_discount;
alter table `sale` modify sale_discount double;
insert into `sale`
(pd_id,
sale_pro_id,
sale_discount)
values
(1, 2, 0.8),
(2, 2, 0.8),
(3, 2, 0.8);

-- sale_project --
insert into `sale_project`
(sale_pro_name,
sale_pro_start,
sale_pro_end)
values
('寵物情人節驚喜', '2023-02-01', '2023-02-14'),
('夏日清涼狂歡會', '2023-06-01', '2023-06-30'),
('萬聖節寵物造型派對', '2023-10-01', '2023-10-31');

-- news_list --
insert into `news_list`
(admin_id,
news_title,
news_content,
news_date,
news_photo)
values
(1, '聰明吃，救健康！', '關心毛孩的飲食健康嗎？我們提供優質的寵物飼料和營養補充品。無論是貓、狗，還是寶可夢，無論是糧食還是樹果，您都能找到最合適的選擇，給您的寵物提供均衡營養，讓他們保持健康活力！', '2023-05-05', null),
(1, '新品上架，限時特價促銷中！', '樹果系列上架了全新的產品，限時特價全系列商品9折優惠，數量有限售完為止要買要快，歡迎快來選購！', '2023-05-22', null),
(1, '「夏日清涼狂歡會」促銷活動開跑！', '為了讓您的寵物度過炎炎夏日，我們舉辦商品優惠讓您清涼一夏！商城全面8折優惠，趕快來參加吧，讓您的寵物在炎炎夏日中感到舒適和愉快！', '2023-06-15', null);