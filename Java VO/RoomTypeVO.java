package com.hotel.model;

public class RoomTypeVO implements java.io.Serializable {
	private Integer roomTypeId;
	private Integer hotelId;
	private String roomTypeName;
	private Integer roomTypeAmount;
	private Character roomTypeSaleStatus;
	private String roomTypeAbout;
	private Integer roomTypePrice;

	public Integer getRoomTypeId() {
		return roomTypeId;
	}

	public void setRoomTypeId(Integer roomTypeId) {
		this.roomTypeId = roomTypeId;
	}

	public Integer getHotelId() {
		return hotelId;
	}

	public void setHotelId(Integer hotelId) {
		this.hotelId = hotelId;
	}

	public String getRoomTypeName() {
		return roomTypeName;
	}

	public void setRoomTypeName(String roomTypeName) {
		this.roomTypeName = roomTypeName;
	}

	public Integer getRoomTypeAmount() {
		return roomTypeAmount;
	}

	public void setRoomTypeAmount(Integer roomTypeAmount) {
		this.roomTypeAmount = roomTypeAmount;
	}

	public Character getRoomTypeSaleStatus() {
		return roomTypeSaleStatus;
	}

	public void setRoomTypeSaleStatus(Character roomTypeSaleStatus) {
		this.roomTypeSaleStatus = roomTypeSaleStatus;
	}

	public String getRoomTypeAbout() {
		return roomTypeAbout;
	}

	public void setRoomTypeAbout(String roomTypeAbout) {
		this.roomTypeAbout = roomTypeAbout;
	}

	public Integer getRoomTypePrice() {
		return roomTypePrice;
	}

	public void setRoomTypePrice(Integer roomTypePrice) {
		this.roomTypePrice = roomTypePrice;
	}

}
