<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sorry ! Something went wrong....</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" 	rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="./img/favicon-16x16.png" type="image/gif" sizes="16x16">
</head>
<body>
<div class="container text-center">
<img alt="error" src="./img/error.png" class="image-fluid" width="340px">
<h3 class="display-3">Sorry ! Something went wrong...</h3>
<%= exception %>
<a href="index.jsp" class="btn btn-light btn-lg mt-3">Home</a>
</div>
</body>
</html>