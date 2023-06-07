create table room_review(
	room_review_id int primary key not null AUTO_INCREMENT,
    hotel_id int not null,
	room_order_id int not null,
	room_review_score int not null,
	room_review_content varchar(200)
);

INSERT INTO room_review (hotel_id, room_order_id, room_review_score, room_review_content) VALUES
(1, 1, 4, 'The room was clean and comfortable.'),
(1, 2, 5, 'Excellent room and great service.'),
(2, 3, 3, 'Average room, but the staff was friendly.'),
(2, 4, 2, 'The room was not up to expectations.'),
(3, 5, 4, 'Good room with nice amenities.'),
(3, 6, 5, 'Amazing room and fantastic view.'),
(4, 7, 4, 'Comfortable room and helpful staff.'),
(4, 8, 3, 'The room was noisy and needs improvement.'),
(5, 9, 5, 'Spacious room with modern decor.'),
(5, 10, 4, 'Enjoyed my stay in this room.');
