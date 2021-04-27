
<%@page import="com.airline.reservation.entities.Message"%>

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
<style>

.ab {
	background-image: url(img/airplane/d.png);
	background-position: top;
	background-repeat: no-repeat;
}
.d{
opacity:.9;
}
</style>
<body class="ab">
	<%@include file="NavBar.jsp"%>
	<main class="container-fluid p-0 mt-5">
		<div class="container-fluid pt-5">
			<div role="main">
				<div class="row justify-content-center">
					<div class="col-xl-6 col-sm-8 d">
						<div class="card my-4 ">
							<div class="card-block">
								<h2 class="card-header text-center">
									<img alt="logo" src="./img/logo2.png">
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

								</h2>
								<div class="card-body">
									<div class="row justify-content-md-center">
										<div class="col-md-8">
											<form action="AdminLoginServlet" class="mt-3" method="post">
												<div class="form-group ">
													<label for="email" class="sr-only"><strong>Email:</strong>
														<sup>*</sup></label> <input type="email" name="email"
														placeholder="Email Address" class="form-control" required>
													<span class="invalid-feedback"></span>
												</div>
												<div class="form-group mt-3">
													<label for="password" class="sr-only"><strong>Password:</strong>
														<sup>*</sup></label> <input type="password" name="password"
														placeholder="Password" class="form-control" required>
													<span class="invalid-feedback"></span>
												</div>
												<div class="rememberpass mt-3">
													<input type="checkbox" name="rememberusername"
														id="rememberusername" value="1" /> <label
														for="rememberusername">Remember username</label>
												</div>

												<input type="submit" class="btn btn-success btn-block mt-3"
													value="Log in">
											</form>

										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>