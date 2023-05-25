package com.emp.model;

public class AdoptedApplicationVO implements java.io.Serializable{
	private Integer adopted_id;
	private Integer mem_id;
	private Integer animal_id;
	private String adopter_id_number;
	private String adopter_name;
	private String adopter_address;
	private String adopter_phone;
	private String adopter_email;
	private String animal_info_note;
	private String status;
	private String adopter_note;
	
	public Integer getAdopted_id() {
		return adopted_id;
	}
	public void setAdopted_id(Integer adopted_id) {
		this.adopted_id = adopted_id;
	}
	public Integer getMem_id() {
		return mem_id;
	}
	public void setMem_id(Integer mem_id) {
		this.mem_id = mem_id;
	}
	public Integer getAnimal_id() {
		return animal_id;
	}
	public void setAnimal_id(Integer animal_id) {
		this.animal_id = animal_id;
	}
	public String getAdopter_id_number() {
		return adopter_id_number;
	}
	public void setAdopter_id_number(String adopter_id_number) {
		this.adopter_id_number = adopter_id_number;
	}
	public String getAdopter_name() {
		return adopter_name;
	}
	public void setAdopter_name(String adopter_name) {
		this.adopter_name = adopter_name;
	}
	public String getAdopter_address() {
		return adopter_address;
	}
	public void setAdopter_address(String adopter_address) {
		this.adopter_address = adopter_address;
	}
	public String getAdopter_phone() {
		return adopter_phone;
	}
	public void setAdopter_phone(String adopter_phone) {
		this.adopter_phone = adopter_phone;
	}
	public String getAdopter_email() {
		return adopter_email;
	}
	public void setAdopter_email(String adopter_email) {
		this.adopter_email = adopter_email;
	}
	public String getAnimal_info_note() {
		return animal_info_note;
	}
	public void setAnimal_info_note(String animal_info_note) {
		this.animal_info_note = animal_info_note;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAdopter_note() {
		return adopter_note;
	}
	public void setAdopter_note(String adopter_note) {
		this.adopter_note = adopter_note;
	}

}
