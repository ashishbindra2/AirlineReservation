package com.airline.reservation.entities;

public class Guest {
	private int guestId;
	private int userId;
	private String firstName;
	private String lastName;
	private String gEmail;
	private String gAddress;
	private String gCountry;
	private String gZip;
	private int fId;

	public Guest(int guestId, int userId, String firstName, String lastName, String gEmail, String gAddress,
			String gCountry, String gZip, int fId) {
		super();
		this.guestId = guestId;
		this.userId = userId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gEmail = gEmail;
		this.gAddress = gAddress;
		this.gCountry = gCountry;
		this.gZip = gZip;
		this.fId = fId;
	}

	public Guest(int userId, String firstName, String lastName, String gEmail, String gAddress, String gCountry,
			String gZip, int fId) {
		super();
		this.userId = userId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gEmail = gEmail;
		this.gAddress = gAddress;
		this.gCountry = gCountry;
		this.gZip = gZip;
		this.fId = fId;
	}

	public Guest() {
	}

	public int getGuestId() {
		return guestId;
	}

	public void setGuestId(int guestId) {
		this.guestId = guestId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getgEmail() {
		return gEmail;
	}

	public void setgEmail(String gEmail) {
		this.gEmail = gEmail;
	}

	public String getgAddress() {
		return gAddress;
	}

	public void setgAddress(String gAddress) {
		this.gAddress = gAddress;
	}

	public String getgCountry() {
		return gCountry;
	}

	public void setgCountry(String gCountry) {
		this.gCountry = gCountry;
	}

	public String getgZip() {
		return gZip;
	}

	public void setgZip(String gZip) {
		this.gZip = gZip;
	}

	public int getfId() {
		return fId;
	}

	public void setfId(int fId) {
		this.fId = fId;
	}
	
	
}
