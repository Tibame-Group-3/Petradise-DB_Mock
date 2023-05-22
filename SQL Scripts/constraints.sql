USE gp3;


/* PET */
ALTER TABLE pet ADD(
    CONSTRAINT FOREIGN KEY (mem_id) REFERENCES member (mem_id)
);

    
/* BONUS */
ALTER TABLE bonus ADD(
    CONSTRAINT FOREIGN KEY (mem_id)  REFERENCES member (mem_id)
);
