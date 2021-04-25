<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<%@page import="com.airline.reservation.entities.Flight"%>
<%@page import="com.airline.reservation.dao.FlightDao"%>
<%@page import="com.airline.reservation.entities.Admin"%>
<%@page import="com.airline.reservation.entities.Message"%>
<%@page import="com.airline.reservation.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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
	<%@ include file="NavBar.jsp"%>
	<main class="container p-0 mt-5">
		<div class="pt-5 mb-3">
			<h5>Best flights</h5>
			<p class="">Total price includes taxes + fees for 1 adult.
				Additional bag fees and other fees may apply.</p>									
				
		</div>
		<div class="container">
			<div class="accordion accordion-flush" id="accordionFlushExample">
				<%
				FlightDao fd = new FlightDao(ConnectionProvider.getConnection());
				ArrayList<Flight> list = fd.getAllFlight();
				for (Flight flight : list) {
				%>

				<div class="accordion-item border rounded mb-1">
					<h2 class="accordion-header" id="flush-headingOne">
						<button class="accordion-button collapsed border border-info" type="button"
							data-bs-toggle="collapse" data-bs-target="#s<%=flight.getFid()%>"
							aria-expanded="false" aria-controls="s<%=flight.getFid()%>">
							<div class="container">
								<div class="row">
									<i class="fas fa-plane-departure"></i>
									<div class="col-sm"><%=flight.getAirplaneName()%></div>
									<div class="col-sm"><%=flight.getFlightTime()%></div>
									<div class="col-sm"><%=flight.getTravelDuration()%>
										<div class=" text-wrap fs-6"><%=flight.getFromCity()%>--<%=flight.getToCity()%></div>
									</div>
									<div class="col-sm">available</div>
									<div class="col-sm">
										$
										<%=flight.getTicketPrice()%>

									</div>
								</div>
							</div>
						</button>
					</h2>
					<div id="s<%=flight.getFid()%>" class="accordion-collapse collapse"
						aria-labelledby="flush-headingOne"
						data-bs-parent="#accordionFlushExample">
						<div class="accordion-body">
							<div class="row">
								<div class="col text-center"><%=flight.getFromCity()%>
									------>
									<%=flight.getToCity()%></div>
								<div class="d-grid gap-2 col-6 mx-auto">
									<button type="button" onclick="booking(<%=flight.getFid()%>)"
										class="btn btn-primary ">Select</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%
				}
				%>
			</div>
		
		</div>
	</main>
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"
		integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"
		integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc"
		crossorigin="anonymous"></script>

	<script>
	function booking($id) {
	  window.location.assign("flightBooking.jsp?id="+$id)
	}
	</script>


</body>
</html>