package lost.model;

import java.io.Serializable;
import java.sql.Date;

public class LostPetResponceVO implements Serializable{
	private Integer responce_id;
	private Integer mem_id;
	private Integer article_id;
	private String responce_content;
	private Date responce_time;
	
	public Integer getResponce_id() {
		return responce_id;
	}
	public void setResponce_id(Integer responce_id) {
		this.responce_id = responce_id;
	}
	public Integer getMem_id() {
		return mem_id;
	}
	public void setMem_id(Integer mem_id) {
		this.mem_id = mem_id;
	}
	public Integer getArticle_id() {
		return article_id;
	}
	public void setArticle_id(Integer article_id) {
		this.article_id = article_id;
	}
	public String getResponce_content() {
		return responce_content;
	}
	public void setResponce_content(String responce_content) {
		this.responce_content = responce_content;
	}
	public Date getResponce_time() {
		return responce_time;
	}
	public void setResponce_time(Date responce_time) {
		this.responce_time = responce_time;
	}
}
