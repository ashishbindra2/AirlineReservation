<%@page import="com.airline.reservation.helper.ConnectionProvider"%>
<%@page import="javax.websocket.SendResult"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.airline.reservation.entities.Flight"%>
<%@page import="com.airline.reservation.dao.FlightDao"%>
<%@page import="com.airline.reservation.entities.Admin"%>
<%@page import="com.airline.reservation.entities.Message"%>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
Admin admin = (Admin) session.getAttribute("currentAdmin");
if (admin == null) {
	response.sendRedirect("../adminLogin.jsp");
} else {
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<link rel="icon" href="../img/favicon-16x16.png" type="image/gif"
	sizes="16x16">
<link rel="stylesheet" href="../css/adminCss/style.css">
<style>
section {
	background: white;
	margin: .5vw 2vw;
	box-shadow: 0px 0px 0px .6px #ccc;
}

body div div section {
	margin: .5vw .5vw !important;
}

#flight {
	display: none;
}
</style>
</head>

<body>
	<div class="containers">
		<%@include file="adminNav.jsp"%>
		<div class="main">
			<%@include file="toggle.jsp"%>
			<section>
				<h3>View Flight</h3>
					<%
			Message m = (Message) session.getAttribute("flightmsg");
			if (m != null) {
			%>


			<div class="alert <%=m.getCssClass()%>" role="alert">
				<%=m.getContent()%>
			</div>
			<%
			session.removeAttribute("flightmsg");
			}
			%>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Flight Name</th>
							<th scope="col">Flight Number</th>
							<th scope="col">From City</th>
							<th scope="col">To City</th>
							<th scope="col">Date</th>
							<th scope="col">Total Time</th>
							<th scope="col">Travel Duration</th>
							<th scope="col">Airport Name</th>
							<th scope="col">Ticket Price</th>
							<th scope="col">Description</th>
							<th scope="col" colspan="2">Edit/Delete</th>
						</tr>
					</thead>
					<tbody>
						<tr>

							<%
							FlightDao fdao = new FlightDao(ConnectionProvider.getConnection());
							ArrayList<Flight> list = fdao.getAllFlight();
							for (Flight flight : list) {
							%>
							<th scope="row"><%=flight.getFid()%></th>
							<td><%=flight.getFlightName()%></td>
							<td><%=flight.getFlightNo()%></td>
							<td id="flight-row"><%=flight.getFromCity()%></td>
							<td id="flight-row"><%=flight.getToCity()%></td>
							<td id="flight-row"><%=flight.getFlightDate()%></td>
							<td id="flight-row"><%=flight.getFlightTime()%></td>
							<td id="flight-row"><%=flight.getTravelDuration()%></td>
							<td id="flight-row"><%=flight.getAirplaneName()%></td>
							<td id="flight-row"><%=flight.getTicketPrice()%></td>
							<td id="flight-row"><%=flight.getDescription()%></td>

							<td><button type="button" id="<%=flight.getFid()%>"
									class="btn btn-primary" onclick="newDoc(<%=flight.getFid()%>)">Edit</button></td>
							<td><form action="../DeleteFlightServlet" method="post">
									<input type="hidden" class="form-control" name="idflight"
										value="<%=flight.getFid()%>"> <input type="submit"
										 class="btn btn-danger" value="Delete">
								</form></td>
						</tr>
						<script type="text/javascript">
		$(document).ready(function() {
			let editStatus = false;
			var s= "<%=flight.getFid()%>
							";
								$('#'.concat(s)).click(function() {
									console.log(s)
									if (editStatus == false) {
										$('#flight-row').hide()
										$('#flight').show()
										editStatus = true;
									} else {
										$('#flight-row').show()
										$('#flight').hide()
										editStatus = false;
									}
								})
							})
						</script>
						<%
						}
						%>
					</tbody>
				</table>


			</section>
		</div>
	</div>

	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"></script>
	<script>
function newDoc($id) {
  window.location.assign("editFlight.jsp?id="+$id)
}


</script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>

	<script>
		function toggleMenu() {
			let toggle = document.querySelector('.toggle');
			let navigation = document.querySelector('.navigation');
			let main = document.querySelector('.main');
			toggle.classList.toggle('active');
			navigation.classList.toggle('active');
			main.classList.toggle('active');
		}
	</script>
	<%
	}
	%>
</body>
</html>