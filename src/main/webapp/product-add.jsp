<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="errorPage.jsp" %> 
<%@ page import="java.util.Date" %>  

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
    			<a href="userprofileservlet" class="ml-3" ><img src="images/png/Asset1.png" width="" height="" class=" ml-5" alt=""><!-- profile picture --></a>
			</div>
		</nav>
<!-- Navigation ends -->

<!-- product add form start -->
		<div class="container p-3 " style="background-color: graytext; margin-top: 100px;">
			<form action="productaddservlet" method="post" enctype="multipart/form-data">
			<div class="container  col-12 w-auto text-center mt-3" style="">
				<h2>Add product</h2>
			</div>
			<div class="row allign-items-center mt-5 pl-2">
				<div class="row my-3">
					<label  class="col-sm-2 col-form-label text-center">Photo</label>
						<div class="col-sm-10 ">
      						<input type="file" class="form-control" id="inputGroupFile02" name="photo">
   						</div>
				</div>
				<div class="row my-3 ">
					<label class="col-sm-2 col-form-label text-center">Name</label>
   					<div class="col-sm-10 ">
   						<input class="form-control" type="text" placeholder="Add Name to a Product" aria-label="default input example" name="productName" >
   					</div>
				</div>
				<div class="row my-3 ">
					<label class="col-sm-2 col-form-label text-center">Description</label>
					<div class="col-sm-10">
						<input class="form-control" type="text" placeholder="Add Product Description" aria-label="default input example" name="productDescription" >
					</div>
				</div>
				<div class="row my-3 ">
					<label class="col-sm-2 col-form-label text-center">Quantity</label>
					<div class="col-sm-10">
						<input class="form-control" type="text" placeholder="Add Product Quantity" aria-label="default input example" name="productQty" >
					</div>
				</div>
				<div class="row my-3 ">
					<label class="col-sm-2 col-form-label text-center">Price</label>
					<div class="col-sm-10">
						<input class="form-control" type="text" placeholder="Add Product Price" aria-label="default input example" name="productPrice" >
					</div>
				</div>
				<div class="row my-3 ">
					<div class="text-center">
						<input class="btn btn-primary " type="submit" value="Save">
					</div>
				</div>
   					
   					
				
			</div>
		</form>
	</div>
		
			
		

	</body>
</html>