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
<link rel="stylesheet" href="../css/adminCss/addFlight.css">
</head>
<body>
<div class="containers">
	<%@include file="adminNav.jsp"%>

		<div class="main">
			<%@include file="toggle.jsp"%>
    <section>
        <h3>Residential Lead</h3>

        <form action="../AddFlightServlet"  method="POST" id="fligh-form">
            <div class="form-group">
                <label for="fno">Flight Number</label>
                <input type="text" class="input-control" id="fno" name="flight_no" placeholder="Flight Number" required>
            </div>
            <div class="form-group">
                <label for="fn">Flight Name</label>
                <input type="text" class="input-control" id="fn" name="flight_name" placeholder="Customer Name" required>
            </div>
            <div class="form-group">
                <label for="c">From City</label>
                <input type="text" class="input-control"id="c" name="from_city" placeholder="From City" required>
            </div>
            <div class="form-group">
                <label for="tc">To City</label>
                <input type="text" class="input-control" id="tc" name="to_city" placeholder="To City" required>
            </div>
            <div class="form-group">
                <label for="date">Date</label>
                <input type="date" id="date" name="flight_date" class="input-control" placeholder="Date" required>
            </div>
            <div class="form-group">
                <label for="time">Total Time</label>
                <input type="time" id="time" name="flight_time" class="input-control" placeholder="Time" required>
            </div>
            <div class="form-group">
                <label for="">Travel Duration</label>
                <input type="time" id="td" name="travel_duration" class="input-control" placeholder="Travel Duration" required>
            </div>
             <div class="form-group">
                <label for="an">Airport Name</label>
                <input type="text" id="an" name="airplane_name" class="input-control" placeholder="Airplane Name" required>
            </div>
             <div class="form-group">
                <label for="tp">Ticket Price</label>
                <input type="text" id="tp" name="ticket_price" class="input-control" placeholder="Ticket Price" required>
            </div>
             <div class="form-group">
                <label for="des">Description</label>
                <input type="text" id="des" name="discription" class="input-control" placeholder="Description" required>
            </div>
        
        <button type="reset" class="re">Reset</button>
        <button type="submit" class="sub">Submit</button>
        </form>
        <hr>
    </section>
    </div>
    </div>
    
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
   $(document).ready(function(){
	console.log("loaded......")  
	$('#fligh-form').on('submit',function(event){
		event.preventDefault();
		
		let form = new FormData(this);
		//send register servlet
		$.ajax({
			url:"../AddFlightServlet",
			type:'POST',
			data:form,
		
			
		success:function(data,textStatus,jqXHR)  {
			console.log(data)
			if(data.trim()==='Done')
				{
			swal("Flight added successfully.. We are going to redirecting to view Flight pages.")
			.then((value) => {
				 window.location= "viewFlight.jsp"
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