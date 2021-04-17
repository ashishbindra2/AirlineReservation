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

import com.airline.reservation.dao.AdminDao;
import com.airline.reservation.dao.UserDao;
import com.airline.reservation.entities.Admin;
import com.airline.reservation.entities.Message;
import com.airline.reservation.entities.User;
import com.airline.reservation.helper.ConnectionProvider;

@MultipartConfig
@WebServlet("/EditAdminServlets")
public class EditAdminServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String adminEmail = request.getParameter("email");
		String adminName = request.getParameter("name");
		String adminPassword = request.getParameter("password");
		
		//get the user from the session..
		HttpSession s = request.getSession();
		Admin admin =(Admin)s.getAttribute("currentAdmin");
		admin.setEmail(adminEmail);
		admin.setName(adminName);
		admin.setPassword(adminPassword);
		
		
		//update database
		AdminDao userDao = new AdminDao(ConnectionProvider.getConnection());
		boolean ans = userDao.updateAdmin(admin);
		
		if(ans) {
			Message msg = new Message("Profile update..!!","Success"," alert-success"); 
			HttpSession sm = request.getSession();
			sm.setAttribute("adminmsg", msg);
		}else {
			Message msg = new Message("Invalid Details..!!","error"," alert-danger"); 
			HttpSession sm = request.getSession();
			sm.setAttribute("adminmsg", msg);
		}

		response.sendRedirect("admin/setting.jsp");
	}

	

}
