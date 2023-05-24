
/* PET */
ALTER TABLE pet ADD(
    CONSTRAINT fk_pet_member FOREIGN KEY (mem_id) REFERENCES member (mem_id)
);

    
/* BONUS */
ALTER TABLE bonus ADD(
    CONSTRAINT fk_bonus_member FOREIGN KEY (mem_id)  REFERENCES member (mem_id)
);

/* animal */
alter table `animal` add (
	constraint `fk_animal_mem_id` foreign key (`mem_id`) references `member` (`mem_id`)
);

/* animal_pic */
alter table `animal_pic` add (
	constraint `fk_animal_pic_animal_id` foreign key (`animal_id`) references `animal` (`animal_id`)
);

/* promise_list */
alter table `promise_list` add (
	constraint `fk_promise_list_mem_id` foreign key (`mem_id`) references `member` (`member_id`),
    constraint `fk_promise_list_animal_id` foreign key (`animal_id`) references `animal` (`animal_id`)
);

/* adopted_application */
alter table `adopted_application` add (
	constraint `fk_adopted_application_mem_id` foreign key (`mem_id`) references `member` (`member_id`),
    constraint `fk_adopted_application_animal_id` foreign key (`animal_id`) references `animal` (`animal_id`)
);

/* animal_favorite */
alter table `animal_favorite` add (
	constraint `fk_animal_favorite_mem_id` foreign key (`mem_id`) references `member` (`member_id`),
    constraint `fk_animal_favorite_animal_id` foreign key (`animal_id`) references `animal` (`animal_id`)
);

/* lost_pet_article */
alter table `lost_pet_article` add (
	constraint `fk_lost_pet_article_mem_id` foreign key (`mem_id`) references `member` (`member_id`)
);

/* lost_pet_responce */
alter table `lost_pet_responce` add (
	constraint `fk_lost_pet_responce_mem_id` foreign key (`mem_id`) references `member` (`member_id`),
    constraint `fk_lost_pet_responce_article_id` foreign key (`article_id`) references `lost_pet_article` (`article_id`)
);

/* lost_pet_pic */
alter table `lost_pet_pic` add (
    constraint `fk_lost_pet_pic_article_id` foreign key (`article_id`) references `lost_pet_article` (`article_id`)
);