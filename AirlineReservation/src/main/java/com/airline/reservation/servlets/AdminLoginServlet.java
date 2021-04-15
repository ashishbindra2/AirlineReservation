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
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out = response.getWriter();

			String userName = request.getParameter("email");
			String userPassword = request.getParameter("password");
			
			AdminDao adao = new AdminDao(ConnectionProvider.getConnection());
			Admin admin = adao.getUserByEmailAndPassword(userName, userPassword);
		    if(admin!=null){
				HttpSession s = request.getSession();
				s.setAttribute("currentAdmin", admin);
				response.sendRedirect("./admin/index.jsp");
			}else {
				Message msg = new Message("Invalid Details..!!","erroe"," alert-danger"); 
				HttpSession s = request.getSession();
				s.setAttribute("adminlogin", msg);
				response.sendRedirect("login.jsp");
			}
	}

}
