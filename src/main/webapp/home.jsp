<%@page import="com.green.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="classes.users" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
        
        <script src="https://kit.fontawesome.com/b805876efb.js" crossorigin="anonymous"></script>
        
        <link href="css/home.css" rel="stylesheet">
        <title>JSP Page</title>
        <link rel="icon" type="image/x-icon" href="images/png/Asset1.png">
    </head>
    <body>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
        <nav class="navbar navbar-light navbar-expand-lg py-4" style="background-color:#CAEFE6; margin-bottom: 10px;">
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
    			      <a class="nav-link "  href="home.jsp">Home</a>
    			    </li>
    			    <li class="nav-item">
    			      <a class="nav-link" href="Cart">Cart</a>
    			    </li>
    			    
    			    <li class="nav-item">
    			      <a class="nav-link" href="">Profile</a>
    			    </li>
    			    <li class="nav-item">
    			      <a class="nav-link" href="">About us</a>
    			    </li>
    			  </ul>
    			  <form class="d-flex" role="search">
    			    <input class="form-control me-2" type="search" placeholder="Disabled input" aria-label="Search" disabled>
    			    <button class="btn btn-outline-dark text-light" style="border-color:gray; background-color:#81bcff;" type="submit" disabled>Search</button>
    			  </form>
    			</div>
    			<!-- user-profile -->
    			<%   if(request.getAttribute("products")== null || session.getAttribute("newusersUsers") == null){
			response.sendRedirect("LoadProducts");
			
		}else{
			
			users newusersUsers = (users) session.getAttribute("newusersUsers"); 
			
				
				byte[] imageBytes1 = newusersUsers.GetImage();
	            String imageBase641 = Base64.getEncoder().encodeToString(imageBytes1);
			
			%>
    			<a href="userprofileservlet?dataFromJSP=Userpr" style="margin-left: 50px; " ><img class="card-img-top" src="data:image/*;base64, <%= imageBase641 %>" alt="Card image cap" style="border-radius: 50%; width: 60px; height: 55px; border: 2px solid #555;"><!-- profile picture --></a>
			</div>
		</nav>
        
      
        
        
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" style="height: 400px; margin-left: 50px; margin-bottom: 100px;">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images/png/WhatsApp Image 2023-12-31 at 21.08.36.jpeg" alt="First slide" href="">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/png/WhatsApp Image 2023-12-31 at 21.14.23.jpeg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/png/WhatsApp Image 2023-12-31 at 21.14.24.jpeg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

	<div style="display: flex; justify-conent: space-between; flex-wrap: wrap;">
		
	<% 
		
			List<Product> products = (List<Product>) request.getAttribute("products"); 
			for(Product product : products){
				
				byte[] imageBytes = product.GetImage();
	            String imageBase64 = Base64.getEncoder().encodeToString(imageBytes);
	%>
      <div class="row" style="margin-left: 50px; margin-bottom: 30px;">
       <div class="col-sm-3">
        <div class="card" style="width: 18rem">

            <img class="card-img-top" src="data:image/*;base64, <%= imageBase64 %>" alt="Card image cap" style="border-radius: 15px; height: 200px; width: 18rem;">
            <div class="card-body">
            <a href="googlr.com" class="product"><%= product.GetName() %></a>   
            <p class = "product"><%=product.GetPrice() %></p> 
            <a href="productdet?productid=<%= product.GetId() %>" class="buyBut"> Buy</a>
            
            <div class="check d-flex flex-row-reverse" >
            <div style="position: relative; width: 10px; height: 10px; " >
                
                <input type="checkbox" class="save-checkbox" style="position: absolute; opacity: 0;" />
                <i class="fa-solid fa-heart" ></i>
            </div>
            </div>    
        </div>
       </div>
       </div> 
   	  </div>
  	  <%}} %>
  	</div>  
    </body>
</html>
