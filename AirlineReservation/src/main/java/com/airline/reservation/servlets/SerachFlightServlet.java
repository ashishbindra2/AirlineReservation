package com.airline.reservation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airline.reservation.dao.FlightDao;
import com.airline.reservation.entities.Flight;
import com.airline.reservation.entities.Message;
import com.airline.reservation.helper.ConnectionProvider;

@WebServlet("/SerachFlightServlet")
public class SerachFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String fromcity = request.getParameter("fromCity");
		String tocity = request.getParameter("toCity");
		Flight flight = new Flight();
		flight.setFromCity(fromcity);
		flight.setToCity(tocity);
		// update database
		/*
		 * FlightDao flightDao = new FlightDao(ConnectionProvider.getConnection());
		 * boolean ans = flightDao.searchFlight(flight);
		 */
		/*
		 * if (ans) { Message msg = new Message("Profile update..!!", "Success",
		 * " alert-success"); HttpSession sm = request.getSession();
		 * sm.setAttribute("flightSerach", msg); } else { Message msg = new
		 * Message("Invalid Details..!!", "error", " alert-danger"); HttpSession sm =
		 * request.getSession(); sm.setAttribute("flightSearch", msg); }
		 */
		 
		response.sendRedirect("searchFlight.jsp?city="+fromcity+"&to="+tocity);
	}

}
