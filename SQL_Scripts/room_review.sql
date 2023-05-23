create table room_review(
	room_review_id int primary key not null,
    hotel_id int not null,
	room_order_id int not null,
	room_review_score int not null,
	room_review_content varchar(200)
);