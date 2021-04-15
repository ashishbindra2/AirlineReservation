package com.airline.reservation.entities;

public class Admin {

	private int aid;
	private String email;
	private String password;
	private String name;
	
	public Admin(int aid, String email, String password,String name) {
		super();
		this.aid = aid;
		this.email = email;
		this.password = password;
		this.name = name;
	}

	public Admin(String email, String password,String name) {
		super();
		this.email = email;
		this.password = password;
		this.name = name;
	}
	public Admin() {
		
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
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
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
