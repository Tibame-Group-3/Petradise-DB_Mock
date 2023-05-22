package newVO;

public class AdministratorAccessVO implements java.io.Serializable {
	private Integer admin_id;
	private Integer function_id;

	public AdministratorAccessVO(Integer admin_id, Integer function_id) {
		super();
		this.admin_id = admin_id;
		this.function_id = function_id;
	}

	public Integer getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(Integer admin_id) {
		this.admin_id = admin_id;
	}

	public Integer getFunction_id() {
		return function_id;
	}

	public void setFunction_id(Integer function_id) {
		this.function_id = function_id;
	}
}
