package com.airline.reservation.entities;

public class Pay {
private int pid;
private int uid;
private String cardOwner;
private String cardNumber;
private String mm;
private String yy;
private String cvv;
public Pay(int pid, int uid, String cardOwner, String cardNumber, String mm, String yy, String cvv) {
	super();
	this.pid = pid;
	this.uid = uid;
	this.cardOwner = cardOwner;
	this.cardNumber = cardNumber;
	this.mm = mm;
	this.yy = yy;
	this.cvv = cvv;
}
public Pay(int uid, String cardOwner, String cardNumber, String mm, String yy, String cvv) {
	super();
	this.uid = uid;
	this.cardOwner = cardOwner;
	this.cardNumber = cardNumber;
	this.mm = mm;
	this.yy = yy;
	this.cvv = cvv;
}
public Pay() {}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public int getUid() {
	return uid;
}
public void setUid(int uid) {
	this.uid = uid;
}
public String getCardOwner() {
	return cardOwner;
}
public void setCardOwner(String cardOwner) {
	this.cardOwner = cardOwner;
}
public String getCardNumber() {
	return cardNumber;
}
public void setCardNumber(String cardNumber) {
	this.cardNumber = cardNumber;
}
public String getMm() {
	return mm;
}
public void setMm(String mm) {
	this.mm = mm;
}
public String getYy() {
	return yy;
}
public void setYy(String yy) {
	this.yy = yy;
}
public String getCvv() {
	return cvv;
}
public void setCvv(String cvv) {
	this.cvv = cvv;
};

}
