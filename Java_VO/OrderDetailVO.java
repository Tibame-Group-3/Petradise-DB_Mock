package com.product.model;

public class OrderDetailVO implements java.io.Serializable{
	private Integer odId;
	private Integer pdId;
	private Integer saleProId;
	private Integer pdAmount;
	private Character rankStatus;
	
	public Integer getOdId() {
		return odId;
	}
	public void setOdId(Integer odId) {
		this.odId = odId;
	}
	public Integer getPdId() {
		return pdId;
	}
	public void setPdId(Integer pdId) {
		this.pdId = pdId;
	}
	public Integer getSaleProId() {
		return saleProId;
	}
	public void setSaleProId(Integer saleProId) {
		this.saleProId = saleProId;
	}
	public Integer getPdAmount() {
		return pdAmount;
	}
	public void setPdAmount(Integer pdAmount) {
		this.pdAmount = pdAmount;
	}
	public Character getRankStatus() {
		return rankStatus;
	}
	public void setRankStatus(Character rankStatus) {
		this.rankStatus = rankStatus;
	}
	public OrderDetailVO(Integer odId, Integer pdId, Integer saleProId, Integer pdAmount, Character rankStatus) {
		super();
		this.odId = odId;
		this.pdId = pdId;
		this.saleProId = saleProId;
		this.pdAmount = pdAmount;
		this.rankStatus = rankStatus;
	}
	
}
