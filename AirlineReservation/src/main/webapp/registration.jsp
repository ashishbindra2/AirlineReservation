<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" 	rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<link rel="icon" href="./img/favicon-16x16.png" type="image/gif" sizes="16x16">

</head>
<style type="text/css">
body{}
  section div img {width:100%;}
  main{
/*   height:100%; */
  background-image: url(img/airplane/l.jpg);
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

  }
</style>
<body>

<main>


<%@ include file = "NavBar.jsp" %>
<section class="testimonial py-5 " id="testimonial">
	<div class="container">
		<div class="row mt-5">
			<div class="col-md-4 py-5 bg-primary text-white text-center ">
				<div class=" ">
					<div class="card-body">
						<img src="./img/airplane/a.png" style="width:30%">
						<h2 class="py-3">Registration</h2>
						<hr class="my-4">
						<p class="lead">It only takes a minute to register for your account</p>
						<hr class="my-4">
					</div>
				</div>
			</div>
			<div class="col-md-8 py-3 border bg-white">
				<h4 class="pb-2">Please fill with your details</h4>
				<form method="POST" action="RegisterServlet" id="reg-form">
					<label>Let's create your credentials
					</label>
					<div class="form-row">
						<div class="form-group col-md-4">
							<input type="email" name="email" id="Email" placeholder="Email"
								class="form-control  'is-invalid'" required>
							<span class="invalid-feedback"></span>
						</div>
						<div class="form-group col-md-4">
							<input id="Full Name" name="password" placeholder="Password" type="password"
								class="form-control" required>
							<span class="invalid-feedback"></span>
						</div>
						<div class="form-group col-md-4">
							<input type="password" name="confirmPass" id="confirm Password"
								placeholder="confirm Password" class="form-control" required>
							<span class="invalid-feedback"></span>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<select id="inputState" name="code" class="form-control  'is-invalid' " required>
								<option selected disabled>Country code</option>
								<option value='+90'> +90</option>
								<option value='+99'> +99</option>
								<option value='+91'>+91</option>
								<option value='+98'> +98</option>
							</select>
							<span class="invalid-feedback"></span>
						</div>
						<div class="form-group col-md-6">
							<input id="Mobile" name="mobile" placeholder="Mobile No." type="text" class="form-control  "
								required>
							<span class="invalid-feedback"></span>
						</div>

					</div>
					<hr>
					<label>Your personal details
					</label>
					<div class="form-row">
						<div class="form-group col-3">
							<select class="form-control" name="title" id="exampleSelect1">
								<option selected disabled>Title</option>
								<option>Mr</option>
								<option>Miss</option>
								<option>Ms</option>
								<option>Mrs</option>
								<option>Dr</option>
							</select>
						</div>

						<div class="form-group col-md-4">
							<input id="Name" name="name" placeholder="First Name (as per passport)" type="text"
								class="form-control 'is-invalid'" required>
							<span class="invalid-feedback"></span>
						</div>
						<!-- 	<div class="form-group col-md-3">
							<input id="Name" name="name" placeholder="Mid Name (optional)" type="text"
								class="form-control 'is-invalid'">
							<span class="invalid-feedback"></span></div> -->

						<div class="form-group col-md-4">
							<input id="fname" name="lname" placeholder="Last Name (as per passport)" type="text"
								class="form-control 'is-invalid'" required>
							<span class="invalid-feedback"></span>
						</div>
					</div>
					<div class="form-row">
						<div class="col-6">
							<input class="form-control" name="dob" type="date" placeholder="DD/MM/YY"
								id="example-date-input" required>
						</div>
						<div class="col-6">
							<label class="form-label px-2"> Gender (optional)</label>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender" id="inlineRadio1"
									value="Male">
								<label class="form-check-label" for="inlineRadio1">Male</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender" id="inlineRadio2"
									value="Female">
								<label class="form-check-label" for="inlineRadio2">Female</label>
							</div>
						</div>
					</div>
					<hr>
					<label>Where do you live?</label>
					<div class="form-row">
						<div class="form-group col-md-6">
							<input id="un" name="country" placeholder="Country" type="text" class="form-control"
								required>
							<span class="invalid-feedback"></span>
						</div>

						<div class="form-check ms-2">
							<input class="form-check-input" type="checkbox" name="term" id="defaultCheck1">
							<label class="form-check-label" for="defaultCheck1">
								I agree to the Terms and Conditions
							</label>
						</div>
					</div>
					<div class="form-row">
						<button type="Submit" name="Submit" class="btn btn-danger">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
</main>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
   $(document).ready(function(){
	console.log("loaded......")  
	$('#reg-form').on('submit',function(event){
		event.preventDefault();
		
		let form = new FormData(this);
		//send register servlet
		$.ajax({
			url:"RegisterServlet",
			type:'POST',
			data:form,
		
			
		success:function(data,textStatus,jqXHR)  {
			console.log(data)
			if(data.trim()==='Done')
				{
			swal("Registered successfully.. We are going to redirecting to login page.")
			.then((value) => {
				 window.location= "login.jsp"
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
</html>