package com.airline.reservation.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.airline.reservation.entities.Flight;

public class FlightDao {
	private Connection con;

	public FlightDao(Connection con) {
		super();
		this.con = con;
	}

	public ArrayList<Flight> getAllFlight() {
		ArrayList<Flight> list = new ArrayList<>();
		try {
			String query = "SELECT * FROM flight";
			Statement st = this.con.createStatement();
			ResultSet set = st.executeQuery(query);

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

	// method to insert data to user to database

	public boolean saveFlight(Flight flight) {
		boolean f = false;
		try {
			// user --> database query

			String query = "insert into flight(flight_name, flight_no, from_city, to_city,"
					+ "flight_date, flight_time, travel_duration, airplane_name, ticket_price,discription)"
					+ " values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = this.con.prepareStatement(query);
			pstmt.setString(1, flight.getFlightName());
			pstmt.setString(2, flight.getFlightNo());
			pstmt.setString(3, flight.getFromCity());
			pstmt.setString(4, flight.getToCity());
			pstmt.setString(5, flight.getFlightDate());
			pstmt.setString(6, flight.getFlightTime());
			pstmt.setString(7, flight.getTravelDuration());
			pstmt.setString(8, flight.getAirplaneName());
			pstmt.setString(9, flight.getTicketPrice());
			pstmt.setString(10, flight.getDescription());

			pstmt.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean updateFlight(Flight flight) {
		boolean f = false;
		try {
			String query = "UPDATE flight SET flight_name = ?, flight_no =?, from_city=?, to_city=?,flight_date=?,"
					+ "flight_time=?, travel_duration=?, airplane_name=?, ticket_price=?,discription=? WHERE idflight=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, flight.getFlightName());
			pstmt.setString(2, flight.getFlightNo());
			pstmt.setString(3, flight.getFromCity());
			pstmt.setString(4, flight.getToCity());
			pstmt.setString(5, flight.getFlightDate());
			pstmt.setString(6, flight.getFlightTime());
			pstmt.setString(7, flight.getTravelDuration());
			pstmt.setString(8, flight.getAirplaneName());
			pstmt.setString(9, flight.getTicketPrice());
			pstmt.setString(10, flight.getDescription());
			pstmt.setInt(11, flight.getFid());

			pstmt.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean deleteFlight(Flight flight) {
		boolean f = false;
		try {
			String query = "DELETE FROM flight WHERE idflight=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setInt(1, flight.getFid());
			pstmt.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public int numberOfFlight() {
		int count = -1;
		try {
			String query = "SELECT COUNT(*) FROM flight";
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

	public List<Flight> serachFlights(String from_city, String to_city) {
		List<Flight> list = new ArrayList<>();
		// fetch the flight
		try {
			PreparedStatement p = con.prepareStatement( "SELECT * FROM flight WHERE from_city=? AND to_city = ?");
			p.setString(1, from_city);
			p.setString(2, to_city);
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
