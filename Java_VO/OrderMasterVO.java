package com.product.model;

import java.sql.Date;

public class OrderMasterVO implements java.io.Serializable{
	private Integer odId;
	private Integer memId;
	private Integer priceOri;
	private Integer priceDis;
	private Integer priceBonus;
	private Integer priceShip;
	private Integer priceOd;
	private Character odStatus;
	private Character odPay;
	private Character odShip;
	private String odNote;
	private String odTrace;
	private String reciName;
	private String reciPhone;
	private String reciAdd;
	private String reciStore;
	private Date reciDate;
	
	public Integer getOdId() {
		return odId;
	}
	public void setOdId(Integer odId) {
		this.odId = odId;
	}
	public Integer getMemId() {
		return memId;
	}
	public void setMemId(Integer memId) {
		this.memId = memId;
	}
	public Integer getPriceOri() {
		return priceOri;
	}
	public void setPriceOri(Integer priceOri) {
		this.priceOri = priceOri;
	}
	public Integer getPriceDis() {
		return priceDis;
	}
	public void setPriceDis(Integer priceDis) {
		this.priceDis = priceDis;
	}
	public Integer getPriceBonus() {
		return priceBonus;
	}
	public void setPriceBonus(Integer priceBonus) {
		this.priceBonus = priceBonus;
	}
	public Integer getPriceShip() {
		return priceShip;
	}
	public void setPriceShip(Integer priceShip) {
		this.priceShip = priceShip;
	}
	public Integer getPriceOd() {
		return priceOd;
	}
	public void setPriceOd(Integer priceOd) {
		this.priceOd = priceOd;
	}
	public Character getOdStatus() {
		return odStatus;
	}
	public void setOdStatus(Character odStatus) {
		this.odStatus = odStatus;
	}
	public Character getOdPay() {
		return odPay;
	}
	public void setOdPay(Character odPay) {
		this.odPay = odPay;
	}
	public Character getOdShip() {
		return odShip;
	}
	public void setOdShip(Character odShip) {
		this.odShip = odShip;
	}
	public String getOdNote() {
		return odNote;
	}
	public void setOdNote(String odNote) {
		this.odNote = odNote;
	}
	public String getOdTrace() {
		return odTrace;
	}
	public void setOdTrace(String odTrace) {
		this.odTrace = odTrace;
	}
	public String getReciName() {
		return reciName;
	}
	public void setReciName(String reciName) {
		this.reciName = reciName;
	}
	public String getReciPhone() {
		return reciPhone;
	}
	public void setReciPhone(String reciPhone) {
		this.reciPhone = reciPhone;
	}
	public String getReciAdd() {
		return reciAdd;
	}
	public void setReciAdd(String reciAdd) {
		this.reciAdd = reciAdd;
	}
	public String getReciStore() {
		return reciStore;
	}
	public void setReciStore(String reciStore) {
		this.reciStore = reciStore;
	}
	public Date getReciDate() {
		return reciDate;
	}
	public void setReciDate(Date reciDate) {
		this.reciDate = reciDate;
	}
	public OrderMasterVO(Integer odId, Integer memId, Integer priceOri, Integer priceDis, Integer priceBonus,
			Integer priceShip, Integer priceOd, Character odStatus, Character odPay, Character odShip, String odNote,
			String odTrace, String reciName, String reciPhone, String reciAdd, String reciStore, Date reciDate) {
		super();
		this.odId = odId;
		this.memId = memId;
		this.priceOri = priceOri;
		this.priceDis = priceDis;
		this.priceBonus = priceBonus;
		this.priceShip = priceShip;
		this.priceOd = priceOd;
		this.odStatus = odStatus;
		this.odPay = odPay;
		this.odShip = odShip;
		this.odNote = odNote;
		this.odTrace = odTrace;
		this.reciName = reciName;
		this.reciPhone = reciPhone;
		this.reciAdd = reciAdd;
		this.reciStore = reciStore;
		this.reciDate = reciDate;
	}
	
	
}
