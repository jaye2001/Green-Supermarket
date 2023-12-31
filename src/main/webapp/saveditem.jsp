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

</head>

<body>
<jsp:include page="/SavedServlet" />
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
	
<!-- Navigation start -->
	<nav class="navbar navbar-light navbar-expand-lg py-4" style="background-color:#e3f2fd;">
		<div class="container">
			<a class="navbar-brand" href="home.jsp" style="margin-right: 60px"> <img src="images/png/Asset1.png" width="" height="" class="d-inline-block align-top" alt=""></a>
				<!-- Toggle button -->
				<button class="navbar-toggler " type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      				<span class="navbar-toggler-icon"></span>
    			</button>
    			<!-- collapse navigation bar -->
				<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    			  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
    			    <li class="nav-item">
    			      <a class="nav-link "  href="#">Home</a>
    			    </li>
    			    <li class="nav-item">
    			      <a class="nav-link" href="#">Cart</a>
    			    </li>
    			    <li class="nav-item">
    			      <a class="nav-link active fw-bolder" aria-current="page" href="">Saved</a>
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
    			<a href="userprofileservlet?dataFromJSP=Userpr" style="margin-left: 50px; " ><img src="data:image/jpeg;base64,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" width="" height="" class=" ml-5" alt="" style="border-radius: 50%; width: 60px; height: 55px; border: 2px solid #555;"><!-- profile picture --></a>
			</div>
		</nav>
<!-- Navigation ends -->
<h1 style="text-align: center; margin-top: 50px; font-weight: bolder;">SAVED ITEMS</h1>

<!-- product history start -->
		<% for(int i =0; i<20; i++ )
		{ %>
		<div class="row my-5 " style="margin-left: 80px; margin-right: 80px;">
			<% for(int x=0; x<4; x++) {  %>
				<div class="card col-3  mx-5" style="width: 18rem;">
  					<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPsAAACUCAMAAABiDq8bAAAAA1BMVEWAgICQdD0xAAAAO0lEQVR4nO3BMQEAAADCoPVPbQ0PoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAL4MkbAAAU2IE7MAAAAASUVORK5CYII=" class="card-img-top" alt="..." >
  						<div class="card-body">
    						<h5 class="card-title">Card title</h5>
    						<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
   							 <a href="#" class="btn btn-primary">Go somewhere</a>
 						</div>
				</div>
				<% } %>
		</div>	
		
		<% } %>
		

	</body>
</html>