<%-- <%@page import="com.airline.reservation.helper.ConnectionProvider"%>
<%@page import="javax.websocket.SendResult"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.airline.reservation.dao.AdminDao"%>
<%@page import="com.airline.reservation.entities.Flight"%>
<%@page import="com.airline.reservation.dao.FlightDao"%>
<%@page import="com.airline.reservation.entities.Admin"%>
<%@page import="com.airline.reservation.entities.Message"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	/* FlightDao fd = new FlightDao(ConnectionProvider.getConnection()); */
	String from = request.getParameter("city");
	String to = request.getParameter("to");
/* 	List<Flight> list = fd.searchFlights(from,to);
	for (Flight flight : list) { */
	%>
	<%=	from %>
<%-- 	<th scope="row"><%=flight.getFid()%></th>
	<td><%=flight.getFlightName()%></td>
	<td><%=flight.getFlightNo()%></td>
	<td id="flight-row"><%=flight.getFromCity()%></td>
	<td id="flight-row"><%=flight.getToCity()%></td>
	<td id="flight-row"><%=flight.getFlightDate()%></td>
	<td id="flight-row"><%=flight.getFlightTime()%></td>
	<td id="flight-row"><%=flight.getTravelDuration()%></td>
	<td id="flight-row"><%=flight.getAirplaneName()%></td>
	<td id="flight-row"><%=flight.getTicketPrice()%></td>
	<td id="flight-row"><%=flight.getDescription()%></td>--%>
	<%-- <%
	}
	%>  --%>
</body>
</html>