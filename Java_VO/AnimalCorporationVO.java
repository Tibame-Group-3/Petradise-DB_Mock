package com.model;

import java.io.Serializable;

public class AnimalCorporationVO implements Serializable{
	
	private Integer corp_id;
	private String applied_status;
	private String corp_account;
	private String corp_password;
	private String corp_name;
	private String corp_registered_id;
	private String corp_address;
	private String contact_name;
	private String contact_phone;
	private String contact_email;
	private String corp_access;
	
	public Integer getCorp_id() {
		return corp_id;
	}
	public void setCorp_id(Integer corp_id) {
		this.corp_id = corp_id;
	}
	public String getApplied_status() {
		return applied_status;
	}
	public void setApplied_status(String applied_status) {
		this.applied_status = applied_status;
	}
	public String getCorp_account() {
		return corp_account;
	}
	public void setCorp_account(String corp_account) {
		this.corp_account = corp_account;
	}
	public String getCorp_password() {
		return corp_password;
	}
	public void setCorp_password(String corp_password) {
		this.corp_password = corp_password;
	}
	public String getCorp_name() {
		return corp_name;
	}
	public void setCorp_name(String corp_name) {
		this.corp_name = corp_name;
	}
	public String getCorp_registered_id() {
		return corp_registered_id;
	}
	public void setCorp_registered_id(String corp_registered_id) {
		this.corp_registered_id = corp_registered_id;
	}
	public String getCorp_address() {
		return corp_address;
	}
	public void setCorp_address(String corp_address) {
		this.corp_address = corp_address;
	}
	public String getContact_name() {
		return contact_name;
	}
	public void setContact_name(String contact_name) {
		this.contact_name = contact_name;
	}
	public String getContact_phone() {
		return contact_phone;
	}
	public void setContact_phone(String contact_phone) {
		this.contact_phone = contact_phone;
	}
	public String getContact_email() {
		return contact_email;
	}
	public void setContact_email(String contact_email) {
		this.contact_email = contact_email;
	}
	public String getCorp_access() {
		return corp_access;
	}
	public void setCorp_access(String corp_access) {
		this.corp_access = corp_access;
	}
	
	

}
