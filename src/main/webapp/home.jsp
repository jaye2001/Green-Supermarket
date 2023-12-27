<%@page import="com.green.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
        
        <script src="https://kit.fontawesome.com/b805876efb.js" crossorigin="anonymous"></script>
        
        <link href="css/home.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        
        <nav class="navbar navbar-expand-lg navbar-light fixed-top nav-bar" style="background-color: #CAEFE6">
        <div class="container"  >
            <a class="navbar-brand me-2" href="Homepage.html">
                <img src="/image/Monzo.png" height="38" alt="Logo" loading="lazy"
                    style="margin-top: -1px;" />
            </a>


            <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
                data-mdb-target="#navbarButtonsExample" aria-controls="navbarButtonsExample" aria-expanded="false"
                aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>


            <div class="collapse navbar-collapse" id="navbarButtonsExample">


                <ul class="navbar-nav mb-2 mb-lg-0 mx-auto" >
                    <li class="nav-item active">
                        <a class="nav-link px-2" href="home.jsp" style="color:#0D6C5F;font-family: Josefin Sans">Home</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="Cart" style="color:#0D6C5F;font-family: Josefin Sans">Cart</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="newjsp.jsp" style="color:#0D6C5F;font-family: Josefin Sans">Saved</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="" style="color:#0D6C5F;font-family: Josefin Sans">Profile</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="" style="color:#0D6C5F;font-family: Josefin Sans">About Us</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="" style="color:#0D6C5F;font-family: Josefin Sans">Contact us</a>
                    </li>

                </ul>
                <div class="d-lg-none px-2">
                </div>
            </div>
                <input type="text" placeholder="Search Product" style="width: 200px; height: 30px;border-radius: 50px; border-color: transparent; background-color: #CAEFE6;  font-family: Josefin Sans; color: #0D6C5F; text-align: center">
        </div>
       
    </nav>
        
        
        
        
        
        <div class="topnav" style="float: right" >
            <input type="text" placeholder="Search Product" style="width: 200px; height: 30px;border-radius: 50px; border-color: transparent; background-color: #CAEFE6;  font-family: Josefin Sans; color: #0D6C5F; text-align: center">
           
        </div>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner" style="height: 400px; margin-left: 50px; margin-bottom: 100px;">
    <div class="carousel-item active">
      <img class="d-block w-100" src="813hfEpmb3L.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="20200123-Vegetables.webp" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="224B2910-54AF-41AF-85D4-2FF13C66BDA1-1140x660.jpeg" alt="Third slide">
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
		if(request.getAttribute("products")== null){
			response.sendRedirect("LoadProducts");
			
		}else{
			List<Product> products = (List<Product>) request.getAttribute("products"); 
			for(Product product : products){
				
	%>
      <div class="row" style="margin-left: 50px; margin-bottom: 30px;">
       <div class="col-sm-3">
        <div class="card" style="width: 18rem">
            <img class="card-img-top" src="img/<%= product.GetImage() %>" alt="Card image cap" style="border-radius: 15px; height: 200px; width: 18rem;">
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
