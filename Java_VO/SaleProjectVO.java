package com.product.model;

import java.sql.Date;

public class SaleProjectVO implements java.io.Serializable{
	private Integer saleProId;
	private String saleProName;
	private Date saleProStart;
	private Date saleProEnd;
	
	public Integer getSaleProId() {
		return saleProId;
	}
	public void setSaleProId(Integer saleProId) {
		this.saleProId = saleProId;
	}
	public String getSaleProName() {
		return saleProName;
	}
	public void setSaleProName(String saleProName) {
		this.saleProName = saleProName;
	}
	public Date getSaleProStart() {
		return saleProStart;
	}
	public void setSaleProStart(Date saleProStart) {
		this.saleProStart = saleProStart;
	}
	public Date getSaleProEnd() {
		return saleProEnd;
	}
	public void setSaleProEnd(Date saleProEnd) {
		this.saleProEnd = saleProEnd;
	}
	public SaleProjectVO(Integer saleProId, String saleProName, Date saleProStart, Date saleProEnd) {
		super();
		this.saleProId = saleProId;
		this.saleProName = saleProName;
		this.saleProStart = saleProStart;
		this.saleProEnd = saleProEnd;
	}
	
}
