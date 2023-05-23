package newVO;

public class RoomReviewVO implements java.io.Serializable {
	private Integer room_review_id;
	private Integer hotel_id;
	private Integer room_order_id;
	private Integer room_review_score;
	private String room_review_content;

	public RoomReviewVO(Integer room_review_id, Integer hotel_id, Integer room_order_id, Integer room_review_score,
			String room_review_content) {
		super();
		this.room_review_id = room_review_id;
		this.hotel_id = hotel_id;
		this.room_order_id = room_order_id;
		this.room_review_score = room_review_score;
		this.room_review_content = room_review_content;
	}

	public Integer getRoom_review_id() {
		return room_review_id;
	}

	public void setRoom_review_id(Integer room_review_id) {
		this.room_review_id = room_review_id;
	}

	public Integer getHotel_id() {
		return hotel_id;
	}

	public void setHotel_id(Integer hotel_id) {
		this.hotel_id = hotel_id;
	}

	public Integer getRoom_order_id() {
		return room_order_id;
	}

	public void setRoom_order_id(Integer room_order_id) {
		this.room_order_id = room_order_id;
	}

	public Integer getRoom_review_score() {
		return room_review_score;
	}

	public void setRoom_review_score(Integer room_review_score) {
		this.room_review_score = room_review_score;
	}

	public String getRoom_review_content() {
		return room_review_content;
	}

	public void setRoom_review_content(String room_review_content) {
		this.room_review_content = room_review_content;
	}

}
