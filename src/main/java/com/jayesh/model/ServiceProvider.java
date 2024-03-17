package com.jayesh.model;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.springframework.stereotype.Component;

@Component
@Entity
public class ServiceProvider {
	
    //@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
    private int sid;
	 
    private String sname;
    private int sage;
    private String scontact;
    private String saddress;
    private String spincode;
    private String sarea;
    private String scity;
    private double slatitude;
    private double slongitude;
    private String semail;
//    @Lob
  //  private byte[] simage;
    private String spassword;
    private String scategory;
    private String sServiceType;
    private String sopentime;
    private String sclosetime;
   
//    @Lob
//    @Column(nullable = false)
//    private byte[] imageData;
    private String sStatus = "Disapproved";

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public int getSage() {
		return sage;
	}

	public void setSage(int sage) {
		this.sage = sage;
	}

	public String getScontact() {
		return scontact;
	}

	public void setScontact(String scontact) {
		this.scontact = scontact;
	}

	public String getSaddress() {
		return saddress;
	}

	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}

	public String getSpincode() {
		return spincode;
	}

	public void setSpincode(String spincode) {
		this.spincode = spincode;
	}

	public String getSarea() {
		return sarea;
	}

	public void setSarea(String sarea) {
		this.sarea = sarea;
	}

	public String getScity() {
		return scity;
	}

	public void setScity(String scity) {
		this.scity = scity;
	}

	public double getSlatitude() {
		return slatitude;
	}

	public void setSlatitude(double slatitude) {
		this.slatitude = slatitude;
	}

	public double getSlongitude() {
		return slongitude;
	}

	public void setSlongitude(double slongitude) {
		this.slongitude = slongitude;
	}

	public String getSemail() {
		return semail;
	}

	public void setSemail(String semail) {
		this.semail = semail;
	}

	public String getSpassword() {
		return spassword;
	}

	public void setSpassword(String spassword) {
		this.spassword = spassword;
	}

	public String getScategory() {
		return scategory;
	}

	public void setScategory(String scategory) {
		this.scategory = scategory;
	}

	public String getsServiceType() {
		return sServiceType;
	}

	public void setsServiceType(String sServiceType) {
		this.sServiceType = sServiceType;
	}

	public String getSopentime() {
		return sopentime;
	}

	public void setSopentime(String sopentime) {
		this.sopentime = sopentime;
	}

	public String getSclosetime() {
		return sclosetime;
	}

	public void setSclosetime(String sclosetime) {
		this.sclosetime = sclosetime;
	}

	public String getsStatus() {
		return sStatus;
	}

	public void setsStatus(String sStatus) {
		this.sStatus = sStatus;
	}

	public ServiceProvider(int sid, String sname, int sage, String scontact, String saddress, String spincode,
			String sarea, String scity, double slatitude, double slongitude, String semail, String spassword,
			String scategory, String sServiceType, String sopentime, String sclosetime, String sStatus) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.sage = sage;
		this.scontact = scontact;
		this.saddress = saddress;
		this.spincode = spincode;
		this.sarea = sarea;
		this.scity = scity;
		this.slatitude = slatitude;
		this.slongitude = slongitude;
		this.semail = semail;
		this.spassword = spassword;
		this.scategory = scategory;
		this.sServiceType = sServiceType;
		this.sopentime = sopentime;
		this.sclosetime = sclosetime;
		this.sStatus = sStatus;
	}

	public ServiceProvider() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "ServiceProvider [sid=" + sid + ", sname=" + sname + ", sage=" + sage + ", scontact=" + scontact
				+ ", saddress=" + saddress + ", spincode=" + spincode + ", sarea=" + sarea + ", scity=" + scity
				+ ", slatitude=" + slatitude + ", slongitude=" + slongitude + ", semail=" + semail + ", spassword="
				+ spassword + ", scategory=" + scategory + ", sServiceType=" + sServiceType + ", sopentime=" + sopentime
				+ ", sclosetime=" + sclosetime + ", sStatus=" + sStatus + "]";
	}
    
    
  

}
