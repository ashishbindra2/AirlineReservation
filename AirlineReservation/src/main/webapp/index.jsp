<%@page import="com.airline.reservation.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*" %>
<!--   page directive -->
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airline Reservation System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" 	rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="./img/favicon-16x16.png" type="image/gif" sizes="16x16">
<link rel="stylesheet" href="./css/style.css">


<style type="text/css">
.maintxt {
    background-image: url(img/airplane/k.jpg);
    margin-top:-100px;
    min-height:90vh;
   background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.form-control:valid {
  background-color:  #ebecee!important;
} 
</style>
</head>
<body>
<%@ include file = "NavBar.jsp" %>
<main class="container-fluid p-0 mt-5">

	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="col-md-7 col-sm-10 col-md-push-5">
						<div class="booking-cta">
							<h1>Travel safely with us</h1>
							<p>As one of the largest and most experienced global airlines throughout the COVID-19 crisis, you can rely on us to take you on your next journey safely.
							</p>
						</div>
						<a href="login.jsp" class="btn btn-outline-light btn-lg"><span
								class="fa fa-user-circle fa-spin"></span> Login</a>
					</div>
					<div class="col-md-5 col-md-pull-7">
						<div class="booking-form">
							<form method = "post" action="SerachFlightServlet" >
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">Flying From</span>
											<input class="form-control" name="fromCity" type="text" placeholder="Flying From" required>
										</div>
									</div>

									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">Flying To</span>
											<input class="form-control" name="toCity"  type="text" placeholder="Flying To" required>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">Departing</span>
											<input class="form-control" name="date" type="date" required>
										</div>
									</div>
								</div>
								<div class="form-group">
									<span class="form-label">Your Destination</span>
									<input class="form-control" type="text"
										placeholder="Enter a destination or hotel name">
								</div>

								<div class="row">
									<div class="col-sm-4">
										<div class="form-group">
											<span class="form-label">Adults</span>
											<select class="form-select form-control">
												<option value="1">1</option>
												<option value="2">2</option>
												<option value="3">3</option>
											</select>
											<span class="select-arrow"></span>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<span class="form-label">Children</span>
											<select class="form-control">
												<option>0</option>
												<option>1</option>
												<option>2</option>
											</select>
											<span class="select-arrow"></span>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<span class="form-label">Travel Class</span>
											<select class="form-select form-control">
												<option>Economy Class</option>
												<option>Business Class</option>
												<option>First Class</option>
											</select>
											<span class="select-arrow"></span>
										</div>
									</div>
								</div>
								<div class="form-btn">
								<input type="submit" class="submit-btn"  value="Check availability">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



</main>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js"></script>
</body>
</html>