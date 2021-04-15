package com.airline.reservation.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airline.reservation.entities.Message;


@WebServlet("/LogotServlet")
public class LogotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession s = request.getSession();
		s.removeAttribute("currentUser");
		Message m =new Message("Logot Sucessfully", "success","alert-success");
		s.setAttribute("msg", m);
		response.sendRedirect("login.jsp");
	}

}
