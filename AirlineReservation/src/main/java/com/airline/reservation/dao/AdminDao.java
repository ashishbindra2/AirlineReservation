package com.airline.reservation.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.airline.reservation.entities.Admin;
import com.airline.reservation.entities.Flight;
import com.airline.reservation.entities.User;

public class AdminDao {
	private Connection con;

	public AdminDao(Connection con) {
		super();
		this.con = con;
	}

	// get Admin by email & pass
	public Admin getUserByEmailAndPassword(String email, String password) {
		Admin admin = null;
		try {
			String query = "SELECT * FROM admin WHERE admin_email = ? AND admin_pass = ?";

			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);

			ResultSet set = pstmt.executeQuery();
			if (set.next()) {
				admin = new Admin();
				// data from db
				String name = set.getString("admin_name");
				admin.setName(name);
				admin.setAid(set.getInt("idadmin"));
				admin.setEmail(set.getString("admin_email"));
				admin.setPassword(set.getString("admin_pass"));

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return admin;
	}

//	fetch all the User
	public List<User> getAllUser() {
		List<User> list = new ArrayList<>();
		// fetch the flight
		try {
			PreparedStatement p = con.prepareStatement("SELECT * FROM user");
			ResultSet set = p.executeQuery();
			while (set.next()) {
				// data from db
				String fname = set.getString("first_name");
				String lname = set.getString("last_name");

				int iduser = set.getInt("iduser");
				String email = set.getString("email");
				String pass = set.getString("password");
				String countryCode = set.getString("country_code");
				String Title = set.getString("title");
				String DateOfBirth = set.getString("date_of_birth");
				Long Mobile = set.getLong("mobile");
				String Gender = set.getString("gender");
				String Country = set.getString("country");
				User c = new User(iduser, email, pass, countryCode, Mobile, Title, fname, lname, DateOfBirth, Gender,
						Country);
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

//	fetch all the fligth
	public List<Flight> getAllFlight() {
		List<Flight> list = new ArrayList<>();
		// fetch the flight
		try {
			PreparedStatement p = con.prepareStatement("SELECT * FROM flight");
			ResultSet set = p.executeQuery();
			while (set.next()) {
				int fid = set.getInt("idflight");
				String flightName = set.getString("flight_name");
				String flightNo = set.getString("flight_no");
				String fromCity = set.getString("from_city");
				String toCity = set.getString("to_city");
				String flightDate = set.getString("flight_date");
				String flightTime = set.getString("flight_time");
				String travelDuration = set.getString("travel_duration");
				String airplaneName = set.getString("airplane_name");
				String ticketPrice = set.getString("ticket_price");
				String description = set.getString("discription");

				Flight c = new Flight(fid, flightName, flightNo, fromCity, toCity, flightDate, flightTime,
						travelDuration, airplaneName, ticketPrice, description);
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean updateAdmin(Admin admin) {
		boolean f = false;
		try {
			String query = "UPDATE admin SET admin_name = ?,admin_email = ?,admin_pass=? WHERE idadmin=1";
			PreparedStatement p = con.prepareStatement(query);
			p.setString(1, admin.getName());
			p.setString(2, admin.getEmail());
			p.setString(3, admin.getPassword());
			p.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	

//	fetch all the fligth
	public List<Flight> getFlightById(int id) {
		List<Flight> list = new ArrayList<>();
		// fetch the flight
		try {
			PreparedStatement p = con.prepareStatement("SELECT * FROM flight WHERE idflight =?");
			p.setInt(1, id);
			ResultSet set = p.executeQuery();
			while (set.next()) {
				int fid = set.getInt("idflight");
				String flightName = set.getString("flight_name");
				String flightNo = set.getString("flight_no");
				String fromCity = set.getString("from_city");
				String toCity = set.getString("to_city");
				String flightDate = set.getString("flight_date");
				String flightTime = set.getString("flight_time");
				String travelDuration = set.getString("travel_duration");
				String airplaneName = set.getString("airplane_name");
				String ticketPrice = set.getString("ticket_price");
				String description = set.getString("discription");

				Flight c = new Flight(fid, flightName, flightNo, fromCity, toCity, flightDate, flightTime,
						travelDuration, airplaneName, ticketPrice, description);
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
