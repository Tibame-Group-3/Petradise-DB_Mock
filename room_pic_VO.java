package com.hotel.model;

public class room_pic_VO implements java.io.Serializable {
	private Integer room_pic_id;
	private Integer room_type_id;
	private Byte[] room_pic;

	public Integer getRoom_pic_id() {
		return room_pic_id;
	}

	public void setRoom_pic_id(Integer room_pic_id) {
		this.room_pic_id = room_pic_id;
	}

	public Integer getRoom_type_id() {
		return room_type_id;
	}

	public void setRoom_type_id(Integer room_type_id) {
		this.room_type_id = room_type_id;
	}

	public Byte[] getRoom_pic() {
		return room_pic;
	}

	public void setRoom_pic(Byte[] room_pic) {
		this.room_pic = room_pic;
	}

}
