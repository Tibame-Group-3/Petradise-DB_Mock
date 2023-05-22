package newVO;

import java.sql.Date;

public class RoomOrderVO implements java.io.Serializable {
	private Integer room_order_id;
	private Integer mem_id;
	private Integer room_type_id;
	private Integer room_id;
	private Integer pet_id;
	private Date room_order_date;
	private Date check_in_date;
	private Date check_out_date;
	private String room_order_status;
	private Integer room_original_price;
	private Integer room_final_pirce;
	private Integer room_bonus;
	private String room_od_special_req;

	public Integer getRoom_order_id() {
		return room_order_id;
	}

	public void setRoom_order_id(Integer room_order_id) {
		this.room_order_id = room_order_id;
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

	public Integer getRoom_id() {
		return room_id;
	}

	public void setRoom_id(Integer room_id) {
		this.room_id = room_id;
	}

	public Integer getPet_id() {
		return pet_id;
	}

	public void setPet_id(Integer pet_id) {
		this.pet_id = pet_id;
	}

	public Date getRoom_order_date() {
		return room_order_date;
	}

	public void setRoom_order_date(Date room_order_date) {
		this.room_order_date = room_order_date;
	}

	public Date getCheck_in_date() {
		return check_in_date;
	}

	public void setCheck_in_date(Date check_in_date) {
		this.check_in_date = check_in_date;
	}

	public Date getCheck_out_date() {
		return check_out_date;
	}

	public void setCheck_out_date(Date check_out_date) {
		this.check_out_date = check_out_date;
	}

	public String getRoom_order_status() {
		return room_order_status;
	}

	public void setRoom_order_status(String room_order_status) {
		this.room_order_status = room_order_status;
	}

	public Integer getRoom_original_price() {
		return room_original_price;
	}

	public void setRoom_original_price(Integer room_original_price) {
		this.room_original_price = room_original_price;
	}

	public Integer getRoom_final_pirce() {
		return room_final_pirce;
	}

	public void setRoom_final_pirce(Integer room_final_pirce) {
		this.room_final_pirce = room_final_pirce;
	}

	public Integer getRoom_bonus() {
		return room_bonus;
	}

	public void setRoom_bonus(Integer room_bonus) {
		this.room_bonus = room_bonus;
	}

	public String getRoom_od_special_req() {
		return room_od_special_req;
	}

	public void setRoom_od_special_req(String room_od_special_req) {
		this.room_od_special_req = room_od_special_req;
	}
}
