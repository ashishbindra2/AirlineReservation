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
@WebServlet("/DeleteFlightServlet")
public class DeleteFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int flightId = Integer.parseInt(request.getParameter("idflight"));
	
	
		Flight admin =new Flight();
		admin.setFid(flightId);
		//update database
		FlightDao flightDao = new FlightDao(ConnectionProvider.getConnection());
		boolean ans = flightDao.deleteFlight(admin);
		
		if(ans) {
			Message msg = new Message("Profile update..!!","Success"," alert-success"); 
			HttpSession sm = request.getSession();
			sm.setAttribute("flightmsg", msg);
		}else {
			Message msg = new Message("Invalid Details..!!","error"," alert-danger"); 
			HttpSession sm = request.getSession();
			sm.setAttribute("flightmsg", msg);
		}

		response.sendRedirect("admin/viewFlight.jsp");
	}

}
