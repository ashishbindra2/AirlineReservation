package com.airline.reservation.entities;

public class User {

private int id;
private String email;
private String password;
private String countryCode;
private long mobile;
private String title;
private String fname;
private String lname;
private String  dateOfBirth;
private String gender;
private String  country;



public User(String fname, String lname) {
	super();
	this.fname = fname;
	this.lname = lname;
}

// constructor 
public User(int id, String email, String password, String countryCode, long mobile, String title, String fname,
		String lname, String dateOfBirth, String gender, String country) {
	super();
	this.id = id;
	this.email = email;
	this.password = password;
	this.countryCode = countryCode;
	this.mobile = mobile;
	this.title = title;
	this.fname = fname;
	this.lname = lname;
	this.dateOfBirth = dateOfBirth;
	this.gender = gender;
	this.country = country;
}

public User() {}

public User(String email, String password, String countryCode, long mobile, String title, String fname, String lname,
		String dateOfBirth, String gender, String country) {
	super();
	this.email = email;
	this.password = password;
	this.countryCode = countryCode;
	this.mobile = mobile;
	this.title = title;
	this.fname = fname;
	this.lname = lname;
	this.dateOfBirth = dateOfBirth;
	this.gender = gender;
	this.country = country;

}

//getters & setters 
public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getCountryCode() {
	return countryCode;
}

public void setCountryCode(String countryCode) {
	this.countryCode = countryCode;
}

public long getMobile() {
	return mobile;
}

public void setMobile(long mobile) {
	this.mobile = mobile;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getFname() {
	return fname;
}

public void setFname(String fname) {
	this.fname = fname;
}

public String getLname() {
	return lname;
}

public void setLname(String lname) {
	this.lname = lname;
}

public String getDateOfBirth() {
	return dateOfBirth;
}

public void setDateOfBirth(String dateOfBirth) {
	this.dateOfBirth = dateOfBirth;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getCountry() {
	return country;
}

public void setCountry(String country) {
	this.country = country;
}




}
