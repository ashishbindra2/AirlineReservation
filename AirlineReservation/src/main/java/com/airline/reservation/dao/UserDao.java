package com.airline.reservation.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

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
			// user --> database query

			String query = "insert into user(email, password, country_code, mobile,"
					+ "title, first_name, last_name, date_of_birth, gender, country)" + " values(?,?,?,?,?,?,?,?,?,?)";
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
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

//get user by email & password

	public User getUserByEmailAndPassword(String email, String password) {
		User user = null;
		try {
			String query = "SELECT * FROM user WHERE email = ? AND password = ?";

			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);

			ResultSet set = pstmt.executeQuery();
			if (set.next()) {
				user = new User();
				// data from db
				String fname = set.getString("first_name");
				String lname = set.getString("last_name");
				user.setFname(fname);
				user.setLname(lname);
				user.setId(set.getInt("iduser"));
				user.setEmail(set.getString("email"));
				user.setPassword(set.getString("password"));
				user.setCountryCode(set.getString("country_code"));
				user.setTitle(set.getString("title"));
				user.setDateOfBirth(set.getString("date_of_birth"));
				user.setMobile(set.getLong("mobile"));
				user.setGender(set.getString("gender"));
				user.setCountry(set.getString("country"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	public boolean updateUser(User user) {
		boolean f = false;
		try {
			String query = "UPDATE user SET first_name = ?,last_name = ?,email = ?,password=?,country_code=?,title=?,date_of_birth=?,mobile=?,"
					+ "gender=?,country=? WHERE iduser=?";
			PreparedStatement p = con.prepareStatement(query);
			p.setString(1, user.getFname());
			p.setString(2, user.getLname());
			p.setString(3, user.getEmail());
			p.setString(4, user.getPassword());
			p.setString(5, user.getCountryCode());
			p.setString(6, user.getTitle());
			p.setString(7, user.getDateOfBirth());
			p.setLong(8, user.getMobile());
			p.setString(9, user.getGender());
			p.setString(10, user.getCountry());
			p.setInt(11, user.getId());

			p.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean deleteUser(User user) {
		boolean f = false;
		try {
			String query = "DELETE FROM user WHERE iduser=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setInt(1, user.getId());
			pstmt.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public List<User> getUserName() {
		List<User> list = new ArrayList<>();
		try {
			String query = "SELECT COUNT(*) FROM flight";
			PreparedStatement pstmt = con.prepareStatement(query);
			ResultSet set = pstmt.executeQuery();
			while (set.next()) {
				String fname = set.getString("first_name");
				String lname = set.getString("last_name");

				User c = new User( fname, lname);
				list.add(c);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
