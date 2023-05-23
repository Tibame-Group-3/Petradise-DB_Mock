package com.hotel.model;

public class FavListVO implements java.io.Serializable {
	private Integer favListId;
	private Integer memId;
	private Integer roomTypeId;
	public Integer getFavListId() {
		return favListId;
	}
	public void setFavListId(Integer favListId) {
		this.favListId = favListId;
	}
	public Integer getMemId() {
		return memId;
	}
	public void setMemId(Integer memId) {
		this.memId = memId;
	}
	public Integer getRoomTypeId() {
		return roomTypeId;
	}
	public void setRoomTypeId(Integer roomTypeId) {
		this.roomTypeId = roomTypeId;
	}

	

}
