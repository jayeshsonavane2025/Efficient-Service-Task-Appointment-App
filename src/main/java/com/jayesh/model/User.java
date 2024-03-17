package com.jayesh.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class User {
	@Id
	private String uid;
    private String uname;
    private String udob;
    private String uaddress;
    private String upincode;
    private String uarea;
    private String ucity;
    private String uemail;
    private String umob;
    private String upassword;
    private Double ulatitude;
    private Double ulongitude;
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUdob() {
		return udob;
	}
	public void setUdob(String udob) {
		this.udob = udob;
	}
	public String getUaddress() {
		return uaddress;
	}
	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}
	public String getUpincode() {
		return upincode;
	}
	public void setUpincode(String upincode) {
		this.upincode = upincode;
	}
	public String getUarea() {
		return uarea;
	}
	public void setUarea(String uarea) {
		this.uarea = uarea;
	}
	public String getUcity() {
		return ucity;
	}
	public void setUcity(String ucity) {
		this.ucity = ucity;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUmob() {
		return umob;
	}
	public void setUmob(String umob) {
		this.umob = umob;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public Double getUlatitude() {
		return ulatitude;
	}
	public void setUlatitude(Double ulatitude) {
		this.ulatitude = ulatitude;
	}
	public Double getUlongitude() {
		return ulongitude;
	}
	public void setUlongitude(Double ulongitude) {
		this.ulongitude = ulongitude;
	}
	public User(String uid, String uname, String udob, String uaddress, String upincode, String uarea, String ucity,
			String uemail, String umob, String upassword, Double ulatitude, Double ulongitude) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.udob = udob;
		this.uaddress = uaddress;
		this.upincode = upincode;
		this.uarea = uarea;
		this.ucity = ucity;
		this.uemail = uemail;
		this.umob = umob;
		this.upassword = upassword;
		this.ulatitude = ulatitude;
		this.ulongitude = ulongitude;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", udob=" + udob + ", uaddress=" + uaddress + ", upincode="
				+ upincode + ", uarea=" + uarea + ", ucity=" + ucity + ", uemail=" + uemail + ", umob=" + umob
				+ ", upassword=" + upassword + ", ulatitude=" + ulatitude + ", ulongitude=" + ulongitude + "]";
	}
	 

}
