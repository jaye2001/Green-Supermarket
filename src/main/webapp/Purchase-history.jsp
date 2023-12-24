<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="errorPage.jsp" %> 


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Green-Supermarket</title>
<link rel="icon" type="image/x-icon" href="images/png/Asset1.png">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<jsp:include page="/PurchaseHistServlet" />
</head>

<body>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
	
<!-- Navigation start -->
	<nav class="navbar navbar-light navbar-expand-lg py-4" style="background-color:#e3f2fd;">
		<div class="container">
			<a class="navbar-brand" href="home.jsp"> <img src="images/png/Asset1.png" width="" height="" class="d-inline-block align-top" alt=""></a>
				<!-- Toggle button -->
				<button class="navbar-toggler " type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      				<span class="navbar-toggler-icon"></span>
    			</button>
    			<!-- collapse navigation bar -->
				<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    			  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
    			    <li class="nav-item">
    			      <a class="nav-link active" aria-current="page" href="#">Home</a>
    			    </li>
    			    <li class="nav-item">
    			      <a class="nav-link" href="#">Cart</a>
    			    </li>
    			    <li class="nav-item">
    			      <a class="nav-link" href="">Saved</a>
    			    </li>
    			    <li class="nav-item">
    			      <a class="nav-link" href="">Profile</a>
    			    </li>
    			    <li class="nav-item">
    			      <a class="nav-link" href="">About us</a>
    			    </li>
    			    <li class="nav-item">
    			      <a class="nav-link" href="">Contact us</a>
    			    </li>
    			  </ul>
    			  <form class="d-flex" role="search">
    			    <input class="form-control me-2" type="search" placeholder="Disabled input" aria-label="Search" disabled>
    			    <button class="btn btn-outline-dark text-light" style="border-color:gray; background-color:#81bcff;" type="submit" disabled>Search</button>
    			  </form>
    			</div>
    			<!-- user-profile -->
    			<a href="userprofileservlet?dataFromJSP=Userpr" class="ml-3" ><img src="images/png/Asset1.png" width="" height="" class=" ml-5" alt=""><!-- profile picture --></a>
			</div>
		</nav>
<!-- Navigation ends -->



<!-- product history start -->
		
	
		

	</body>
</html>