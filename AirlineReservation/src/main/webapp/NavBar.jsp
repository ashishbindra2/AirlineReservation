<%@page import = "com.airline.reservation.entities.User" %>
<%  User usr=(User)session.getAttribute("currentUser"); %>
<style>
nav div a img{
  position: relative;
  display: block;
  padding: 0 10px;
  height: 30px;
  line-height: 30px;
  white-space: nowrap;
}
</style>
<nav class="navbar navbar-expand-lg navbar-light fixed-top bg-white"> <!-- style="background-color: #e3f2fd ;"-->
  <div class="container-fluid p-1">
    <a class="navbar-brand" href="index.jsp"><img alt="" src="./img/logo2.png"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about.jsp">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="listOfFlight.jsp" tabindex="-1" aria-disabled="true">Flight</a>
        </li>
           <li class="nav-item">
          <a class="nav-link " href="./adminLogin.jsp" tabindex="-1" aria-disabled="true">Admin</a>
        </li>
   
        <li class="nav-item">
          <a class="nav-link " href="contactUs.jsp" tabindex="-1" aria-disabled="true">Contact Us</a>
        </li>
          
      </ul>
   
      <ul class="navbar-nav mb-2 mb-lg-0 d-flex">
   <%   if(usr == null){
	%>

        <li class="nav-item">
              <a href="login.jsp" class="btn btn-light bg-white border-0">
              <span class="fa fa-user-circle px-2"></span>Login</a>
		</li>
  <% } else{%> 
        <li class="nav-item">
        
          <a class="nav-link active" aria-current="page" href="#!" data-bs-toggle="modal" data-bs-target="#profile-modal">
          <span class="fa fa-user-circle me-1"></span><%= usr.getFname() %></a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="LogotServlet"> <span class="fa fa-user-plus"></span> logout</a>
        </li>
        <% } %>
        </ul>
    </div>
  </div>
</nav>