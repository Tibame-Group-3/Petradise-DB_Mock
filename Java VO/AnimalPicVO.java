package com.emp.model;

public class AnimalPicVO implements java.io.Serializable {

	private Integer pic_id;
	private Integer animal_id;
	private  byte[] animal_pic;

	public Integer getPic_id() {
		return pic_id;
	}
	public void setPic_id(Integer pic_id) {
		this.pic_id = pic_id;
	}
	public Integer getAnimal_id() {
		return animal_id;
	}
	public void setAnimal_id(Integer animal_id) {
		this.animal_id = animal_id;
	}
	public byte[] getAnimal_pic() {
		return animal_pic;
	}
	public void setAnimal_pic(byte[] animal_pic) {
		this.animal_pic = animal_pic;
	}
	
	
}
