package com.airline.reservation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airline.reservation.dao.UserDao;

import com.airline.reservation.entities.Message;
import com.airline.reservation.entities.User;
import com.airline.reservation.helper.ConnectionProvider;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//login
	//fetch username and password from request
		 PrintWriter out = response.getWriter();

		String userName = request.getParameter("email");
		String userPassword = request.getParameter("password");
		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		User user = dao.getUserByEmailAndPassword(userName, userPassword);
	
		if(user == null) {
			//login......
			//error
			/* out.println("Invalid Details.....try again!"); */
			Message msg = new Message("Invalid Details..!!","error"," alert-danger"); 
			HttpSession s = request.getSession();
			s.setAttribute("msg", msg);
			response.sendRedirect("login.jsp");
		}else {
			// login success
			Message msg = new Message("success ..logi!!","success"," alert-success"); 
			HttpSession s = request.getSession();
			s.setAttribute("currentUser", user);
			response.sendRedirect("profile.jsp");
		}
	}

}
