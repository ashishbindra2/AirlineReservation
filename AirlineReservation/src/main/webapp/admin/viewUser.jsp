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
			<section>
				<h3>View Flight</h3>
				<%
				Message m = (Message) session.getAttribute("Usermsg");
				if (m != null) {
				%>


				<div class="alert <%=m.getCssClass()%>" role="alert">
					<%=m.getContent()%>
				</div>
				<%
				session.removeAttribute("Usermsg");
				}
				%>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Name</th>
							<th scope="col">Email</th>
							<th scope="col">Mobile</th>
							<th scope="col">DOB</th>
							<th scope="col">Gender</th>
							<th scope="col">Country</th>
							<th scope="col">Delete</th>
						</tr>
					</thead>
					<tbody>
						<tr>

							<%
							AdminDao fdao = new AdminDao(ConnectionProvider.getConnection());
							List<User> list = fdao.getAllUser();
							for (User user : list) {
							%>
							<th scope="row"><%=user.getId()%></th>
							<td><%=user.getFname()%><%=user.getLname()%></td>
							<td><%=user.getEmail()%></td>
							<td><%=user.getCountryCode()%> <%=user.getMobile()%></td>
							<td><%=user.getDateOfBirth()%></td>
							<td><%=user.getGender()%></td>
							<td><%=user.getCountry()%></td>
							<td><form action="../DeleteUserServlet" method="post">
									<input type="hidden" class="form-control" name="iduser"	value="<%=user.getId()%>" > 
									<input type="submit" class="btn btn-danger" value="Delete">
							</form></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
			</section>
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