package com.proj.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
@SuppressWarnings("serial")
//CREATE A TABLE
@Entity
public class FoodModel implements Serializable
{
	@Id //PRIMARY KEY
	private String fid;
	private String fname;
	private String fprice;
	private String fdetails;
	
	
	public FoodModel() {}


	


	public String getFid() {
		return fid;
	}





	public void setFid(String fid) {
		this.fid = fid;
	}





	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getFprice() {
		return fprice;
	}


	public void setFprice(String fprice) {
		this.fprice = fprice;
	}


	public String getFdetails() {
		return fdetails;
	}


	public void setFdetails(String fdetails) {
		this.fdetails = fdetails;
	}


	
		
}
