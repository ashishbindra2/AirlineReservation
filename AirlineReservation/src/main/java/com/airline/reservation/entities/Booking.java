package com.airline.reservation.entities;

public class Booking {
private int idBooking;
private int uid;
private int fid;
private int gid;
private String seatNo;
private int numberOfSeats;

public Booking() {
	super();
}
public Booking(int uid, int fid, int gid, String seatNo, int numberOfSeats) {
	super();
	this.uid = uid;
	this.fid = fid;
	this.gid = gid;
	this.seatNo = seatNo;
	this.numberOfSeats = numberOfSeats;
}
public Booking(int idBooking, int uid, int fid, int gid, String seatNo, int numberOfSeats) {
	super();
	this.idBooking = idBooking;
	this.uid = uid;
	this.fid = fid;
	this.gid = gid;
	this.seatNo = seatNo;
	this.numberOfSeats = numberOfSeats;
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
public String getSeatNo() {
	return seatNo;
}
public void setSeatNo(String seatNo) {
	this.seatNo = seatNo;
}
public int getNumberOfSeats() {
	return numberOfSeats;
}
public void setNumberOfSeats(int numberOfSeats) {
	this.numberOfSeats = numberOfSeats;
}


}
