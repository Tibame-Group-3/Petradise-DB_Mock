package com.hotel.model;

public class fav_list_VO implements java.io.Serializable {
	private Integer fav_list_id;
	private Integer mem_id;
	private Integer room_type_id;

	public Integer getFav_list_id() {
		return fav_list_id;
	}

	public void setFav_list_id(Integer fav_list_id) {
		this.fav_list_id = fav_list_id;
	}

	public Integer getMem_id() {
		return mem_id;
	}

	public void setMem_id(Integer mem_id) {
		this.mem_id = mem_id;
	}

	public Integer getRoom_type_id() {
		return room_type_id;
	}

	public void setRoom_type_id(Integer room_type_id) {
		this.room_type_id = room_type_id;
	}

}
