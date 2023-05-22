package com.emp.model;
import java.sql.Date;
public class HotelOwnerVO  implements java.io.Serializable{

	private Integer hotelId;
	private String hotelName;
	private String hotelAddress;
	private String hotelStatus;
	private byte[] hotelLic;
	private String ownerAccount;
	private String ownerPassword;
	private String ownerName;
	private String ownerId;
	private String ownerBank;
	private String ownerPhone;
	private String ownerEmail;
	private String ownerAccess;
	private Integer review_score_people;
	private Integer review_score_total;
	
	
	
	
	
	public HotelOwnerVO(Integer hotelId, String hotelName, String hotelAddress, String hotelStatus, byte[] hotelLic,
			String ownerAccount, String ownerPassword, String ownerName, String ownerId, String ownerBank,
			String ownerPhone, String ownerEmail, String ownerAccess, Integer review_score_people,
			Integer review_score_total) {
		super();
		this.hotelId = hotelId;
		this.hotelName = hotelName;
		this.hotelAddress = hotelAddress;
		this.hotelStatus = hotelStatus;
		this.hotelLic = hotelLic;
		this.ownerAccount = ownerAccount;
		this.ownerPassword = ownerPassword;
		this.ownerName = ownerName;
		this.ownerId = ownerId;
		this.ownerBank = ownerBank;
		this.ownerPhone = ownerPhone;
		this.ownerEmail = ownerEmail;
		this.ownerAccess = ownerAccess;
		this.review_score_people = review_score_people;
		this.review_score_total = review_score_total;
	}
	
	
	public Integer getReview_score_people() {
		return review_score_people;
	}
	public void setReview_score_people(Integer review_score_people) {
		this.review_score_people = review_score_people;
	}
	public Integer getReview_score_total() {
		return review_score_total;
	}
	public void setReview_score_total(Integer review_score_total) {
		this.review_score_total = review_score_total;
	}
	public Integer getHotelId() {
		return hotelId;
	}
	public void setHotelId(Integer hotelId) {
		this.hotelId = hotelId;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getHotelAddress() {
		return hotelAddress;
	}
	public void setHotelAddress(String hotelAddress) {
		this.hotelAddress = hotelAddress;
	}
	public String getHotelStatus() {
		return hotelStatus;
	}
	public void setHotelStatus(String hotelStatus) {
		this.hotelStatus = hotelStatus;
	}
	public byte[] getHotelLic() {
		return hotelLic;
	}
	public void setHotelLic(byte[] hotelLic) {
		this.hotelLic = hotelLic;
	}
	public String getOwnerAccount() {
		return ownerAccount;
	}
	public void setOwnerAccount(String ownerAccount) {
		this.ownerAccount = ownerAccount;
	}
	public String getOwnerPassword() {
		return ownerPassword;
	}
	public void setOwnerPassword(String ownerPassword) {
		this.ownerPassword = ownerPassword;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	public String getOwnerBank() {
		return ownerBank;
	}
	public void setOwnerBank(String ownerBank) {
		this.ownerBank = ownerBank;
	}
	public String getOwnerPhone() {
		return ownerPhone;
	}
	public void setOwnerPhone(String ownerPhone) {
		this.ownerPhone = ownerPhone;
	}
	public String getOwnerEmail() {
		return ownerEmail;
	}
	public void setOwnerEmail(String ownerEmail) {
		this.ownerEmail = ownerEmail;
	}
	public String getOwnerAccess() {
		return ownerAccess;
	}
	public void setOwnerAccess(String ownerAccess) {
		this.ownerAccess = ownerAccess;
	}
	
	
}
	
