package com.hotel.model;

public class RoomPicVO implements java.io.Serializable {
	private Integer roomPicId;
	private Integer roomTypeId;
	private Byte[] roomPic;

	public Integer getRoomPicId() {
		return roomPicId;
	}

	public void setRoomPicId(Integer roomPicId) {
		this.roomPicId = roomPicId;
	}

	public Integer getRoomTypeId() {
		return roomTypeId;
	}

	public void setRoomTypeId(Integer roomTypeId) {
		this.roomTypeId = roomTypeId;
	}

	public Byte[] getRoomPic() {
		return roomPic;
	}

	public void setRoomPic(Byte[] roomPic) {
		this.roomPic = roomPic;
	}

}
