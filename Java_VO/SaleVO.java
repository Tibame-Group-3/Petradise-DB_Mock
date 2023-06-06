package com.product.model;

public class SaleVO implements java.io.Serializable{
	private Integer odId;
	private Integer saleProId;
	private Integer salePrice;
	
	public Integer getOdId() {
		return odId;
	}
	public void setOdId(Integer odId) {
		this.odId = odId;
	}
	public Integer getSaleProId() {
		return saleProId;
	}
	public void setSaleProId(Integer saleProId) {
		this.saleProId = saleProId;
	}
	public Integer getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(Integer salePrice) {
		this.salePrice = salePrice;
	}
	public SaleVO(Integer odId, Integer saleProId, Integer salePrice) {
		super();
		this.odId = odId;
		this.saleProId = saleProId;
		this.salePrice = salePrice;
	}
	
}
