CREATE TABLE `pet` (
	pet_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mem_id INT NOT NULL,
    pet_name VARCHAR(30),
    pet_type VARCHAR(30),
    pet_size CHAR(1),
    pet_status CHAR(1) NOT NULL DEFAULT '0'
);

INSERT INTO `pet` (mem_id, pet_name, pet_type, pet_size)
VALUES
    (1, 'Fluffy', 'Cat', 'S'),
    (2, 'Buddy', 'Dog', 'M'),
    (3, 'Charlie', 'Dog', 'L'),
    (4, 'Whiskers', 'Cat', 'M'),
    (5, 'Max', 'Dog', 'L'),
    (6, 'Coco', 'Cat', 'S'),
    (7, 'Rocky', 'Dog', 'M'),
    (8, 'Luna', 'Cat', 'S'),
    (9, 'Bailey', 'Dog', 'L'),
    (10, 'Milo', 'Cat', 'M');
