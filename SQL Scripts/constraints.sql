

ALTER TABLE member ADD 
	CONSTRAINT PRIMARY KEY (mem_id);
    
ALTER TABLE pet ADD(
	CONSTRAINT PRIMARY KEY (pet_id),
    CONSTRAINT FOREIGN KEY (mem_id) REFERENCES member (mem_id));
    

    
	