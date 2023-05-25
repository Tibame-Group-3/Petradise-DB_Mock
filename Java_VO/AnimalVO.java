package com.emp.model;


	import java.sql.Date;

	
	public class AnimalVO implements java.io.Serializable{
		private Integer animal_id;
		private Integer corp_id;
		private Integer mem_id;
		private String type;
		private String animal_name;
		private String status;
		private String animal_sex;
		private String animal_age;
		private String animal_info_note;
		
		public Integer getAnimal_id() {
			return animal_id;
		}
		public void setAnimal_id(Integer animal_id) {
			this.animal_id = animal_id;
		}
		public Integer getCorp_id() {
			return corp_id;
		}
		public void setCorp_id(Integer corp_id) {
			this.corp_id = corp_id;
		}
		public Integer getInteger() {
			return mem_id;
		}
		public void setInteger(Integer integer) {
			mem_id = integer;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getAnimal_name() {
			return animal_name;
		}
		public void setAnimal_name(String animal_name) {
			this.animal_name = animal_name;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		public String getAnimal_sex() {
			return animal_sex;
		}
		public void setAnimal_sex(String animal_sex) {
			this.animal_sex = animal_sex;
		}
		public String getAnimal_age() {
			return animal_age;
		}
		public void setAnimal_age(String animal_age) {
			this.animal_age = animal_age;
		}
		public String getAnimal_info_note() {
			return animal_info_note;
		}
		public void setAnimal_info_note(String animal_info_note) {
			this.animal_info_note = animal_info_note;
		}
		
		
		
	}



