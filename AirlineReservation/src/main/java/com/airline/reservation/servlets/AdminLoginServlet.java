package com.airline.reservation.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airline.reservation.dao.AdminDao;
import com.airline.reservation.entities.Admin;
import com.airline.reservation.entities.Message;
import com.airline.reservation.helper.ConnectionProvider;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out = response.getWriter();

			String userName = request.getParameter("email");
			String userPassword = request.getParameter("password");
			
			AdminDao adao = new AdminDao(ConnectionProvider.getConnection());
			Admin admin = adao.getUserByEmailAndPassword(userName, userPassword);
		    if(admin==null){
			Message ms = new Message("Invalid Details..!!","erroe"," alert-danger"); 
				HttpSession ad = request.getSession();
				ad.setAttribute("adminlogin", ms);
				response.sendRedirect("adminLogin.jsp");
			}else {
				HttpSession ad = request.getSession();
			ad.setAttribute("currentAdmin", admin);
			response.sendRedirect("./admin/index.jsp");
			}	
	}

}
