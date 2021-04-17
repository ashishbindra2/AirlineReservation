<%@page import="com.airline.reservation.helper.ConnectionProvider"%>
<%@page import="javax.websocket.SendResult"%>
<%@page import="java.util.List"%>
<%@page import="com.airline.reservation.entities.User"%>
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
<title>Admin - Setting</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="../img/favicon-16x16.png" type="image/gif"
	sizes="16x16">
<link rel="stylesheet" href="../css/adminCss/style.css">
<style>
body div div section {
	margin: .5vw .5vw !important;
}
</style>
</head>
<body>
	<div class="containers">
		<%@include file="adminNav.jsp"%>
		<div class="main">
			<%@include file="toggle.jsp"%>
			<section class="p-5">
				<div class="row">
					<div class="col-sm-4">
						<div class="card" style="width: 18rem;">
							<div class="card-header">Admin Details</div>
							<ul class="list-group list-group-flush">
								<div id="details-admin">
									<li class="list-group-item"><b> Name:</b><i><%=admin.getName()%></i>
									</li>
									<li class="list-group-item"><b>Email:</b> <i><%=admin.getEmail()%></i></li>
									<li class="list-group-item"><b>Password:</b> <i><%=admin.getPassword()%></i></li>
								</div>
								<form action="../EditAdminServlets" method="post" id="admin-form" style="display:none;">
									<li class="list-group-item"><input type="text"
										class="form-control" name="name" placeholder="Admin Name"
										value=<%=admin.getName()%>></li>
									<li class="list-group-item"><input type="email"
										class="form-control" name="email" placeholder="Admin Email"
										value=<%=admin.getEmail()%>></li>
									<li class="list-group-item"><input type="password"
										class="form-control" name="password" placeholder="Admin Password"
										value=<%=admin.getPassword()%>></li>
											<li class="list-group-item"><input type="submit" class="btn btn-primary"></li>
								</form>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
					
						<%
			Message m = (Message) session.getAttribute("adminmsg");
			if (m != null) {
			%>


			<div class="alert <%=m.getCssClass()%>" role="alert">
				<%=m.getContent()%>
			</div>
			<%
			session.removeAttribute("adminmsg");
			}
			%>
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">Edit</h5>
								<p class="card-text">To edit the admin name, email and
									password click edit buttion.</p>
								<a role="button" id="edit-button" class="btn btn-primary">Edit</a>
							
							</div>
						</div>
					</div>
				</div>
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
	
	
	<script type="text/javascript">
		$(document).ready(function() {
			let editStatus = false;
			$('#edit-button').click(function() {
				if (editStatus == false) {
					$('#details-admin').hide()
					$('#admin-form').show()
					editStatus = true;
					$(this).text("Back")
				} else {
					$('#details-admin').show()
					$('#admin-form').hide()
					editStatus = false;
					$(this).text("Edit")
				}
			})
		})
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