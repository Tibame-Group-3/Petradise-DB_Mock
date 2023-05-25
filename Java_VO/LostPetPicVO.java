package lost.model;

import java.io.Serializable;

public class LostPetPicVO implements Serializable{
	
	private Integer lost_pet_pic_id;
	private Integer article_id;
	private byte[] lost_pet_pic;
	
	
	
	public Integer getLost_pet_pic_id() {
		return lost_pet_pic_id;
	}
	public void setLost_pet_pic_id(Integer lost_pet_pic_id) {
		this.lost_pet_pic_id = lost_pet_pic_id;
	}
	public Integer getArticle_id() {
		return article_id;
	}
	public void setArticle_id(Integer article_id) {
		this.article_id = article_id;
	}
	public byte[] getLost_pet_pic() {
		return lost_pet_pic;
	}
	public void setLost_pet_pic(byte[] lost_pet_pic) {
		this.lost_pet_pic = lost_pet_pic;
	}

}
