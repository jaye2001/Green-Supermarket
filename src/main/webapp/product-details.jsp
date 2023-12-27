<%-- 
    Document   : newjsp
    Created on : Dec 7, 2023, 11:58:28 AM
    Author     : ISINDU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Green Super Market</title>
        <script src="https://kit.fontawesome.com/d6b58aaea7.js" crossorigin="anonymous"></script>
        <link href="css/product-details.css" rel="stylesheet">
         
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
              crossorigin="anonymous">
    </head>
    <body>
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
                            <a class="nav-link px-2" href="newjsp.jsp" style="color:#0D6C5F;font-family: Josefin Sans">Home</a>
                        </li>
                        <li class="nav-item px-2">
                            <a class="nav-link" href="newjsp.jsp" style="color:#0D6C5F;font-family: Josefin Sans">Cart</a>
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
                    <div class="search-bar">
                        <i class="fa-solid fa-magnifying-glass"></i>
                        <input type="text" placeholder="Search Product" class="search-bar-input">
                    </div>
                    <img src="nidu.jpg" class="user-pic">
                </div>
            </div>
        </nav>

        <section class="section" id="product">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="left-images">
                            <img src="kaku.jpg" alt="">
                            <img src="kaku.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="right-content">
                            <h4>New Green Jacket</h4>
                            <span class="price">$75.00</span>
                            <ul class="stars">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                            <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod kon tempor incididunt ut labore.</span>
                            <div class="quote">
                                <i class="fa fa-quote-left"></i><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiuski smod.</p>
                            </div>
                            
                               <div class="quantity-content">
							    <div class="left-content">
							        <h6>No. of Orders</h6>
							    </div>
							    <div class="right-content">
							        <div class="quantity buttons_added">
							            <input type="button" value="-" class="minus" onclick="decrementQuantity()">
							            <input type="number" id="quantity" name="QTY" value="1" min="1" class="input-text qty text" size="4" pattern="" inputmode="">
							            <input type="button" value="+" class="plus" onclick="incrementQuantity()">
							        </div>
							    </div>
							</div>

                            
							<div class="total">
							    <h4>Total: $210.00</h4>
							    <form action="ProductDetails" method="POST">
							    <input type="hidden" name="ID" value="331"> <!-- Replace with actual product ID -->
							    <input type="hidden" name="UserId" value="225"> <!-- Replace with actual user ID -->
							    <input type="hidden" name="price" value="75.00"> <!-- Replace with actual product price -->
							
							    <!-- Quantity Section -->
							    <div class="quantity-content">
							        <div class="left-content">
							            <h6>No. of Orders</h6>
							        </div>
							        <div class="right-content">
							            <div class="quantity buttons_added">
							                <input type="button" value="-" class="minus" onclick="decrementQuantity()">
							                <input type="number" id="quantity" name="QTY" value="1" min="1" class="input-text qty text" size="4" pattern="" inputmode="">
							                <input type="button" value="+" class="plus" onclick="incrementQuantity()">
							            </div>
							        </div>
							    </div>
							
							    <!-- Add to Cart Button -->
							    <div class="total">
							        <h4>Total: $210.00</h4>
							        <button type="submit" class="btn btn-success btn-lg">Add To Cart</button>
							    </div>
							    </form>

							</div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <script>
			    function incrementQuantity() {
			        var value = parseInt(document.getElementById('quantity').value, 10);
			        value = isNaN(value) ? 0 : value;
			        value++;
			        document.getElementById('quantity').value = value;
			    }
			
			    function decrementQuantity() {
			        var value = parseInt(document.getElementById('quantity').value, 10);
			        value = isNaN(value) ? 0 : value;
			        value = value < 1 ? 1 : value - 1; // Prevents quantity from going below 1
			        document.getElementById('quantity').value = value;
			    }
			</script>
			
		  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
            integrity="sha384-0evHeTau6xJ0eze5LvC9aE6A1F5t7AVTPUfRrRJx9xgTR4fjDpFVVkHZPE7YsGPt" 
            crossorigin="anonymous"></script>
			        

    </body>
</html>
