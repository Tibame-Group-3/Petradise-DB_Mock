
public class PetVO {

	private Integer petID;
	private Integer memID;
	private String petName;
	private String petType;
	private Character petSize;
	private Character petStatus;

	public PetVO(Integer petID, Integer memID, String petName, String petType, Character petSize, Character petStatus) {
		super();
		this.petID = petID;
		this.memID = memID;
		this.petName = petName;
		this.petType = petType;
		this.petSize = petSize;
		this.petStatus = petStatus;
	}

	public Integer getPetID() {
		return petID;
	}

	public void setPetID(Integer petID) {
		this.petID = petID;
	}

	public Integer getMemID() {
		return memID;
	}

	public void setMemID(Integer memID) {
		this.memID = memID;
	}

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public String getPetType() {
		return petType;
	}

	public void setPetType(String petType) {
		this.petType = petType;
	}

	public Character getPetSize() {
		return petSize;
	}

	public void setPetSize(Character petSize) {
		this.petSize = petSize;
	}

	public Character getPetStatus() {
		return petStatus;
	}

	public void setPetStatus(Character petStatus) {
		this.petStatus = petStatus;
	}
}
