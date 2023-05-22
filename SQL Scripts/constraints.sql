USE gp3;

/* MEMBER */
ALTER TABLE member ADD 
	CONSTRAINT PRIMARY KEY (mem_id);
ALTER TABLE member MODIFY mem_id INT AUTO_INCREMENT;


/* PET */
ALTER TABLE pet ADD(
	CONSTRAINT PRIMARY KEY (pet_id),
    CONSTRAINT FOREIGN KEY (mem_id) REFERENCES member (mem_id)
);
ALTER TABLE pet MODIFY pet_id INT auto_increment;

    
/* BONUS */
ALTER TABLE bonus ADD(
	CONSTRAINT PRIMARY KEY(bonus_id, mem_id),
    CONSTRAINT FOREIGN KEY (mem_id)  REFERENCES member (mem_id)
);
ALTER TABLE bonus MODIFY bonus_id INT auto_increment;



	