<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
User user = (User) session.getAttribute("currentUser");
if (user == null) {
	response.sendRedirect("login.jsp");
} else {
%>

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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="./img/favicon-16x16.png" type="image/gif"
	sizes="16x16">
<link rel="stylesheet" href="./css/style.css">

</head>
<style>
.rounded {
	border-radius: 1rem
}

.nav-pills .nav-link {
	color: #555
}

.nav-pills .nav-link.active {
	color: white
}

input[type="radio"] {
	
}
.gtc{
grid-template-columns: 1fr 2fr; height:100vh;
}
.bold {
	font-weight: bold
}

@media ( max-width :670px) {
	.pay {
		display: none;
	}
	body div img {
		display: none;
	}
	.gtc{
grid-template-columns: 1fr;
}
}
</style>
<body>

	<%@include file="NavBar.jsp"%>
	<div class="container py-5">
		<div class="mt-4"></div>
		<div class="d-grid gtc">
			<div class="bg-light border rounded-3">
				<img alt="at" src="img/airplane/au.jpg" class="img-fluid pay" style="display:100%;">
			</div>
			<div class="bg-light border rounded-3">
				<div class="row">
					<!-- For demo purpose -->
					<div class="row my-4">
						<div class="col-lg-8 mx-auto text-center">
							<h1 class="display-6">Payment Forms</h1>
						</div>
					</div>
					<!-- End -->
				</div>
				<div class="row">
					<div class="col-lg-11 mx-auto mt-2">
						<div class="card ">
							<div class="card-header">
								<div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">
									<!-- Credit card form tabs -->
									<ul role="tablist"
										class="nav bg-light nav-pills rounded nav-fill mb-3">
										<li class="nav-item">
										<a data-toggle="pill" href="#" class="nav-link active ">
											<i class="fa fa-credit-card" aria-hidden="true"></i>
 															Credit Card
										</a></li>
										<li class="nav-item"><a data-toggle="pill" href="#l"
											class="nav-link "> <i class="fa fa-cc-paypal" aria-hidden="true"></i>

												Paypal
										</a></li>
										<li class="nav-item"><a data-toggle="pill" href="#"
											class="nav-link "> <i class="fa fa-mobile" aria-hidden="true"></i>

												Net Banking
										</a></li>
									</ul>
								</div>
								<!-- End -->
								<!-- Credit card form content -->
								<div class="tab-content">
									<!-- credit card info-->
									<div id="credit-card" class="tab-pane fade show active pt-3">
										<form role="form" action="PaymentServlet" method="post"
											id="pay-form">
											<div class="form-group">
												<label for="username">
													<h6>Card Owner</h6>
												</label> <input type="text" name="username"
													placeholder="Card Owner Name" required
													class="form-control ">
											</div>
											<div class="form-group">
												<label for="cardNumber">
													<h6>Card number</h6>
												</label>
												<div class="input-group">
													<input type="text" name="cardNumber"
														placeholder="Valid card number" class="form-control "
														required>
													<div class="input-group-append">
														<span class="input-group-text text-muted"> 
														    <i class="fa fa-cc-visa" aria-hidden="true"></i> 
															<i class="fa fa-cc-mastercard" aria-hidden="true"></i>
															<i	class="fab fa-cc-amex mx-1"></i></span>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-8">
													<div class="form-group">
														<label><span class="hidden-xs">
																<h6>Expiration Date</h6>
														</span></label>
														<div class="input-group">
															<input type="number" placeholder="MM" name="emonth"
																class="form-control" required> <input
																type="number" placeholder="YY" name="eyear"
																class="form-control" required>
														</div>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="form-group mb-4">
														<label data-toggle="tooltip"
															title="Three digit CV code on the back of your card">
															<h6>
																CVV <i class="fa fa-question-circle d-inline"></i>
															</h6>
														</label> <input type="text" name="cvv" required
															class="form-control">
													</div>
												</div>
											</div>
											 <input type="hidden" name="uid" value="<%=user.getId() %>"
															class="form-control">
											<div class="card-footer">
												<button type="submit"
													class="subscribe btn btn-primary btn-block shadow-sm">
													Confirm Payment</button>
											</div>
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
	
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
   $(document).ready(function(){
	console.log("loaded......")  
	$('pay-form').on('submit',function(event){
		event.preventDefault();
		
		let form = new FormData(this);
		//send register servlet
		$.ajax({
			url:"PaymentServlet",
			type:'POST',
			data:form,
		
			
		success:function(data,textStatus,jqXHR)  {
			console.log(data)
			if(data.trim()==='Done')
				{
			swal("Registered successfully.. We are going to redirecting to Detail .")
			.then((value) => {
				 window.location= "profile.jsp"
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
  }); 
</script>
</body>
<%} %>
</html>