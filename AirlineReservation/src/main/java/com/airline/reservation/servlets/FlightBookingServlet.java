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

import com.airline.reservation.dao.BookingDao;
import com.airline.reservation.entities.Guest;
import com.airline.reservation.helper.ConnectionProvider;

/**
 * Servlet implementation class FlightBookingServlet
 */
@MultipartConfig
@WebServlet("/FlightBookingServlet")
public class FlightBookingServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int fid = Integer.parseInt(request.getParameter("fid"));
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String email = request.getParameter("email");
		String country = request.getParameter("country");
		String zip = request.getParameter("zip");
		int uid = Integer.parseInt(request.getParameter("uid"));
		String address = request.getParameter("address");
		// create a user object and set all data to the i=object
		Guest guest = new Guest(uid,firstName,lastName,email,address,country,zip,fid);

		// create a user dao object
		BookingDao dao = new BookingDao(ConnectionProvider.getConnection());

		if (dao.saveGuest(guest)) {
			out.println("Done");
			HttpSession s = request.getSession();
			s.setAttribute("currentGuest", guest);
			response.sendRedirect("details.jsp?fid="+fid);
			

		} else {
			out.println("error not insert!!");
		}

	}

}
