package lost.model;

import java.io.Serializable;
import java.sql.Date;

public class LostPetArticleVO implements Serializable{
	private Integer article_id;
	private Integer mem_id;
	private Date article_update;
	private Date lost_date;
	private String lost_place;
	private String chip_num;
	private String species;
	private String color;
	private String feature;
	private String text;
	private String contact_phone;
	private String article_status;
	
	public Integer getArticle_id() {
		return article_id;
	}
	public void setArticle_id(Integer article_id) {
		this.article_id = article_id;
	}
	public Integer getMem_id() {
		return mem_id;
	}
	public void setMem_id(Integer mem_id) {
		this.mem_id = mem_id;
	}
	public Date getArticle_update() {
		return article_update;
	}
	public void setArticle_update(Date article_update) {
		this.article_update = article_update;
	}
	public Date getLost_date() {
		return lost_date;
	}
	public void setLost_date(Date lost_date) {
		this.lost_date = lost_date;
	}
	public String getLost_place() {
		return lost_place;
	}
	public void setLost_place(String lost_place) {
		this.lost_place = lost_place;
	}
	public String getChip_num() {
		return chip_num;
	}
	public void setChip_num(String chip_num) {
		this.chip_num = chip_num;
	}
	public String getSpecies() {
		return species;
	}
	public void setSpecies(String species) {
		this.species = species;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getFeature() {
		return feature;
	}
	public void setFeature(String feature) {
		this.feature = feature;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getContact_phone() {
		return contact_phone;
	}
	public void setContact_phone(String contact_phone) {
		this.contact_phone = contact_phone;
	}
	public String getArticle_status() {
		return article_status;
	}
	public void setArticle_status(String article_status) {
		this.article_status = article_status;
	}
}
