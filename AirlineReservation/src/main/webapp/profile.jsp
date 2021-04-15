<%@page import="javax.websocket.SendResult"%>
<%@page import="com.airline.reservation.entities.User"%>
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

<style>
.head {
	background: #66f;
	color: #fff;
}
</style>
</head>
<body>

	<%@include file="NavBar.jsp"%>
	<main class="container-fluid p-0 mt-5">

		<!-- Modal -->
		<div class="modal fade" id="profile-modal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header  head">
						<h5 class="modal-title" id="exampleModalLabel">ARS</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<div class="container text-center">
							<div style="font-size: 2.5rem">
								<span class="fa fa-user-circle fa-lg"></span>
							</div>
							<h5 class="modal-title" id="exampleModalLabel">
								<%=user.getFname()%>
								<%=user.getLname()%>
							</h5>
							<!-- //details -->
							<div id="profile-details">

								<table class="table">
									<tbody>
										<tr>
											<th scope="row">Email :</th>
											<td><%=user.getEmail()%></td>
										</tr>
										<tr>
											<th scope="row">Mobile :</th>
											<td><%=user.getCountryCode()%> <%=user.getMobile()%>
											</td>
										</tr>
										<tr>
											<th scope="row">DOB:</th>
											<td><%=user.getDateOfBirth()%></td>
										</tr>
										<tr>
											<th scope="row">Gender :</th>
											<td><%=user.getGender()%></td>
										</tr>
										<tr>
											<th scope="row">Country :</th>
											<td><%=user.getCountry()%></td>
										</tr>

									</tbody>
								</table>
							</div>
							<!-- profile edit -->
							<div id="profile-edit" style="display: none;">
								<h3 class="mt-2">Please Edit CareFully</h3>
								<form action="EditServlet" method="post">
									<table class="table">
										<tbody>
											<tr>
												<th scope="row">Email :</th>
												<td colspan="2"><input type="email"
													class="form-control" name="email"
													value="<%=user.getEmail()%>"></td>
											</tr>
											<tr>
												<th scope="row">Name :</th>
												<td><input type="text" class="form-control"
													name="fname" value=" <%=user.getFname()%> "></td>
												<td><input type="text" class="form-control"
													name="lname" value=" <%=user.getLname()%> "></td>
											</tr>
											<tr>
												<th scope="row">Password :</th>
												<td colspan="2"><input type="password"
													class="form-control" name="password"
													value="<%=user.getPassword()%>"></td>
											</tr>
											<tr>
												<th scope="row">Mobile :</th>
												<td><input type="text" class="form-control"
													name="countryCode" value="<%=user.getCountryCode()%>"></td>
												<td><input type="number" class="form-control"
													name="mobile" value="<%=user.getMobile()%>"></td>
											</tr>
											<tr>
												<th scope="row">DOB :</th>
												<td colspan="2"><input type="Date" class="form-control"
													name="dob" value="<%=user.getDateOfBirth()%>"></td>
											</tr>
											<%--   <tr>
			      <th scope="row"> Gender : </th>
			      <td colspan="2"><%= user.getGender().toUpperCase() %> </td>
		      </tr> --%>
											<tr>
												<th scope="row">Country :</th>
												<td colspan="2"><input type="text" class="form-control"
													name="country" value="<%=user.getCountry()%>"></td>
										</tbody>
									</table>
									<div class="container">	<button type="submit" class="btn btn-primary">Save</button></div>
								</form>
							
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
						<button type="button" id="edit-profile-buttion"
							class="btn btn-primary">Edit</button>
					</div>
				</div>
			</div>
		</div>


		
		<!-- Button trigger modal -->

	</main>
	<footer class="footer text-center py-3 bg-light fixed-bottom">
		<div class="container">
			<span class="text-muted">@Copyright &copy; 2021 canda, Inc.
				All right reserved</span>
		</div>
	</footer>


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
			$('#edit-profile-buttion').click(function() {
				if (editStatus == false) {
					$('#profile-details').hide()
					$('#profile-edit').show()
					editStatus = true;
					$(this).text("Back")
				} else {
					$('#profile-details').show()
					$('#profile-edit').hide()
					editStatus = false;
					$(this).text("Edit")
				}
			})
		})
	</script>
			<%}%>
</body>
</html>