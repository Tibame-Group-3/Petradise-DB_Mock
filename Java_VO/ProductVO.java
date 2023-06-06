package com.product.model;

import java.sql.Date;

public class ProductVO implements java.io.Serializable{
	
	private Integer pdId;
	private String pdType;
	private String pdPetType;
	private String pdName;
	private Integer pdPrice;
	private String pdSpe;
	private String pdInfo;
	private Character pdStatus;
	private Date pdDate;
	private Double pdRank;
	
	public Integer getPdId() {
		return pdId;
	}
	
	public void setPdId(Integer pdId) {
		this.pdId = pdId;
	}
	
	public String getPdType() {
		return pdType;
	}
	
	public void setPdType(String pdType) {
		this.pdType = pdType;
	}
	
	public String getPdPetType() {
		return pdPetType;
	}
	
	public void setPdPetType(String pdPetType) {
		this.pdPetType = pdPetType;
	}
	
	public String getPdName() {
		return pdName;
	}
	
	public void setPdName(String pdName) {
		this.pdName = pdName;
	}
	
	public Integer getPdPrice() {
		return pdPrice;
	}
	
	public void setPdPrice(Integer pdPrice) {
		this.pdPrice = pdPrice;
	}
	
	public String getPdSpe() {
		return pdSpe;
	}
	
	public void setPdSpe(String pdSpe) {
		this.pdSpe = pdSpe;
	}
	
	public String getPdInfo() {
		return pdInfo;
	}
	
	public void setPdInfo(String pdInfo) {
		this.pdInfo = pdInfo;
	}
	
	public Character getPdStatus() {
		return pdStatus;
	}
	
	public void setPdStatus(Character pdStatus) {
		this.pdStatus = pdStatus;
	}
	
	public Date getPdDate() {
		return pdDate;
	}
	
	public void setPdDate(Date pdDate) {
		this.pdDate = pdDate;
	}
	
	public Double getPdRank() {
		return pdRank;
	}
	
	public void setPdRank(Double pdRank) {
		this.pdRank = pdRank;
	}

	public ProductVO(Integer pdId, String pdType, String pdPetType, String pdName, Integer pdPrice, String pdSpe,
			String pdInfo, Character pdStatus, Date pdDate, Double pdRank) {
		super();
		this.pdId = pdId;
		this.pdType = pdType;
		this.pdPetType = pdPetType;
		this.pdName = pdName;
		this.pdPrice = pdPrice;
		this.pdSpe = pdSpe;
		this.pdInfo = pdInfo;
		this.pdStatus = pdStatus;
		this.pdDate = pdDate;
		this.pdRank = pdRank;
	}

}
