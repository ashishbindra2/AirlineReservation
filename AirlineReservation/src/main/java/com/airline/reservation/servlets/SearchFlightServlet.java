package com.airline.reservation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.MultipartConfig;
import com.airline.reservation.dao.AdminDao;
import com.airline.reservation.dao.FlightDao;
import com.airline.reservation.entities.Admin;
import com.airline.reservation.entities.Flight;
import com.airline.reservation.entities.Message;
import com.airline.reservation.helper.ConnectionProvider;*/


@WebServlet("/SearchFlightServlet")
public class SearchFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fromCity = request.getParameter("fromCity");
		String toCity =  request.getParameter("toCity");
		 PrintWriter out = ((ServletResponse) request).getWriter();
		  out.println("result="+fromCity);
//		Flight admin = new Flight();
//		admin.setFromCity(fromCity);
//		admin.setToCity(toCity);
		// update database
	/* 	FlightDao flightDao = new FlightDao(ConnectionProvider.getConnection());
		boolean ans = flightDao.searchFlight(admin); */

		/*
		 * if (ans) { Message msg = new Message("Profile update..!!", "Success",
		 * " alert-success"); HttpSession sm = request.getSession();
		 * sm.setAttribute("flightSerach", msg); } else { Message msg = new
		 * Message("Invalid Details..!!", "error", " alert-danger"); HttpSession sm =
		 * request.getSession(); sm.setAttribute("flightSearch", msg); }
		 */
//		response.sendRedirect("searchFlight.jsp?city="+fromCity+"&to="+toCity);
	}

}
