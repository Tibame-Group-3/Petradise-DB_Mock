use gp3;

/* product_img */
alter table product_img add(
    constraint fk_product_productimg 
    foreign key (pd_id) references product (pd_id)
);

/* order_master */
alter table order_master add(
    constraint fk_member_ordermaster 
    foreign key (mem_id) references `member` (mem_id)
);

/* status_date */
alter table status_date add(
    constraint fk_ordermaster_statusdate 
    foreign key (od_id) references order_master (od_id)
);

/* order_detail */
alter table order_detail add(
    constraint fk_ordermaster_orderdetail
	foreign key (od_id) references order_master (od_id),
	constraint fk_product_orderdetail
	foreign key (pd_id) references product (pd_id),
    constraint fk_saleproject_orderdetail
	foreign key (sale_pro_id) references sale_project (sale_pro_id)
);

/* sale */
alter table sale add(
	constraint fk_product_sale
	foreign key (pd_id) references product (pd_id),
    constraint fk_saleproject_sale
	foreign key (sale_pro_id) references sale_project (sale_pro_id)
);

/* `comment` */
alter table `comment` add(
	constraint fk_product_comment
	foreign key (pd_id) references product (pd_id),
    constraint fk_member_comment
	foreign key (mem_id) references `member` (mem_id)
);

/* favorite */
alter table favorite add(
	constraint fk_product_favorite
	foreign key (pd_id) references product (pd_id),
	constraint fk_member_favorite
	foreign key (mem_id) references `member` (mem_id)
);

/* news_list */
alter table news_list add(
	constraint fk_administrator_newslist
	foreign key (admin_id) references administrator (admin_id)
);
