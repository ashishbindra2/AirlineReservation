package com.airline.reservation.dao;

import java.sql.*;

import com.airline.reservation.entities.User;

public class UserDao {
private Connection con;

public UserDao(Connection con) {
	super();
	this.con = con;
}

//method to insert data to user to database

public boolean saveUser(User user) {	
	boolean f = false;
	try {
		// user --> database  query
	
		String query = "insert into user(email, password, country_code, mobile,"
				+ "title, first_name, last_name, date_of_birth, gender, country)"
				+ " values(?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement pstmt = this.con.prepareStatement(query);
	pstmt.setString(1, user.getEmail());
	pstmt.setString(2, user.getPassword());
	pstmt.setString(3, user.getCountryCode());
	pstmt.setLong(4, user.getMobile());
	pstmt.setString(5, user.getTitle());
	pstmt.setString(6, user.getFname());
	pstmt.setString(7, user.getLname());
	pstmt.setString(8, user.getDateOfBirth());
	pstmt.setString(9, user.getGender());
	pstmt.setString(10, user.getCountry());
	
	pstmt.executeUpdate();
	f=true;
	}catch(Exception e) {
		e.printStackTrace();
	}
	return f;
}

//get user by email & password

public User getUserByEmailAndPassword(String email,String password) {
	User user = null;
	try {
	String query = "SELECT * FROM user WHERE email = ? AND password = ?";
	
	PreparedStatement pstmt = this.con.prepareStatement(query);
	pstmt.setString(1, email);
	pstmt.setString(2, password);
	
	ResultSet set = pstmt.executeQuery();
	if(set.next()) {
		user = new User();
		//data from db
		String fname = set.getString("first_name");
		String lname = set.getString("last_name");
    user.setFname(fname);
    user.setLname(lname);
    user.setId(set.getInt("iduser"));
    user.setPassword(set.getString("password"));
    user.setCountryCode(set.getString("country_code"));
    user.setTitle(set.getString("title"));
    user.setDateOfBirth(set.getString("date_of_birth"));
    user.setMobile(set.getLong("mobile"));
    user.setGender(set.getString("gender"));
    user.setCountry(set.getString("country"));
    
	}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return user;
}
}
