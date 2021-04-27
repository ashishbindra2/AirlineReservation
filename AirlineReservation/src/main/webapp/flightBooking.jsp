<%@page import="com.airline.reservation.helper.ConnectionProvider"%>
<%@page import="com.airline.reservation.entities.User"%>
<%@page import="com.airline.reservation.entities.Message"%>
<%@page import="com.airline.reservation.entities.Flight"%>
<%@page import="com.airline.reservation.dao.FlightDao"%>
<%@page import="java.util.List"%>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
User user = (User) session.getAttribute("currentUser");
if (user == null) {
	response.sendRedirect("login.jsp");
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
<link rel="icon" href="./img/favicon-16x16.png" type="image/gif"
	sizes="16x16">
<link rel="stylesheet" href="./css/style.css">


</head>
<body class="bg-light">
	<%@ include file="NavBar.jsp"%>
	<div class="container">
		<div class="py-5 text-center">
			<img class="d-block mx-auto mb-4"
				src="./img/airplane/l.jpg" alt="" width="100%"
				height="340px">
			<h2>Passenger Details</h2>
			<p class="lead">Please enter all passenger names as they appear
				on the passenger's government-issued photo identification.</p>
		</div>

		<div class="row">
			<div class="col-md-4 order-md-2 mb-4">
				<h4 class="d-flex justify-content-between align-items-center mb-3">
					<span class="text-muted">Summary</span> <span
						class="badge badge-secondary badge-pill">3</span>
				</h4>
				<%
				FlightDao fd = new FlightDao(ConnectionProvider.getConnection());
				int id = Integer.parseInt(request.getParameter("id"));
				List<Flight> list = fd.getFlightById(id);
				for (Flight flight : list) {
					int fid = flight.getFid();
				%>
				<ul class="list-group mb-3">
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0"><%=flight.getAirplaneName()%></h6>
							<small class="text-muted"><%=flight.getFromCity()%>--<%=flight.getToCity()%></small>
						</div> <span class="text-muted">$<%=flight.getTicketPrice()%></span>
					</li>
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">Baggage Details</h6>
							<small class="text-muted">Check-in: 1 piece / 15 kgs per
								seat Hand Baggage: 7 kgs per person</small>
						</div> <span class="text-muted">-</span>
					</li>
					<li class="list-group-item d-flex justify-content-between bg-light">
						<div class="text-success">
							<h6 class="my-0">Price Summary</h6>
							<small>1 Adult</small>
						</div> <span class="text-success">-$6,508</span>
					</li>
					<li class="list-group-item d-flex justify-content-between"><span>Total
							(USD)</span> <strong>$20</strong></li>
				</ul>
				<%
				}
				%>

			</div>
			<div class="col-md-8 order-md-1">
				<h4 class="mb-3">Passenger 1 - Adult</h4>
				<form class="needs-validation" action="FlightBookingServlet"
					method="post" id="flightBook">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="firstName">First name</label> <input type="text"
								class="form-control" id="firstName" name="first_name"
								placeholder="First Name" required>
							<div class="invalid-feedback">Valid first name is required.
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="lastName">Last name</label> <input type="text"
								class="form-control" id="lastName" name="last_name"
								placeholder="Last Name" required>
							<div class="invalid-feedback">Valid last name is required.
							</div>
						</div>
					</div>

					<div class="mb-3">
						<label for="email">Email<!--  <span class="text-muted">(Optional)</span> --></label>
						<input type="email" class="form-control" id="email" name="email"
							placeholder="you@example.com" required>
						<div class="invalid-feedback">Please enter a valid email
							address for shipping updates.</div>
					</div>

					<div class="mb-3">
						<label for="address">Address</label> <input type="text"
							class="form-control" id="address" name="address"
							placeholder="1234 Main St" required>
						<div class="invalid-feedback">Please enter your shipping
							address.</div>
					</div>



					<div class="row">
						<div class="col-md-5 mb-3">
							<label for="country">Country</label> <select
								class=" form-select d-block w-100" id="country" name="country"
								required>
								<option value="">Choose...</option>
								<option value="United States">United States</option>
							</select>
							<div class="invalid-feedback">Please select a valid
								country.</div>
						</div>

						<div class="col-md-3 mb-3">
							<label for="zip">Zip</label> <input type="text" name="zip"
								class="form-control" id="zip" placeholder="14000" required>
							<div class="invalid-feedback">Zip code required.</div>
						</div>
					</div>
					<hr class="mb-4">
					<input type="hidden" name="uid" value="<%=user.getId()%>">
					
					<input type="hidden" id="fid" name="fid" value="<%=id%>">
					
					<button class="btn btn-primary btn-lg btn-block" type="submit">Continue
						to payment</button>
					<hr class="mb-4">
				</form>
			</div>
		</div>


	</div>

	
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	
<script>
  <%--  $(document).ready(function(){
	console.log("loaded......")  
	
	$('#flightBook').on('submit',function(event){
	event.preventDefault();
		
		let form = new FormData(this);
		
 	
		//send register servlet
		$.ajax({
			url:"FlightBookingServlet",
			type:'POST',
			data:form,
		
			
		success:function(data,textStatus,jqXHR)  {
			console.log(data)
			if(data.trim()==='Done')
				{
			swal("We are going to redirecting to detail.")
			.then((value) => {
				 window.location= "details.jsp?fid="+<%=id%>
			});
				}
			else{
				swal(data);
			}
		},
		 error: function(jqXHR, textStatus, errorThrown) {
	           console.log(textStatus, errorThrown);
	           swal("something went wrong  try again")
				
	        },
	    processData: false,
		contentType:false
	});
	});
  });  --%>
</script>
</body>
<%
	}
	%>
</body>
</html>