package com.emp.model;

import java.sql.Date;

public class PromiseListVO implements java.io.Serializable {
	
	private Integer promise_id;
	private Integer mem_id;
	private Integer animal_id;
	private Date promise_time;
	private String promise_status;
	
	public Integer getPromise_id() {
		return promise_id;
	}
	public void setPromise_id(Integer promise_id) {
		this.promise_id = promise_id;
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
	public Date getPromise_time() {
		return promise_time;
	}
	public void setPromise_time(Date promise_time) {
		this.promise_time = promise_time;
	}
	public String getPromise_status() {
		return promise_status;
	}
	public void setPromise_status(String promise_status) {
		this.promise_status = promise_status;
	}
	

}
