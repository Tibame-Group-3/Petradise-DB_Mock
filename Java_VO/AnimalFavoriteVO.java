package animal.model;

public class AnimalFavoriteVO implements java.io.Serializable{
	
	private Integer fav_id;
	private Integer animal_id;
	private Integer mem_id;
	
	public Integer getFav_id() {
		return fav_id;
	}
	public void setFav_id(Integer fav_id) {
		this.fav_id = fav_id;
	}
	public Integer getAnimal_id() {
		return animal_id;
	}
	public void setAnimal_id(Integer animal_id) {
		this.animal_id = animal_id;
	}
	public Integer getMem_id() {
		return mem_id;
	}
	public void setMem_id(Integer mem_id) {
		this.mem_id = mem_id;
	}
	
}
