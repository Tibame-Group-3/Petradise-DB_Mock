package com.hotel.model;

public class room_type_VO implements java.io.Serializable {
	private Integer room_type_id;
	private Integer hotel_id;
	private String room_type_name;
	private Integer room_type_amount;
	private Character room_type_sale_status;
	private String room_type_about;
	private Integer room_type_price;

	public Integer getRoom_type_id() {
		return room_type_id;
	}

	public void setRoom_type_id(Integer room_type_id) {
		this.room_type_id = room_type_id;
	}

	public Integer getHotel_id() {
		return hotel_id;
	}

	public void setHotel_id(Integer hotel_id) {
		this.hotel_id = hotel_id;
	}

	public String getRoom_type_name() {
		return room_type_name;
	}

	public void setRoom_type_name(String room_type_name) {
		this.room_type_name = room_type_name;
	}

	public Integer getRoom_type_amount() {
		return room_type_amount;
	}

	public void setRoom_type_amount(Integer room_type_amount) {
		this.room_type_amount = room_type_amount;
	}

	public Character getRoom_type_sale_status() {
		return room_type_sale_status;
	}

	public void setRoom_type_sale_status(Character room_type_sale_status) {
		this.room_type_sale_status = room_type_sale_status;
	}

	public String getRoom_type_about() {
		return room_type_about;
	}

	public void setRoom_type_about(String room_type_about) {
		this.room_type_about = room_type_about;
	}

	public Integer getRoom_type_price() {
		return room_type_price;
	}

	public void setRoom_type_price(Integer room_type_price) {
		this.room_type_price = room_type_price;
	}

}
