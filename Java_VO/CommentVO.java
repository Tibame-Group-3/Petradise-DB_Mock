package com.product.model;

import java.sql.Date;

public class CommentVO implements java.io.Serializable{
	private Integer comId;
	private Integer pdId;
	private Integer memId;
	private Date comDate;
	private String comContent;
	private Integer comRank;
	public Integer getComId() {
		return comId;
	}
	public void setComId(Integer comId) {
		this.comId = comId;
	}
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
	public Date getComDate() {
		return comDate;
	}
	public void setComDate(Date comDate) {
		this.comDate = comDate;
	}
	public String getComContent() {
		return comContent;
	}
	public void setComContent(String comContent) {
		this.comContent = comContent;
	}
	public Integer getComRank() {
		return comRank;
	}
	public void setComRank(Integer comRank) {
		this.comRank = comRank;
	}
	public CommentVO(Integer comId, Integer pdId, Integer memId, Date comDate, String comContent, Integer comRank) {
		super();
		this.comId = comId;
		this.pdId = pdId;
		this.memId = memId;
		this.comDate = comDate;
		this.comContent = comContent;
		this.comRank = comRank;
	}
	
}
