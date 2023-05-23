package com.hotel.model;

public class RoomVO implements java.io.Serializable {
	private Integer roomId;
	private Integer roomTypeId;
	private Integer petId;
	private String roomName;
	private Character roomSaleStatus;
	private Character roomStatus;
	private String roomPetType;

	public Integer getRoomId() {
		return roomId;
	}

	public void setRoomId(Integer roomId) {
		this.roomId = roomId;
	}

	public Integer getRoomTypeId() {
		return roomTypeId;
	}

	public void setRoomTypeId(Integer roomTypeId) {
		this.roomTypeId = roomTypeId;
	}

	public Integer getPetId() {
		return petId;
	}

	public void setPetId(Integer petId) {
		this.petId = petId;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public Character getRoomSaleStatus() {
		return roomSaleStatus;
	}

	public void setRoomSaleStatus(Character roomSaleStatus) {
		this.roomSaleStatus = roomSaleStatus;
	}

	public Character getRoomStatus() {
		return roomStatus;
	}

	public void setRoomStatus(Character roomStatus) {
		this.roomStatus = roomStatus;
	}

	public String getRoomPetType() {
		return roomPetType;
	}

	public void setRoomPetType(String roomPetType) {
		this.roomPetType = roomPetType;
	}

}
