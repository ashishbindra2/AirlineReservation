<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="./img/favicon-16x16.png" type="image/gif"
	sizes="16x16">
<link rel="stylesheet" href="./css/style.css">


<style type="text/css">
.maintxt {
	/* 	background-color: black;
	opacity: .5;
	color: #fff; */
	
}

div.transbox {
	/* 	margin: 30px;
	background-color: #ffffff;
	opacity: 0.6; */
	
}

body { /* 
	background-image: url(img/airplane/kevin-unsplash.jpg); 
	
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	min-height: 100vh;
	overflow: hidden;*/
	
}

.cont {
	background-image: url(img/airplane/kevin-unsplash.jpg);
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	
}
</style>
</head>
<body>
	<%@ include file="NavBar.jsp"%>
	<main class="container-fluide p-0 m-t">
		<div class="row mt-2">
			<div class="text-center">
				<h1 class=" fst-italic ">.</h1>
			</div>
		</div>
		<div class="container py-5" id="custom-cards">
			<h2 class="pb-2 border-bottom">Contact Us</h2>

			<div class="row row-cols-3 align-items-stretch py-5">
				<div class="col">
					<div
						class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-5 shadow-lg"
						style="background-image: url('img/airplane/hanson-lu-No.jpg'); background-position: center; background-repeat: no-repeat; background-size: cover;">
						<div style="background-color: black;; opacity: 0.6;"
							class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
							<h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Call
								Center</h2>
							<div class="form-text">
								For any type of flight queries, call our call center on <small
									class="text-nowrap b text-white"> 1800 2100 999</small>
							</div>

						</div>
					</div>
				</div>

				<div class="col">
					<div
						class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-5 shadow-lg"
						style="background-image: url('img/airplane/saj.jpg'); background-position: center; background-repeat: no-repeat; background-size: cover;">
						<div style="background-color: black; opacity: 0.6;"
							class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
							<h2 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Refunds</h2>
							<div class="form-text">For any refund related queries
								(travel agents/customers), you can write to us with your PNR
								details to feedback@goair.in</div>

						</div>
					</div>
				</div>

				<div class="col">
					<div
						class="card card-cover h-100 overflow-hidden text-white bg-dark rounded-5 shadow-lg"
						style="background-image: url('img/airplane/hanson-lu.jpg'); background-position: center; background-repeat: no-repeat; background-size: cover;">
						<div style="background-color: black;; opacity: 0.6;"
							class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
							<h2 class="pt-5  mt-5 mb-4  display-6 lh-1 fw-bold">Our
								Offices</h2>
							<div class="form-text">
								To know about our corporate office and airport <br> <small
									class="text-nowrap b text-white  text-wrap px-auto">
									DUBAI (DXB) Al<br> Naboodah Travel & Tourism Agencies,<br>
									Al Shoala Building, Al Ittihad Street,<br> Deira, PO Box
									1200, Dubai
								</small>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
<!-- 		<div class="row">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Special title treatment</h5>
					<p class="card-text">With supporting text below as a natural
						lead-in to additional content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Special title treatment</h5>
					<p class="card-text">With supporting text below as a natural
						lead-in to additional content.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div> -->
		<div class="container">
			<div class="card mx-auto mb-5 transbox maintxt">
			<!-- 	<div class="col-12  card-header text-center ">
					<h1 class="display-4 fst-italic">Contact Us</h1>
				</div> -->
				<div class="row">
					<div class="col-md-12">
						<div class="col-12  card-header text-center ">
							<h5 class=" ">Customer Feedback</h5>
							<p class="card-text">For any post travel experience that you
								may want to share with us.</p>
						</div>
						<div class="card-body text-center">
							
							<div class="row">
								<div class="col-6 cont" style="margin-top:-1rem!important; margin-bottom:-1rem!important;"></div>
								<div class="col-6">
									<form action="action_page.php">

										<label for="fname" class="float-start">First Name</label> <input
											type="text" id="fname" name="firstname"
											class="form-control form-control-sm"
											placeholder="Your name.."> <label for="lname"
											class="float-start">Last Name</label> <input type="text"
											id="lname" name="lastname"
											class="form-control form-control-sm"
											placeholder="Your last name.."> <label for="country"
											class="float-start">Country</label> <select id="country"
											class="form-select form-select-sm" name="country">
											<option value="australia">Australia</option>
											<option value="canada">Canada</option>
											<option value="usa">USA</option>
										</select> <label for="subject" class="float-start">Subject</label>
										<textarea class="form-control form-control-sm" id="subject"
											name="subject" placeholder="Write something.."></textarea>
										<div class="d-grid gap-2 col-6 mx-auto">
											<input type="submit" class="btn btn-primary btn-sm mt-3"
												value="Submit">
										</div>
									</form>
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