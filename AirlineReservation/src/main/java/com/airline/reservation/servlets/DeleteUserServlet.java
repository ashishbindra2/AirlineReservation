package com.airline.reservation.servlets;

import java.io.IOException;
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
@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("iduser"));
		User admin =new User();
		admin.setId(userId);
		//update database
		UserDao userDao = new UserDao(ConnectionProvider.getConnection());
		boolean ans = userDao.deleteUser(admin);
		
		if(ans) {
			Message msg = new Message("Profile update..!!","Success"," alert-success"); 
			HttpSession sm = request.getSession();
			sm.setAttribute("Usermsg", msg);
		}else {
			Message msg = new Message("Invalid Details..!!","error"," alert-danger"); 
			HttpSession sm = request.getSession();
			sm.setAttribute("Usermsg", msg);
		}

		response.sendRedirect("admin/viewUser.jsp");
	}
	

}
