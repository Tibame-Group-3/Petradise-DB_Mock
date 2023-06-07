package com.news.model;

import java.sql.Date;

public class NewsListVO implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	
	private Integer newsId;
	private Integer adminId;
	private String newsTitle;
	private String newsContent;
	private Date newsDate;
	private byte[] newsPhoto;

	public Integer getNewsId() {
		return newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public Integer getAdminId() {
		return adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getNewsContent() {
		return newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

	public Date getNewsDate() {
		return newsDate;
	}

	public void setNewsDate(Date newsDate) {
		this.newsDate = newsDate;
	}

	public byte[] getNewsPhoto() {
		return newsPhoto;
	}

	public void setNewsPhoto(byte[] newsPhoto) {
		this.newsPhoto = newsPhoto;
	}

//	public NewsListVO(Integer newsId, Integer adminId, String newsTitle, String newsContent, Date newsDate,
//			byte[] newsPhoto) {
//		super();
//		this.newsId = newsId;
//		this.adminId = adminId;
//		this.newsTitle = newsTitle;
//		this.newsContent = newsContent;
//		this.newsDate = newsDate;
//		this.newsPhoto = newsPhoto;
//	}

}
