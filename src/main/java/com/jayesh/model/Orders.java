package com.jayesh.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.stereotype.Component;

@Component
@Entity

public class Orders {
	@Id
  @GeneratedValue(strategy = GenerationType.AUTO)
    private int orderid;

	 
    private String userName;
    private String userId;
    private String contact;
    private String email;
    private String serviceProviderName;
    private String serviceProviderContact;
 
    private String date;

  
    private String time;

    private String serviceTitle;
    private String serviceDescription;
    private String status="Pending";
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getServiceProviderName() {
		return serviceProviderName;
	}
	public void setServiceProviderName(String serviceProviderName) {
		this.serviceProviderName = serviceProviderName;
	}
	public String getServiceProviderContact() {
		return serviceProviderContact;
	}
	public void setServiceProviderContact(String serviceProviderContact) {
		this.serviceProviderContact = serviceProviderContact;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getServiceTitle() {
		return serviceTitle;
	}
	public void setServiceTitle(String serviceTitle) {
		this.serviceTitle = serviceTitle;
	}
	public String getServiceDescription() {
		return serviceDescription;
	}
	public void setServiceDescription(String serviceDescription) {
		this.serviceDescription = serviceDescription;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Orders(int orderid, String userName, String userId, String contact, String email, String serviceProviderName,
			String serviceProviderContact, String date, String time, String serviceTitle, String serviceDescription,
			String status) {
		super();
		this.orderid = orderid;
		this.userName = userName;
		this.userId = userId;
		this.contact = contact;
		this.email = email;
		this.serviceProviderName = serviceProviderName;
		this.serviceProviderContact = serviceProviderContact;
		this.date = date;
		this.time = time;
		this.serviceTitle = serviceTitle;
		this.serviceDescription = serviceDescription;
		this.status = status;
	}
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Orders [orderid=" + orderid + ", userName=" + userName + ", userId=" + userId + ", contact=" + contact
				+ ", email=" + email + ", serviceProviderName=" + serviceProviderName + ", serviceProviderContact="
				+ serviceProviderContact + ", date=" + date + ", time=" + time + ", serviceTitle=" + serviceTitle
				+ ", serviceDescription=" + serviceDescription + ", status=" + status + "]";
	}
	 


}
