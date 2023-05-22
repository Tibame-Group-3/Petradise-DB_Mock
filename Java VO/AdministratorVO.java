package newVO;

public class AdministratorVO implements java.io.Serializable {
	private Integer adimn_id;
	private String admin_name;
	private String admin_account;
	private String admin_password;
	private String admin_phone;
	private String admin_address;
	private String admin_email;
	private String admim_title;
	private String admin_status;

	public AdministratorVO(Integer adimn_id, String admin_name, String admin_account, String admin_password,
			String admin_phone, String admin_address, String admin_email, String admim_title, String admin_status) {
		super();
		this.adimn_id = adimn_id;
		this.admin_name = admin_name;
		this.admin_account = admin_account;
		this.admin_password = admin_password;
		this.admin_phone = admin_phone;
		this.admin_address = admin_address;
		this.admin_email = admin_email;
		this.admim_title = admim_title;
		this.admin_status = admin_status;
	}

	public Integer getAdimn_id() {
		return adimn_id;
	}

	public void setAdmin_id(Integer adimn_id) {
		this.adimn_id = adimn_id;
	}

	public String getAdmin_name() {
		return admin_name;
	}

	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}

	public String getAdmin_account() {
		return admin_account;
	}

	public void setAdmin_account(String admin_account) {
		this.admin_account = admin_account;
	}

	public String getAdmin_password() {
		return admin_password;
	}

	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}

	public String getAdmin_phone() {
		return admin_phone;
	}

	public void setAdmin_phone(String admin_phone) {
		this.admin_phone = admin_phone;
	}

	public String getAdmin_address() {
		return admin_address;
	}

	public void setAdmin_address(String admin_address) {
		this.admin_address = admin_address;
	}

	public String getAdmin_email() {
		return admin_email;
	}

	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}

	public String getAdmim_title() {
		return admim_title;
	}

	public void setAdmim_title(String admim_title) {
		this.admim_title = admim_title;
	}

	public String getAdmin_status() {
		return admin_status;
	}

	public void setAdmin_status(String admin_status) {
		this.admin_status = admin_status;
	}
}
