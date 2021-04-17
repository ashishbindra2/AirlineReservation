package com.airline.reservation.servlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airline.reservation.dao.FlightDao;

import com.airline.reservation.entities.Flight;
import com.airline.reservation.entities.Message;
import com.airline.reservation.helper.ConnectionProvider;


@MultipartConfig
@WebServlet("/UpdateFlightServlet")
public class UpdateFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws  ServletException, NumberFormatException,IOException {
		//fetch the data
		/* PrintWriter out = response.getWriter() */;
				int flightId = Integer.parseInt(request.getParameter("idflight"));
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
				
				
				Flight admin =new Flight(flightId,flightName,flightNo,fromCity,toCity,flightDate,flightTime,travelDuration,airplaneName,ticketPrice,description);
				/*
				 * admin.setFid(flightId); admin.setFlightName(flightName);
				 * admin.setFlightNo(flightNo);; admin.setFromCity(fromCity);
				 * admin.setToCity(toCity); admin.setFlightDate(flightDate);
				 * admin.setFlightTime(flightTime); admin.setTravelDuration(travelDuration);
				 * admin.setAirplaneName(airplaneName); admin.setTicketPrice(ticketPrice);
				 * admin.setDescription(description);
				 */
				
				//update database
				FlightDao flightDao = new FlightDao(ConnectionProvider.getConnection());
				boolean ans = flightDao.updateFlight(admin);
				
				if(ans) {
					Message msg = new Message("Profile update..!!","Success"," alert-success"); 
					HttpSession sm = request.getSession();
					sm.setAttribute("msg", msg);
				}else {
					Message msg = new Message("Invalid Details..!!","error"," alert-danger"); 
					HttpSession sm = request.getSession();
					sm.setAttribute("msg", msg);
				}

				response.sendRedirect("admin/viewFlight.jsp");
			}

	

}
