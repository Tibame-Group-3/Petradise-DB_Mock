package com.hotel.model;

public class room_VO implements java.io.Serializable {
	private Integer room_id;
	private Integer room_type_id;
	private Integer pet_id;
	private String room_name;
	private Character room_sale_status;
	private Character room_status;
	private String room_pet_type;

	public Integer getRoom_id() {
		return room_id;
	}

	public void setRoom_id(Integer room_id) {
		this.room_id = room_id;
	}

	public Integer getRoom_type_id() {
		return room_type_id;
	}

	public void setRoom_type_id(Integer room_type_id) {
		this.room_type_id = room_type_id;
	}

	public Integer getPet_id() {
		return pet_id;
	}

	public void setPet_id(Integer pet_id) {
		this.pet_id = pet_id;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public Character getRoom_sale_status() {
		return room_sale_status;
	}

	public void setRoom_sale_status(Character room_sale_status) {
		this.room_sale_status = room_sale_status;
	}

	public Character getRoom_status() {
		return room_status;
	}

	public void setRoom_status(Character room_status) {
		this.room_status = room_status;
	}

	public String getRoom_pet_type() {
		return room_pet_type;
	}

	public void setRoom_pet_type(String room_pet_type) {
		this.room_pet_type = room_pet_type;
	}

}
