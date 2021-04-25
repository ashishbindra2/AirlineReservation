<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.airline.reservation.helper.ConnectionProvider"%>
<%@page import="com.airline.reservation.entities.User"%>
<%@page import="com.airline.reservation.dao.FlightDao"%>
<%@page import="com.airline.reservation.dao.BookingDao"%>
<%@page import="com.airline.reservation.entities.Guest"%>
<%@page import="java.util.List"%>
<%@page import="com.airline.reservation.entities.Message"%>
<%@page import="com.airline.reservation.entities.Flight"%>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
User user = (User) session.getAttribute("currentUser");
Guest guest = (Guest) session.getAttribute("currentGuest");
if (user == null || guest == null) {
	response.sendRedirect("login.jsp");
} else {
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="./img/favicon-16x16.png" type="image/gif"
	sizes="16x16">
<link rel="stylesheet" href="./css/style.css">
</head>
<body>

	<!------ Include the above in your HEAD tag ---------->
	<%@include file="NavBar.jsp"%>
	<div class="container p-5 mt-5">
		<div class="row my-2">
			<%
			FlightDao fd = new FlightDao(ConnectionProvider.getConnection());
			int id = Integer.parseInt(request.getParameter("fid"));
			List<Flight> list = fd.getFlightById(id);
			for (Flight flight : list) {
				int fid = flight.getFid();
			%>
			<div class=" col">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
						<div class="card">
							<div class="card-header">Flight Details</div>
							<ul class="list-group">
								<li
									class="list-group-item d-flex justify-content-between lh-condensed">
									<h6 class="my-0">Flight Name & Number</h6> <small
									class="text-muted"></small> <span class="text-muted"><%=flight.getAirplaneName()%> & <%=flight.getFlightNo()%></span>
								</li>
								<li
									class="list-group-item d-flex justify-content-between lh-condensed">
									<h6 class="my-0">travel</h6> <span class="text-muted"><%=flight.getFromCity()%>--<%=flight.getToCity()%></span>
								</li>
								<li
									class="list-group-item d-flex justify-content-between lh-condensed">
									<div>
										<h6 class="my-0">Baggage Details</h6>
										<small class="text-muted">Check-in: 1 piece / 15 kgs
											per seat Hand Baggage: 7 kg's per person</small>
									</div> <span class="text-muted"><%=flight.getDescription()%></span>
								</li>
								<li
									class="list-group-item d-flex justify-content-between bg-light">
									<div class="text-success">
										<h6 class="my-0">Arriving At :</h6>
									</div> <span class="text-success"><%=flight.getFlightTime()%> (<%=flight.getTravelDuration()%>)</span>
								</li>

							</ul>
						</div>
						<%
						}
						%>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 text-right">
						<div class="card">
							<div class="card-header">User Details</div>
							<%
							BookingDao gdo = new BookingDao(ConnectionProvider.getConnection());
							int gid = gdo.guestId();
							%>
							<ul class="list-group">
								<li
									class="list-group-item d-flex justify-content-between lh-condensed">
									<div>
										<h6 class="my-0">Name </h6>
										<small class="text-muted"></small>
									</div> <span class="text-muted"><%=guest.getFirstName().toUpperCase()%>
										<%=guest.getLastName().toUpperCase()%></span>
								</li>
								<li
									class="list-group-item d-flex justify-content-between lh-condensed">
									<div>
										<h6 class="">Email </h6>
										<small class="text-muted"></small>
									</div> <span class="text-muted"><%=guest.getgEmail()%></span>
								</li>
								<li
									class="list-group-item d-flex justify-content-between  lh-condensed">
									<div >
										<h6 class="my-0">Address</h6>
									</div> <span class="text-muted"><%=guest.getgAddress()%></span>
								</li>
								<li
									class="list-group-item d-flex justify-content-between bg-light">
									<div class="text-success">
										<h6 class="my-0">Country</h6>
									</div> <span class="text-success"><%=guest.getgCountry()%></span>
								</li>
							</ul>
						</div>
					</div>
					<hr class="my-4">
					<div class="row">
						<div class="text-center">
							<h1>Receipt</h1>
						</div>

						<table class="table table-hover">
							<thead>
								<tr>
									<th>Flight Description</th>
									<th>#</th>
									<th class="text-center">Price</th>
									<th class="text-center">Total</th>
								</tr>
							</thead>
							<tbody>
								<%
								List<Flight> lit = fd.getFlightById(id);
								for (Flight flight : lit) {
									int fid = flight.getFid();
									int p = Integer.parseInt(flight.getTicketPrice());
									p = p + 20;
								%>
								<tr>
									<td class="col-md-7"><%=flight.getFlightNo()%></em>
										</h4></td>
									<td class="col-md-2" style="text-align: center"><%=flight.getFromCity().toUpperCase()%> --> <%=flight.getToCity().toUpperCase()%></td>
									<td class="col-md-1 text-center">$<%=flight.getTicketPrice()%></td>
									<td class="col-md-1 text-center">$<%=flight.getTicketPrice()%></td>
								</tr>

								<tr>
									<td> </td>
									<td> </td>
									<td class="text-right">
										<p>
											<strong>Subtotal: </strong>
										</p>
										<p>
											<strong>Tax: </strong>
										</p>
									</td>
									<td class="text-center">
										<p>
											<strong>$<%=flight.getTicketPrice()%></strong>
										</p>
										<p>
											<strong>$20.00</strong>
										</p>
									</td>
								</tr>
								<tr>
									<td> </td>
									<td> </td>
									<td class="text-right"><h4>
											<strong>Total: </strong>
										</h4></td>
									<td class="text-center text-danger"><h4>
											<strong>$<%=p%></strong>
										</h4></td>
								</tr>
								<%
								}
								%>
							</tbody>
						</table>
						<form method="post" action="DetailServlet">
							<input type="hidden" value="<%=user.getId()%>" name="uid">
							<input type="hidden" value="<%=id%>" name="fid"> <input
								type="hidden" value="<%=gid%>" name="gid">
							<button type="submit" class="btn btn-success btn-lg btn-block">
							
								Pay Now   <span class="glyphicon glyphicon-chevron-right"></span>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<%
		}
		%>
	</div>
</body>
</html>