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

import com.airline.reservation.dao.UserDao;
import com.airline.reservation.entities.Message;
import com.airline.reservation.entities.User;
import com.airline.reservation.helper.ConnectionProvider;

@MultipartConfig
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//fetch the data
		PrintWriter out = response.getWriter();
		String userEmail = request.getParameter("email");
		String userFname = request.getParameter("fname");
		String userLname = request.getParameter("lname");
		String userCountryCode = request.getParameter("countryCode");
		Long userMobile = Long.parseLong( request.getParameter("mobile"));
		String userPassword = request.getParameter("password");
		String userDOB = request.getParameter("dob");
		String userCountry = request.getParameter("country");
		
		//get the user from the session..
		HttpSession s = request.getSession();
		User user =(User)s.getAttribute("currentUser");
		user.setEmail(userEmail);
		user.setFname(userFname);
		user.setLname(userLname);
		user.setCountryCode(userCountryCode);
		user.setMobile(userMobile);
		user.setPassword(userPassword);
		user.setDateOfBirth(userDOB);
		user.setCountry(userCountry);
		
		//update database
		UserDao userDao = new UserDao(ConnectionProvider.getConnection());
		boolean ans = userDao.updateUser(user);
		
		if(ans) {
			Message msg = new Message("Profile update..!!","Success"," alert-success"); 
			HttpSession sm = request.getSession();
			sm.setAttribute("msg", msg);
		}else {
			Message msg = new Message("Invalid Details..!!","error"," alert-danger"); 
			HttpSession sm = request.getSession();
			sm.setAttribute("msg", msg);
		}

		response.sendRedirect("profile.jsp");
	}

}
