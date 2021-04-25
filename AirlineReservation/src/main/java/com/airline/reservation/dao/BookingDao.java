package com.airline.reservation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.airline.reservation.entities.Booking;
import com.airline.reservation.entities.Flight;
import com.airline.reservation.entities.Guest;
import com.airline.reservation.entities.Pay;

public class BookingDao {
	private Connection con;

	public BookingDao(Connection con) {
		super();
		this.con = con;
	}

	// method to insert data to user to database

	public boolean saveDetails(Booking booked) {
		boolean f = false;
		try {
			// user --> database query

			String query = "insert into booking(user_id,flight_id,seat_no,number_of_seats,guest_id)" + " values(?,?,?,?,?)";
			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setInt(1, booked.getUid());
			pstmt.setInt(2, booked.getFid());
			pstmt.setString(3, booked.getSeatNo());
			pstmt.setInt(4, booked.getNumberOfSeats());
			pstmt.setInt(5, booked.getGid());

			pstmt.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public int guestId() {
		int count = -1;
		try {
			String query = "SELECT MAX(idguest) FROM guest";
			PreparedStatement pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery(query);
			// Retrieving the result
			rs.next();
			count = rs.getInt(1);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}

//	fetch all the guest
	/*
	 * public List<Guest> getGuestById(int gid,int uid) { List<Guest> list = new
	 * ArrayList<>(); // fetch the flight try {SELECT MAX(ID) FROM Table
	 * PreparedStatement p = con.
	 * prepareStatement("SELECT * FROM guest  WHERE idguest=? AND guest_user_id =?"
	 * ); p.setInt(1, uid); p.setInt(2, gid); ResultSet set = p.executeQuery();
	 * while (set.next()) { String firstName = set.getString("first_name"); String
	 * lastName = set.getString("last_name"); String email =
	 * set.getString("guest_email"); String address = set.getString("address");
	 * String flightDate = set.getString("guest_country"); String flightTime =
	 * set.getString("guest_zip");
	 * 
	 * Flight c = new Flight(firstName,lastName
	 * ,email,address,flightDate,flightTime); list.add(c); } } catch (Exception e) {
	 * e.printStackTrace(); } return list; }
	 */
	// method to insert data to user to database

	public boolean userPay(Pay pay) {
		boolean f = false;
		try {
			// user --> database query

			String query = "insert into payment(card_owner,card_number,card_user_id,card_month,card_year,cvv)"
					+ " values(?,?,?,?,?,?)";
			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setString(1, pay.getCardOwner());
			pstmt.setString(2, pay.getCardNumber());
			pstmt.setInt(3, pay.getUid());
			pstmt.setString(4, pay.getMm());
			pstmt.setString(5, pay.getYy());
			pstmt.setString(6, pay.getCvv());

			pstmt.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	// method to insert data to user to database

	public boolean saveGuest(Guest guest) {
		boolean f = false;
		try {
			// user --> database query

			String query = "insert into guest(guest_user_id, first_name, last_name,guest_email, address,"
					+ "guest_country, guest_zip, fid)" + " values(?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setInt(1, guest.getUserId());
			pstmt.setString(2, guest.getFirstName());
			pstmt.setString(3, guest.getLastName());
			pstmt.setString(4, guest.getgEmail());
			pstmt.setString(5, guest.getgAddress());
			pstmt.setString(6, guest.getgCountry());
			pstmt.setString(7, guest.getgZip());
			pstmt.setInt(8, guest.getfId());

			pstmt.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}
