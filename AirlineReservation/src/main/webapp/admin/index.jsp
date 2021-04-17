<%@page import="com.airline.reservation.helper.ConnectionProvider"%>
<%@page import="com.airline.reservation.entities.Admin"%>
<%@page import="com.airline.reservation.entities.Message"%>
<%@page import="com.airline.reservation.entities.User"%>
<%@page import="com.airline.reservation.entities.Flight"%>
<%@page import="com.airline.reservation.dao.FlightDao"%>
<%@page import="com.airline.reservation.dao.UserDao"%>
<%@page import="com.airline.reservation.dao.AdminDao"%>
<%@page import="java.util.List"%>
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
<title>Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="../img/favicon-16x16.png" type="image/gif"
	sizes="16x16">
<link rel="stylesheet" href="../css/adminCss/style.css">

</head>
<body>
	<div class="containers">
		<%@include file="adminNav.jsp"%>

		<div class="main">
			<%@include file="toggle.jsp"%>
			<div class="cardBox">
				<%
				Message m = (Message) session.getAttribute("adminlogin");
				if (m != null) {
				%>


				<div class="alert <%=m.getCssClass()%>" role="alert">
					<%=m.getContent()%>
				</div>
				<%
				session.removeAttribute("adminlogin");
				}
				%>

				<%
							FlightDao fdao = new FlightDao(ConnectionProvider.getConnection());
							int fn = fdao.numberOfFlight();
						
							%>
				<div class="card">
					<div>
						<div class="number">1,042</div>
						<div class="cardNumber">Number Of Booking</div>
					</div>
					<div class="iconBox">
						<i class="fa fa-eye" aria-hidden="true"></i>
					</div>
				</div>
				<div class="card">
					<div>
						<div class="number">
							<%= fn %></div>
						<div class="cardNumber">No Of Fight</div>
					</div>
					<div class="iconBox">
						<i class="fa fa-shopping-cart" aria-hidden="true"></i>
					</div>
				</div>
				<div class="card">
					<div>
						<div class="number">142</div>
						<div class="cardNumber">Comments</div>
					</div>
					<div class="iconBox">
						<i class="fa fa-comment" aria-hidden="true"></i>
					</div>
				</div>
				<div class="card">
					<div>
						<div class="number">$1,042</div>
						<div class="cardNumber">Earning</div>
					</div>
					<div class="iconBox">
						<i class="fa fa-usd" aria-hidden="true"></i>
					</div>
				</div>
			</div>
			<div class="details">
				<div class="recentOrders">
					<div class="cardHeader">
						<h2>Recent Orders</h2>
						<a href="" class="btn">view All</a>
					</div>

					<table>
						<thead>
							<tr>
								<td>Name</td>
								<td>Price</td>
								<td>Payment</td>
								<td>Status</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Star Refrigenator</td>
								<td>$123</td>
								<td>Paid</td>
								<td><span class="status deleiver"> Deliver</span></td>
							</tr>
							<tr>
								<td>Star Refrigenator</td>
								<td>$123</td>
								<td>Paid</td>
								<td><span class="status return"> return</span></td>
							</tr>
							<tr>
								<td>Star Refrigenator</td>
								<td>$123</td>
								<td>Paid</td>
								<td><span class="status deleiver"> Deliver</span></td>
							</tr>
							<tr>
								<td>Star Refrigenator</td>
								<td>$123</td>
								<td>Paid</td>
								<td><span class="status inprogress"> inprogress</span></td>
							</tr>
							<tr>
								<td>Star Refrigenator</td>
								<td>$123</td>
								<td>Paid</td>
								<td><span class="status pending"> pending</span></td>
							</tr>
							<tr>
								<td>Star Refrigenator</td>
								<td>$123</td>
								<td>Paid</td>
								<td><span class="status return"> return</span></td>
							</tr>
							<tr>
								<td>Star Refrigenator</td>
								<td>$123</td>
								<td>Paid</td>
								<td><span class="status pending"> pending</span></td>
							</tr>
							<tr>
								<td>Star Refrigenator</td>
								<td>$123</td>
								<td>Paid</td>
								<td><span class="status deleiver"> Deliver</span></td>
							</tr>
							<tr>
								<td>Star Refrigenator</td>
								<td>$123</td>
								<td>Paid</td>
								<td><span class="status inprogress">inprogress</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="recentCustomers">
					<div class="cardHeader">
						<h2>Recent Customers</h2>
					</div>
					<table>
						<tbody>
						<%
							AdminDao dos = new AdminDao(ConnectionProvider.getConnection());
							List<User> list = dos.getAllUser();
							for (User user : list) {
							%>
							<tr>
								<!-- <td width="60px">
									<div class="imgBox">
										<img src="img1.png" alt="as">
									</div>
								</td> -->
								<td><h4>
										<%=user.getFname()%><br> <span> <%=user.getLname()%></span>
									</h4></td>
							</tr>
							<%} %>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
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