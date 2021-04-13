<%@page import="javax.websocket.SendResult"%>
<%@page import = "com.airline.reservation.entities.User" %>
<%
 User user=(User)session.getAttribute("currentUser");
if(user == null){
	response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
hi
<br>
<%= user.getFname() %> 
<%= user.getLname() %>
<br>
<%= user.getMobile() %>
</body>
</html>