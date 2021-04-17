
<%@page import="com.airline.reservation.entities.Message"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="./img/favicon-16x16.png" type="image/gif"
	sizes="16x16">
<link rel="stylesheet" href="./css/login.css">


</head>
<body>
	<%@ include file="NavBar.jsp"%>



	<main class="container-fluid p-0 mt-5 back ">
		<div class="loginBox">
			<img class="user" src="./img/2.jpg" alt="avatar" width="100px">
			<h3>Sign In Here</h3>

			<%
			Message m = (Message) session.getAttribute("msg");
			if (m != null) {
			%>

			<div class="alert <%=m.getCssClass()%>" role="alert">
				<%=m.getContent()%>
			</div>
			<%
			session.removeAttribute("msg");
			}
			%>
			<form action="LoginServlet" method="post">
				<div class="inputBox">
					<input type="text" placeholder="Username or email" name="email"
						required> <span><i class="fa fa-user"></i> </span>
				</div>
				<div class="inputBox">
					<input type="password" placeholder="Password" name="password"
						required> <span><i class="fa fa-lock"></i></span>
				</div>
				<input type="submit" value="Login" name="">
			</form>
			<a href="#"> Froget password</a> <a href="registration.jsp">Create
				a new account</a>
		</div>
	</main>
</body>
</html>