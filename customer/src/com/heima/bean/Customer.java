package com.heima.bean;

import java.io.Serializable;
import java.util.Date;
//create table customer(
//		id varchar(100) primary key,
//		name varchar(100),
//		gender varchar(4),# 1 male  0 female
//		birthday date,
//		cellphone varchar(20),
//		email varchar(40),
//		hobby varchar(100),#eat,sleep
//		type varchar(40),#vip|normal
//		description varchar(255)
//	);
public class Customer implements Serializable{
    
	private String id ;
	
	private String name ;
	private String gender ;
	private Date birthday ;
	private String cellphone ;
	private String email ;
	private String hobby ;
	private String type ;
	private String description ;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
