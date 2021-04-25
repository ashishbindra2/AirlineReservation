package com.airline.reservation.entities;

public class Detail {
	private int idBooking;
	private int uid;
	private int fid;
	private int gid;
	private int guestId;
	private int userId;
	private int fiid;

	private String seatNo;
	private String flightName;
	private String flightNo;
	private String fromCity;
	private String toCity;
	private String flightDate;
	private String flightTime;
	private String travelDuration;
	private String airplaneName;
	private String ticketPrice;
	private String description;

	private String firstName;
	private String lastName;
	private String gEmail;
	private String gAddress;
	private String gCountry;
	private String gZip;

	public Detail() {
		super();
	}

	public Detail(int guestId, int userId, String firstName, String lastName, String gEmail, String gAddress,
			String gCountry, String gZip) {
		super();
		this.guestId = guestId;
		this.userId = userId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gEmail = gEmail;
		this.gAddress = gAddress;
		this.gCountry = gCountry;
		this.gZip = gZip;
	}

	public Detail(int fiid,  String flightName, String flightNo, String fromCity, String toCity,
			String flightDate, String flightTime, String travelDuration, String airplaneName, String ticketPrice,
			String description) {
		super();
		this.fiid = fiid;
		this.flightName = flightName;
		this.flightNo = flightNo;
		this.fromCity = fromCity;
		this.toCity = toCity;
		this.flightDate = flightDate;
		this.flightTime = flightTime;
		this.travelDuration = travelDuration;
		this.airplaneName = airplaneName;
		this.ticketPrice = ticketPrice;
		this.description = description;
	}

	public Detail(int idBooking, int uid, int fid, String seatNo,int gid) {
		super();
		this.idBooking = idBooking;
		this.uid = uid;
		this.fid = fid;
		this.seatNo = seatNo;
		this.gid = gid;
	}

	public Detail(int uid, int fid, int gid, String seatNo, String flightName, String flightNo, String fromCity,
			String toCity, String flightDate, String flightTime, String travelDuration, String airplaneName,
			String ticketPrice, String description, String firstName, String lastName, String gEmail, String gAddress,
			String gCountry, String gZip) {
		super();
		this.uid = uid;
		this.fid = fid;
		this.gid = gid;
		this.seatNo = seatNo;
		this.flightName = flightName;
		this.flightNo = flightNo;
		this.fromCity = fromCity;
		this.toCity = toCity;
		this.flightDate = flightDate;
		this.flightTime = flightTime;
		this.travelDuration = travelDuration;
		this.airplaneName = airplaneName;
		this.ticketPrice = ticketPrice;
		this.description = description;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gEmail = gEmail;
		this.gAddress = gAddress;
		this.gCountry = gCountry;
		this.gZip = gZip;
	}

	public Detail(int uid, int fid, int gid, int guestId, int userId, int fiid, String seatNo, String flightName,
			String flightNo, String fromCity, String toCity, String flightDate, String flightTime,
			String travelDuration, String airplaneName, String ticketPrice, String description, String firstName,
			String lastName, String gEmail, String gAddress, String gCountry, String gZip) {
		super();
		this.uid = uid;
		this.fid = fid;
		this.gid = gid;
		this.guestId = guestId;
		this.userId = userId;
		this.fiid = fiid;
		this.seatNo = seatNo;
		this.flightName = flightName;
		this.flightNo = flightNo;
		this.fromCity = fromCity;
		this.toCity = toCity;
		this.flightDate = flightDate;
		this.flightTime = flightTime;
		this.travelDuration = travelDuration;
		this.airplaneName = airplaneName;
		this.ticketPrice = ticketPrice;
		this.description = description;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gEmail = gEmail;
		this.gAddress = gAddress;
		this.gCountry = gCountry;
		this.gZip = gZip;
	}

	public Detail(int idBooking, int uid, int fid, int gid, int guestId, int userId, int fiid, String seatNo,
			String flightName, String flightNo, String fromCity, String toCity, String flightDate, String flightTime,
			String travelDuration, String airplaneName, String ticketPrice, String description, String firstName,
			String lastName, String gEmail, String gAddress, String gCountry, String gZip) {
		super();
		this.idBooking = idBooking;
		this.uid = uid;
		this.fid = fid;
		this.gid = gid;
		this.guestId = guestId;
		this.userId = userId;
		this.fiid = fiid;
		this.seatNo = seatNo;
		this.flightName = flightName;
		this.flightNo = flightNo;
		this.fromCity = fromCity;
		this.toCity = toCity;
		this.flightDate = flightDate;
		this.flightTime = flightTime;
		this.travelDuration = travelDuration;
		this.airplaneName = airplaneName;
		this.ticketPrice = ticketPrice;
		this.description = description;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gEmail = gEmail;
		this.gAddress = gAddress;
		this.gCountry = gCountry;
		this.gZip = gZip;
	}

	public int getIdBooking() {
		return idBooking;
	}

	public void setIdBooking(int idBooking) {
		this.idBooking = idBooking;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
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

	public int getFiid() {
		return fiid;
	}

	public void setFiid(int fiid) {
		this.fiid = fiid;
	}

	public String getSeatNo() {
		return seatNo;
	}

	public void setSeatNo(String seatNo) {
		this.seatNo = seatNo;
	}

	public String getFlightName() {
		return flightName;
	}

	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}

	public String getFlightNo() {
		return flightNo;
	}

	public void setFlightNo(String flightNo) {
		this.flightNo = flightNo;
	}

	public String getFromCity() {
		return fromCity;
	}

	public void setFromCity(String fromCity) {
		this.fromCity = fromCity;
	}

	public String getToCity() {
		return toCity;
	}

	public void setToCity(String toCity) {
		this.toCity = toCity;
	}

	public String getFlightDate() {
		return flightDate;
	}

	public void setFlightDate(String flightDate) {
		this.flightDate = flightDate;
	}

	public String getFlightTime() {
		return flightTime;
	}

	public void setFlightTime(String flightTime) {
		this.flightTime = flightTime;
	}

	public String getTravelDuration() {
		return travelDuration;
	}

	public void setTravelDuration(String travelDuration) {
		this.travelDuration = travelDuration;
	}

	public String getAirplaneName() {
		return airplaneName;
	}

	public void setAirplaneName(String airplaneName) {
		this.airplaneName = airplaneName;
	}

	public String getTicketPrice() {
		return ticketPrice;
	}

	public void setTicketPrice(String ticketPrice) {
		this.ticketPrice = ticketPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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

}
