<%@page import="com.green.FeedbackEntry"%>
<%@page import="com.green.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Green Super Market</title>
        <script src="https://kit.fontawesome.com/d6b58aaea7.js" crossorigin="anonymous"></script>
        <link href="css/productdetail.css" rel="stylesheet">
         
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="./js/cart.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light fixed-top nav-bar" style="background-color: #CAEFE6">
        <div class="container"  >
            <a class="navbar-brand me-2" href="Homepage.html">
                <img src="Asset 1.png" height="50" alt="Logo" loading="lazy"
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
               
            </div>
                
                <div class="search-bar">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input type="text" placeholder="Search Product" class="search-bar-input">
                 </div>
                 
                <img src="nidu.jpg" class="user-pic">
        </div>
    </nav>
<%
/* 	List<Product> products = (List<Product>) request.getAttribute("products"); 
	
	Product product = new Product();
	if(products != null && request.getParameter("productid")!=null){
		int id = Integer.parseInt(request.getParameter("productid"));
		for(Product _product : products){
			if(_product.GetId()==id){
				product.Set_values(_product.GetId(), _product.GetImage(), _product.GetName(), _product.GetDescription(), _product.GetPrice());
			}
		}
	}else{
		response.sendRedirect("home.jsp");
	}
 */
 
 
 Product product = (Product) request.getAttribute("product"); 
/* 
 if(request.getParameter("productid")== null || product == null){
 	response.sendRedirect("home.jsp");
 }
 */
%>


        
        <section class="section" id="product">

        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                <div class="left-images">
                    <img src="img/<%= product.GetImage() %>">
                    <img src="img/<%= product.GetImage() %>">
                    <p><%= product.GetImage() %></p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="right-content">
                    <h4><%=product.GetName() %></h4>
                    <span class="price"> <%= product.GetPrice() %></span>
                    <ul class="stars">
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                    </ul>
                    <span><%= product.GetDescription() %></span>
                    <%-- <div class="quote">
                        <i class="fa fa-quote-left"></i><p><%= product.GetDescription() %></p>
                    </div> --%>
                    <div class="quantity-content">
                        <div class="left-content">
                            <h6>No. of Items</h6>
                        </div>
                        <div class="right-content">
                            <div class="quantity buttons_added">
                                <input type="button" value="-" class="minus" onclick="reduceQuantity()"><input class="quantityValue input-text qty text" type="number" step="1" min="1" max="" name="quantity" value="1" title="Qty" size="4" pattern="" inputmode=""><input type="button" value="+" class="plus" onclick="addQuantity()">
                            </div>
                        </div>
                    </div>
                    <div class="total">
                        <h4 id="itemPrice" data-price="<%= product.GetPrice() %>">Total: $<%= product.GetPrice() %></h4>
                        <form action="AddToCart" method="POST">
					    <input type="hidden" name="prid" value="<%= product.GetId() %>">
					    <input type="hidden" name="qty" class="quantityValue" value="1"> <!-- Assuming this is your quantity field -->
					    <div class="main-border-button">
					        <input type="submit" value="Add To Cart" ">
					    </div>
					   </form>

                    </div>
                </div>
                <form action="submitFeedback" method="POST" id="feedbackForm">
                <div class="feedback-container">
        			<p class="feedHead">Give us your feedback</p>
        			<textarea id="feedbackInput" placeholder="Write your feedback here..." name="message"></textarea>
        			<input type="text" name="u_id" value="1" hidden="true">
        			<input type="text" name="p_id" value="<%= product.GetId() %>" hidden="true">
        			<input type="submit" value="Submit Feedback" class="feedbackButton"> 
					
        			<div class="feedback-list">
           		    <h3>Feedbacks</h3>
           			 
    				 <%
      			  		List<FeedbackEntry> feedbackList = (List<FeedbackEntry>) request.getAttribute("feedbackList");
    				 
        				if (feedbackList != null) {
            			for (FeedbackEntry feedbackEntry : feedbackList) {
    				%>
                		<div class="feedback-item">
                   		 <strong><%= feedbackEntry.getUserName() %>:</strong>
                    	<%= feedbackEntry.getFeedbackMessage() %>
                		</div>
    				<%
           				 }
       				 }
   				 %>
        			</div>
    			</div>
    			</form>
    			
    			
    			
                
            </div>
            </div>
        </div>
    </section>
   	<script>
    document.getElementById('feedbackForm').onsubmit = function() {
        var qty = parseInt(document.getElementById('quantityValue').value);
        if (isNaN(qty) || qty <= 0) {
            alert("Please enter a valid quantity.");
            return false;
        }
        return true;
    };
   </script>
   	
    </body>
</html>