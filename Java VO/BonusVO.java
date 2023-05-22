
public class BonusVO {
	private Integer bonusID;
	private Integer memID;
	private Integer bonus;
	private Integer bonusType;
	private Date bonusDate;
	private Character bonusStatus;
	private String bonusContent;

	public BonusVO(Integer bonusID, Integer memID, Integer bonus, Integer bonusType, Date bonusDate,
			Character bonusStatus, String bonusContent) {
		super();
		this.bonusID = bonusID;
		this.memID = memID;
		this.bonus = bonus;
		this.bonusType = bonusType;
		this.bonusDate = bonusDate;
		this.bonusStatus = bonusStatus;
		this.bonusContent = bonusContent;
	}

	public Integer getBonusID() {
		return bonusID;
	}

	public void setBonusID(Integer bonusID) {
		this.bonusID = bonusID;
	}

	public Integer getMemID() {
		return memID;
	}

	public void setMemID(Integer memID) {
		this.memID = memID;
	}

	public Integer getBonus() {
		return bonus;
	}

	public void setBonus(Integer bonus) {
		this.bonus = bonus;
	}

	public Integer getBonusType() {
		return bonusType;
	}

	public void setBonusType(Integer bonusType) {
		this.bonusType = bonusType;
	}

	public Date getBonusDate() {
		return bonusDate;
	}

	public void setBonusDate(Date bonusDate) {
		this.bonusDate = bonusDate;
	}

	public Character getBonusStatus() {
		return bonusStatus;
	}

	public void setBonusStatus(Character bonusStatus) {
		this.bonusStatus = bonusStatus;
	}

	public String getBonusContent() {
		return bonusContent;
	}

	public void setBonusContent(String bonusContent) {
		this.bonusContent = bonusContent;
	}

}
