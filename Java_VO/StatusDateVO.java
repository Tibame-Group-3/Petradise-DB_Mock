package com.product.model;

import java.sql.Date;

public class StatusDateVO implements java.io.Serializable{
	private Integer odId;
	private Character odStatus;
	private Date odDate;
	
	public Integer getOdId() {
		return odId;
	}
	public void setOdId(Integer odId) {
		this.odId = odId;
	}
	public Character getOdStatus() {
		return odStatus;
	}
	public void setOdStatus(Character odStatus) {
		this.odStatus = odStatus;
	}
	public Date getOdDate() {
		return odDate;
	}
	public void setOdDate(Date odDate) {
		this.odDate = odDate;
	}
	public StatusDateVO(Integer odId, Character odStatus, Date odDate) {
		super();
		this.odId = odId;
		this.odStatus = odStatus;
		this.odDate = odDate;
	}
	
}
