<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="./img/favicon-16x16.png" type="image/gif"
	sizes="16x16">
<link rel="stylesheet" href="./css/style.css">

<style>
.maintxt {
	background-color: black;
	opacity: .7;
	color: #fff;
}

.ab {
	background-image: url(img/airplane/virgin.jpg);
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<%@ include file="NavBar.jsp"%>
	<main>

		<section class="py-5 text-center ">
			<div class="row py-lg-5 ab">
				<div class="col-lg-8 col-md-8 mx-auto maintxt text-white">
					<h1 class="fw-light">About Us</h1>
					<p class="lead ">Group that comprises leading brands including
						157-year-old Bombay Burmah, 141-year-old Bombay Dyeing,
						102-year-old Britannia Ltd., 66-year-old National Peroxide
						Limited, the decade old Bombay Realty, and many others.The airline
						commenced operations in November 2005 with its inaugural flight
						from Mumbai to Ahmedabad. Since inception, the 15-year-old airline
						has flown over 81 million passengers till date.</p>

				</div>
			</div>
		</section>

		<div class="album py-5 bg-light">
			<div class="container">

				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
					<div class="col">
						<div class="card shadow-sm">
							<img class="bd-placeholder-img card-img-top" width="100%"
								height="225" role="img" src="./img/airplane/1.jpg">
							<div class="card-body">
								<p class="card-text">Access curated all-inclusive holiday
									packages with GoHoliday, one stop shop for your vacation needs.
									The Smart way to holiday.</p>

							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img class="bd-placeholder-img card-img-top" width="100%"
								height="225" role="img" src="./img/airplane/c.jpg">
							<div class="card-body">
								<p class="card-text">Don not let baggage weigh you down.
									Pre-purchase Excess Baggage to avail up to 20% off as compared
									to airport rate.</p>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img class="bd-placeholder-img card-img-top" width="100%"
								height="225" role="img" src="./img/airplane/saj.jpg">
							<div class="card-body">
								<p class="card-text">Be it window, aisle or even seats with
									extra leg room, pre-book any seats of your choice at a nominal
									fee.</p>
							</div>
						</div>
					</div>

					<div class="col">
						<div class="card shadow-sm">
							<img class="bd-placeholder-img card-img-top" width="100%"
								height="225" role="img" src="./img/airplane/deniz.jpg">

							<div class="card-body">
								<p class="card-text">Make yourself comfortable beyond the
									runway. Europcar bring you exclusive Car Rental services.</p>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img class="bd-placeholder-img card-img-top" width="100%"
								height="225" role="img" src="./img/airplane/j.jpg">
							<div class="card-body">
								<p class="card-text">Be it window, aisle or even seats with
									extra leg room, pre-book any seats of your choice at a nominal
									fee.</p>

							</div>
						</div>
					</div>
					<div class="col">
						<div class="card shadow-sm">
							<img class="bd-placeholder-img card-img-top" width="100%"
								height="225" role="img" src="./img/airplane/k.jpg">
							<div class="card-body">
								<p class="card-text">Access curated all-inclusive holiday
									packages with GoHoliday, one stop shop for your vacation needs.
									The Smart way to holiday.</p>
							
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>

	</main>
</body>
</html>