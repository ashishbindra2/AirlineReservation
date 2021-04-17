package com.airline.reservation.entities;

public class Flight {
	private int fid;
	private String flightName ;	
	private String flightNo;
	private String fromCity ;
	private String toCity ;
	private String flightDate ;
	private String flightTime ;
	private String travelDuration ;
	private String airplaneName ;
	private String ticketPrice ;
	private String description ;
	
	
	public Flight(int fid, String flightName, String flightNo, String fromCity, String toCity, String flightDate,
			String flightTime, String travelDuration, String airplaneName, String ticketPrice, String description) {
		super();
		this.fid = fid;
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


	public Flight(String flightName, String flightNo, String fromCity, String toCity, String flightDate,
			String flightTime, String travelDuration, String airplaneName, String ticketPrice, String description) {
		super();
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
	
	public Flight() {}


	public int getFid() {
		return fid;
	}


	public void setFid(int fid) {
		this.fid = fid;
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
	
}
