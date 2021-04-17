<%@page import="com.airline.reservation.helper.ConnectionProvider"%>
<%@page import="javax.websocket.SendResult"%>
<%@page import="java.util.List"%>
<%@page import="com.airline.reservation.entities.Flight"%>
<%@page import="com.airline.reservation.dao.AdminDao"%>
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
<link rel="stylesheet" href="../css/adminCss/addFlight.css">
<style>
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
				<div class="card mb-4 col-md-6s">
					<div class="card-header">Edit Flight details</div>
					<div class="card-body">
						<%
						AdminDao fdao = new AdminDao(ConnectionProvider.getConnection());
						int id = Integer.parseInt(request.getParameter("id"));
						List<Flight> list = fdao.getFlightById(id);
						for (Flight flight : list) {
						%>
						<div class="table-responsive ">
							<form role="form" method="post" action="../UpdateFlightServlet">
								<input type="hidden" class="form-control"
									name="idflight" value="<%=flight.getFid()%>">
								<div class="form-group mb-2">
									<label> Flight Name </label> <input type="text"
										class="form-control" name="flight_name"
										value="<%=flight.getFlightName()%>">
								</div>
								<div class="form-group mb-2">
									<label> Flight Number </label> <input type="text"
										class="form-control" name="flight_no"
										value="<%=flight.getFlightNo()%>">
								</div>
								<div class="form-group mb-2">
									<label>From City</label> <input type="text"
										class="form-control" name="from_city"
										value="<%=flight.getFromCity()%>">
								</div>
								<div class="form-group mb-2">
									<label>To City</label><input type="text" name="to_city"
										class="form-control" value="<%=flight.getToCity()%>">
								</div>
								<div class="form-group mb-2">
									<label>Flight Date</label> <input type="date"
										name="flight_date" class="form-control"
										value="<%=flight.getFlightDate()%>">
								</div>
								<div class="form-group mb-2">
									<label>Total Time</label> <input type="text"
										class="form-control" name="flight_time"
										value="<%=flight.getFlightTime()%>">
								</div>
								<div class="form-group mb-2">
									<label> Travel Duration</label><input type="text"
										class="form-control" name="travel_duration"
										value="<%=flight.getTravelDuration()%>">
								</div>
								<div class="form-group mb-2">
									<label> Airport Name</label><input type="text"
										class="form-control" name="airplane_name"
										value="<%=flight.getAirplaneName()%>">
								</div>
								<div class="form-group mb-2">
									<label> Ticket Price</label><input type="text"
										class="form-control" name="ticket_price"
										value="<%=flight.getTicketPrice()%>">
								</div>
								<div class="form-group mb-2">
									<label> Description</label> <input type="text"
										class="form-control" name="discription"
										value="<%=flight.getDescription()%>">
								</div>
								<button type="submit" class="btn btn-info" name="submit">Update</button>
							</form>
						</div>
					</div>
				</div>
				<%
				}
				%>
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