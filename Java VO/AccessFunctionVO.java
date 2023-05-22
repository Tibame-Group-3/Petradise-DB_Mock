package newVO;

public class AccessFunctionVO implements java.io.Serializable {
	private Integer function_id;
	private String function_name;

	public AccessFunctionVO(Integer function_id, String function_name) {
		super();
		this.function_id = function_id;
		this.function_name = function_name;
	}

	public Integer getFunction_id() {
		return function_id;
	}

	public void setFunction_id(Integer function_id) {
		this.function_id = function_id;
	}

	public String getFunction_name() {
		return function_name;
	}

	public void setFunction_name(String function_name) {
		this.function_name = function_name;
	}

}
