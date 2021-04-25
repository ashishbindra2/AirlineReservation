package com.airline.reservation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airline.reservation.dao.BookingDao;
import com.airline.reservation.entities.Pay;
import com.airline.reservation.helper.ConnectionProvider;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 {
		PrintWriter out = response.getWriter();
		String cardNumber = request.getParameter("cardNumber");
		String emonth = request.getParameter("emonth");
		String eyear = request.getParameter("eyear");
		String cvv = request.getParameter("cvv");
		String userName = request.getParameter("username");
		int uid = Integer.parseInt(request.getParameter("uid"));
		//String address = request.getParameter("address");
		// create a user object and set all data to the i=object
		Pay pay = new Pay(uid,  userName, cardNumber,  emonth,  eyear, cvv);

		// create a user dao object
		BookingDao dao = new BookingDao(ConnectionProvider.getConnection());

		if (dao.userPay(pay)) {
			out.println("Done");
			HttpSession s = request.getSession();
			s.setAttribute("currentpay", pay);

			response.sendRedirect("profile.jsp");

		} else {
			out.println("error not insert!!");
		}

	}

}
}
