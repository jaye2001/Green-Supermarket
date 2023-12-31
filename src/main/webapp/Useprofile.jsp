<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="classes.users" %>
<%@page import="java.util.Base64"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Green_supermarket</title>
<link rel="icon" type="image/x-icon" href="images/png/Asset1.png">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	
	<%
    			   
    			   if(request.getAttribute("products")== null || session.getAttribute("newusersUsers") == null){
    					response.sendRedirect("LoadProducts");
    					
    				}else{
    					
    					users newusersUsers = (users) session.getAttribute("newusersUsers"); 
    			   		
    					String getroll = newusersUsers.getRoll();
    					String adm = "admin"; %>
        
        
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
    			      <a class="nav-link" href="aboutus.jsp">About us</a>
    			    </li>
    			   
    				<% 	
    					if(getroll.equals(adm)){
    						
    						//System.out.println("hjeheh");
    						
    						%>
    						  <li class="nav-item">
                        <a class="nav-link" href="product-add.jsp" style="color:#0D6C5F;font-family: Josefin Sans">Add product</a>
                    </li>
    			    		
    				<% 	}
    					
    			   %>
    			    
    			  </ul>
    			  <form class="d-flex" role="search">
    			    <input class="form-control me-2" type="search" placeholder="Disabled input" aria-label="Search" disabled>
    			    <button class="btn btn-outline-dark text-light" style="border-color:gray; background-color:#41A317;" type="submit" disabled>Search</button>
    			  </form>
    			</div>
    			<!-- user-profile -->
    			<%   
			
			
			
				
				byte[] imageBytes1 = newusersUsers.GetImage();
	            String imageBase641 = Base64.getEncoder().encodeToString(imageBytes1);
			
			%>
    			<a href="userprofileservlet?dataFromJSP=Userpr" style="margin-left: 50px; " ><img class="card-img-top" src="data:image/*;base64, <%= imageBase641 %>" alt="Card image cap" style="border-radius: 50%; width: 60px; height: 55px; border: 2px solid #555;"><!-- profile picture --></a>
			</div>
		</nav>
	
	<div class="container ">
		<div class="container text-center" style="border-radius: 5px;">
			<img src="images/png/Asset1.png" class="align-items-center;">
				
				<div class="row">
					<label class="col-sm-2 col-form-label text-center fw-bolder">Name</label>
   					<div class="col-sm-10 ">
   						<input class="form-control" type="text" placeholder="Add Name to a Product" aria-label="default input example" name="productName" >
   					</div>
				</div>
			</div>
		</div>
	
	<% } %>
</body>
</html>