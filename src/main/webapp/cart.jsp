<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.green.CartProduct"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Green Super Market - Cart</title>
    <script src="https://kit.fontawesome.com/d6b58aaea7.js" crossorigin="anonymous"></script>
    <link href="css/product-details.css" rel="stylesheet">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
          crossorigin="anonymous">
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top nav-bar" style="background-color: #CAEFE6">
        <div class="container">
            <a class="navbar-brand me-2" href="Homepage.html">
                <img src="Asset 1.png" height="50" alt="Logo" loading="lazy" style="margin-top: -1px;" />
            </a>

            <button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
                data-mdb-target="#navbarButtonsExample" aria-controls="navbarButtonsExample" aria-expanded="false"
                aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>

            <div class="collapse navbar-collapse" id="navbarButtonsExample">
                <ul class="navbar-nav mb-2 mb-lg-0 mx-auto">
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
                        <a class="nav-link" href="#" style="color:#0D6C5F;font-family: Josefin Sans">Profile</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="#" style="color:#0D6C5F;font-family: Josefin Sans">About Us</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="#" style="color:#0D6C5F;font-family: Josefin Sans">Contact us</a>
                    </li>
                </ul>

                <div class="search-bar">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input type="text" placeholder="Search Product" class="search-bar-input">
                </div>

                <img src="nidu.jpg" class="user-pic">
            </div>
        </div>
    </nav>

    <!-- Cart Section -->
    <section class="section" id="cart">
        <div class="container mt-5 pt-5">
            <h2>Your Cart</h2>
            <div class="cart-items">
                <!-- Cart items will be added here -->
                <div class="cart-item">
                    <div class="row">
                        <div class="col-md-6">Item Name</div>
                        <div class="col-md-2">Price</div>
                        <div class="col-md-2">Quantity</div>
                        <div class="col-md-2">Total</div>
                        <br><br>
                    </div>
                    
                </div>
                <%
                List<CartProduct> cartItemList =  (List<CartProduct>) request.getAttribute("cartItemList");
                
                int totalQty = 0;
                float totalPrice = 0;
                
                if (cartItemList != null) {
                	for (CartProduct cartItem : cartItemList) {
                		totalPrice += ((float)cartItem.getCartQty()) * cartItem.GetPrice();
                		totalQty += cartItem.getCartQty();
                 %>
                <div class="cart-item">
                <br>
				    <div class="row">
				        <div class="col-md-6">
			        		<h6><%= cartItem.GetName() %></h6>
				        </div>
				        <div class="col-md-2"><%= cartItem.GetPrice() %></div>
				        <div class="col-md-2"><%= cartItem.getCartQty() %></div>
				        <div class="col-md-2"><%= ((float)cartItem.getCartQty()) * cartItem.GetPrice() %></div>
				    </div>
				    <%
                	}
                }
				    %>
				</div>
            </div>
            <br>
			<form action="customerDetails.jsp" method="post" id="checkoutForm">
			    <!-- Cart Summary -->
			    <div class="cart-summary mt-4">
			        <h4>Cart Summary</h4>
			        <div>Total Items: <span id="total-items"><%= totalQty %></span></div>
			        <div>Total Price: <span id="total-price">LKR <%= totalPrice %></span></div>
			        <button type="submit" class="btn btn-primary mt-3">Checkout</button>
			    </div>
			</form>

        </div>
        
        
        
        
        
        
        
        
		  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
		            integrity="sha384-0evHeTau6xJ0eze5LvC9aE6A1F5t7AVTPUfRrRJx9xgTR4fjDpFVVkHZPE7YsGPt" 
		            crossorigin="anonymous"></script>
            
            
            
            
			 <div id="paypalSpace" class="paymentImage" style="width: 50%; background-color:#FFFFFF; padding: 40px;">

                    <script src="https://www.paypal.com/sdk/js?client-id=AZ2izagloQIvqTt2IxFFS893NINCNTUaUlPiAz6LwIsQK-J6Vz3cfoFIG1EpUdXpBvi2kL3HQvDbPCQB&currency=USD" data-sdk-integration-source="button-factory"></script>
            </div>
                    <!-- Add the PayPal Smart Payment Button script -->


		 <script>
             const retrievedTotalBillAmount = <%= totalPrice %>;
             const billAmountInRS = (retrievedTotalBillAmount / 330).toFixed(2);
             paypal.Buttons({
            	 
            	 style: {
                     color:  'blue',
                     shape:  'pill',
                     label:  'pay',
                     height: 40
                    
                     
                 },
            	 
                 createOrder: function(data, actions) {
                     // Set up the transaction details
                     return actions.order.create({
                         purchase_units: [{
                             amount: {
                                 value: billAmountInRS // Set the amount based on your checkout total
                             }
                         }]
                     }); 
                    
                 },
                 onApprove: function(data, actions) {
                     // Redirect to your PayPalServlet with the order ID
                     return actions.order.capture().then(function(details) {
                         window.location.href = 'paymentStatus?orderID=' + data.orderID;
                     });
                 }
             }).render('#paypalSpace');
         </script> 

</body>
</html>
   
    