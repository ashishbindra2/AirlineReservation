package com.airline.reservation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airline.reservation.dao.AdminDao;
import com.airline.reservation.dao.FlightDao;
import com.airline.reservation.entities.Admin;
import com.airline.reservation.entities.Flight;
import com.airline.reservation.helper.ConnectionProvider;
@MultipartConfig
@WebServlet("/AddFlightServlet")
public class AddFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String flightName = request.getParameter("flight_name");	
		String flightNo = request.getParameter("flight_no");
		String fromCity = request.getParameter("from_city");
		String toCity =  request.getParameter("to_city");
		String flightDate = request.getParameter("flight_date");
		String flightTime = request.getParameter("flight_time");
		String travelDuration = request.getParameter("travel_duration");
		String airplaneName = request.getParameter("airplane_name");
		String ticketPrice = request.getParameter("ticket_price");
		String description = request.getParameter("discription");
		// create a user object and set all data to the i=object
	
		
		Flight flight = new Flight(flightName,flightNo,fromCity,toCity,flightDate,flightTime,travelDuration,airplaneName,ticketPrice,description);
		
		//create a user dao object
		FlightDao dao = new FlightDao(ConnectionProvider.getConnection());
      
		if(dao.saveFlight(flight)) {
			out.println("Done");
			HttpSession s = request.getSession();
			s.setAttribute("currentFlight", flight);
		
		}else {
			out.println("error not insert!!");
		}
		
	}

}
