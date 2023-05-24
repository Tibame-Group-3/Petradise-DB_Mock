
/* PET */
ALTER TABLE pet ADD(
    CONSTRAINT fk_pet_member FOREIGN KEY (mem_id) REFERENCES member (mem_id)
);

    
/* BONUS */
ALTER TABLE bonus ADD(
    CONSTRAINT fk_bonus_member FOREIGN KEY (mem_id)  REFERENCES member (mem_id)
);


/* administrator_access */
alter table administrator_access add(
	constraint fk_admin_id foreign key(admin_id) references administrator(admin_id),
    constraint fk_function_id foreign key(function_id) references access_function(function_id)
);

/* room_order */
alter table room_order add(
	constraint fk_mem_id foreign key(mem_id) references member(mem_id),
	constraint fk_room_type_id foreign key(room_type_id) references room_type(room_type_id),
    constraint fk_room_id foreign key(room_id) references room(room_id),
	constraint fk_pet_id foreign key(pet_id) references pet(pet_id)
);

-- fav_list--
ALTER TABLE fav_list ADD(
    CONSTRAINT fk_fav_list_member FOREIGN KEY (mem_id) REFERENCES member (mem_id),
    CONSTRAINT fk_fav_list_room_type FOREIGN KEY (room_type_id) REFERENCES room_type (room_type_id)
);
-- room_type--
ALTER TABLE room_type ADD(
  
    CONSTRAINT fk_room_type_hotel_owner FOREIGN KEY (hotel_id) REFERENCES hotel_owner (hotel_id)
);
-- room--
ALTER TABLE room ADD(
  CONSTRAINT fk_room_room_type FOREIGN KEY (room_type_id) REFERENCES room_type (room_type_id),
  CONSTRAINT fk_room_pet FOREIGN KEY (pet_id) REFERENCES pet (pet_id)
);

-- room_pic--
ALTER TABLE room ADD(
    CONSTRAINT fk_room_pic_room_type FOREIGN KEY (room_type_id) REFERENCES room_type (room_type_id)
);

/* comment */
alter table `comment` add (
	constraint `fk_sale_product_product` foreign key (`pd_id`) references `product` (`pd_id`),
    constraint `fk_sale_product_member` foreign key (`mem_id`) references `member` (`mem_id`)
);

/* favorite */
alter table `favorite` add (
	constraint `fk_favorite_product` foreign key (`pd_id`) references `product` (`pd_id`),
    constraint `fk_favorite_member` foreign key (`mem_id`) references `member` (`mem_id`)
);

/* order_detail */
alter table `order_detail` add ( 
	constraint `fk_oder_detail_order_master` foreign key (`od_id`) references `order_master` (`od_id`),
    constraint `fk_oder_detail_product` foreign key (`pd_id`) references `product` (`pd_id`),
    constraint `fk_oder_detail_sale_project` foreign key (`sale_pro_id`) references `sale_project` (`sale_pro_id`)
);

/* order_master */
alter table `order_master` add (
	constraint `fk_order_master_member` foreign key (`mem_id`) references `member` (`mem_id`)
);

/* product_img */
alter table `product_img` add (
	constraint `fk_product_img_product` foreign key (`pd_id`) references `product` (`pd_id`)
);

/* sale */
alter table `sale` add (
	constraint `fk_sale_product` foreign key (`pd_id`) references `product` (`pd_id`),
    constraint `fk_sale_sale_project` foreign key (`sale_pro_id`) references `sale_project` (`sale_pro_id`)
);

/* status_date */
alter table `status_date` add (
	constraint `fk_status_date_order_master` foreign key (`od_id`) references `order_master` (`od_id`)
);

