package com.proj.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;

@SuppressWarnings("serial")
//CREATE A TABLE
@Entity
public class UserModel implements Serializable
{
	@Id //PRIMARY KEY
	private int id;
	private String district;
	private String vill_town;
	private String name;
	private long pincode;
	private String email;
	private long mobile_no;
	private String gender;
	private String password;
	
	
	public UserModel() {}


	public int getAid() {
		return id;
	}


	public void setid(int id) {
		this.id = id;
	}


	public String getDistrict() {
		return district;
	}


	public void setDistrict(String district) {
		this.district = district;
	}


	public String getVill_town() {
		return vill_town;
	}


	public void setVill_town(String vill_town) {
		this.vill_town = vill_town;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public long getPincode() {
		return pincode;
	}


	public void setPincode(long pincode) {
		this.pincode = pincode;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public long getMobile_no() {
		return mobile_no;
	}


	public void setMobile_no(long mobile_no) {
		this.mobile_no = mobile_no;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	
}
