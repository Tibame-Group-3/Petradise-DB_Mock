CREATE TABLE `animal_pic` (
	pic_id INT NOT NULL PRIMARY KEY,
    animal_id INT NOT NULL,
    animal_pic LONGBLOB
);
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