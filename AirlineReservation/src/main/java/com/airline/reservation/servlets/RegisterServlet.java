package com.airline.reservation.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.reservation.dao.UserDao;
import com.airline.reservation.entities.User;
import com.airline.reservation.helper.ConnectionProvider;

@MultipartConfig
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//fetch data from data
	  PrintWriter out = response.getWriter();

		String term = request.getParameter("term");
		if(term==null) {
			out.print("please tick the term and condtion!!");
		}
		else {
		String email = request.getParameter("email");	
		String pass = request.getParameter("password");
		long mobile = Long.parseLong(request.getParameter("mobile"));
		String countryCode =  request.getParameter("code");
	
		String title = request.getParameter("title");
		String fname = request.getParameter("name");
		String lname = request.getParameter("lname");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String country = request.getParameter("country");

		// create a user object and set all data to the i=object
		
		User user = new User(email,pass,countryCode,mobile,title,fname,lname,dob,gender,country);
		
		//create a user dao object
		UserDao dao = new UserDao(ConnectionProvider.getConnection());

		if(dao.saveUser(user)) {
			out.println("Done");
		}else {
			out.println("error not insert!!");
		}
		}
	}

}
