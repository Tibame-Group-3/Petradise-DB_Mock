package com.product.model;

public class ProductImgVO implements java.io.Serializable{
	
	private Integer pdImgId;
	private Integer pdId;
	private byte[] pdImg;
	
	public Integer getPdImgId() {
		return pdImgId;
	}
	
	public void setPdImgId(Integer pdImgId) {
		this.pdImgId = pdImgId;
	}
	
	public Integer getPdId() {
		return pdId;
	}
	
	public void setPdId(Integer pdId) {
		this.pdId = pdId;
	}
	
	public byte[] getPdImg() {
		return pdImg;
	}
	
	public void setPdImg(byte[] pdImg) {
		this.pdImg = pdImg;
	}
	
	public ProductImgVO(Integer pdImgId, Integer pdId, byte[] pdImg) {
		super();
		this.pdImgId = pdImgId;
		this.pdId = pdId;
		this.pdImg = pdImg;
	}
	
}
