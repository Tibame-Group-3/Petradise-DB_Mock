package com.product.model;

import java.sql.Date;

public class FavoriteVO implements java.io.Serializable{
	private Integer pdId;
	private Integer memId;
	private Date favDate;
	public Integer getPdId() {
		return pdId;
	}
	public void setPdId(Integer pdId) {
		this.pdId = pdId;
	}
	public Integer getMemId() {
		return memId;
	}
	public void setMemId(Integer memId) {
		this.memId = memId;
	}
	public Date getFavDate() {
		return favDate;
	}
	public void setFavDate(Date favDate) {
		this.favDate = favDate;
	}
	public FavoriteVO(Integer pdId, Integer memId, Date favDate) {
		super();
		this.pdId = pdId;
		this.memId = memId;
		this.favDate = favDate;
	}
	
}
