package com.airline.reservation.dao;

import java.sql.*;
import com.airline.reservation.entities.Admin;

public class AdminDao {
	private Connection con;

	public AdminDao(Connection con) {
		super();
		this.con = con;
	}
	
	//get Admin by email & pass
	public Admin getUserByEmailAndPassword(String email,String password) {
		Admin admin = null;
		try {
		String query = "SELECT * FROM admin WHERE admin_email = ? AND admin_pass = ?";
		
		PreparedStatement pstmt = this.con.prepareStatement(query);
		pstmt.setString(1, email);
		pstmt.setString(2, password);
		
		ResultSet set = pstmt.executeQuery();
		if(set.next()) {
			admin = new Admin();
			//data from db
			String name = set.getString("admin_name");
	    admin.setName(name);
	    admin.setAid(set.getInt("idadmin"));
	    admin.setEmail(set.getString("admin_email"));    
	    admin.setPassword(set.getString("admin_pass"));
	
	    
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return admin;
	}
}
