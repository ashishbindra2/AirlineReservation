package com.airline.reservation.helper;

import java.sql.*;
public class ConnectionProvider {
  private static Connection con;
  private static String url = "jdbc:mysql://localhost:3306/airline";
  private static String username ="root";
  private static String password = "airline";
  public static Connection getConnection() {
	  try {
		  if(con==null) {
		  // driver load the class
			    Class.forName("com.mysql.jdbc.Driver");
		  // Create a connection //give database  
		  con = DriverManager.getConnection(url,username,password);
		  }
	  }catch(Exception e){
		  e.printStackTrace();
	  }
	  return con;
  }
}
