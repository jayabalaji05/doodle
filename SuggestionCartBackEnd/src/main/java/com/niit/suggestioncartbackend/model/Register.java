package com.niit.suggestioncartbackend.model;


import javax.persistence.Column;
//import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="REGISTER")
public class Register {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public long id;
	@Column
	public String UserName;
	@Column
	public String Name;	
	@Column
	public String EmailId;
	@Transient
	public String ConfrimPassword;
	@Column
	public long ContactNo;
	@Transient
	public String Password;
	public Register()
	{		
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name=name;
	}
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getConfrimPassword() {
		return ConfrimPassword;
	}
	public void setConfrimPassword(String confrimpassword) {
		ConfrimPassword = confrimpassword;
	}
	public long getContactNo() {
		return ContactNo;
	}
	public void setContactNo(long contactNo) {
		ContactNo = contactNo;
	}
	}
