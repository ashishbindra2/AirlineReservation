package com.airline.reservation.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airline.reservation.dao.BookingDao;
import com.airline.reservation.dao.FlightDao;
import com.airline.reservation.entities.Booking;
import com.airline.reservation.entities.Flight;
import com.airline.reservation.helper.ConnectionProvider;

/**
 * Servlet implementation class DetailServlet
 */
@WebServlet("/DetailServlet")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int fid = Integer.parseInt(request.getParameter("fid"));	
		int uid = Integer.parseInt(request.getParameter("uid"));
		int gid = Integer.parseInt(request.getParameter("gid"));
		// create a user object and set all data to the i=object
	    int NumOfSeat = 26;
	    Random rand = new Random();
	    int rand_int1 = rand.nextInt(26);
	    int rand1 = rand.nextInt(2);
	    char[] a= {'A','B','C'};
	    String seatNo = a[rand1]+""+rand_int1;
		
		Booking booked = new Booking(uid,fid,gid,seatNo,NumOfSeat);
		
		//create a user dao object 
		BookingDao dao = new BookingDao(ConnectionProvider.getConnection());
      
		if(dao.saveDetails(booked)) {
			out.println("Done");
			HttpSession s = request.getSession();
			s.setAttribute("currentBooking", booked);
			response.sendRedirect("payment.jsp?fid="+fid);
		
		}else {
			out.println("error not insert!!");
		}
	}

}
