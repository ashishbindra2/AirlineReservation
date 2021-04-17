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


public class logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession ad = request.getSession();
		ad.removeAttribute("currentAdmin");
		Message m =new Message("Logot Sucessfully", "success","alert-success");
		ad.setAttribute("adminlogin", m);
		response.sendRedirect("adminLogin.jsp");
	}

}
