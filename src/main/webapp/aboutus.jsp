<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Green Super Market</title>
        <script src="https://kit.fontawesome.com/d6b58aaea7.js" crossorigin="anonymous"></script>
        <link href="css/aboutus.css" rel="stylesheet">
         
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light fixed-top nav-bar" style="background-color: #CAEFE6">
        <div class="container"  >
            <a class="navbar-brand me-2" href="Homepage.html">
                <img src="images/png/Asset1.png" height="50" alt="Logo" loading="lazy"
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
                        <a class="nav-link" href="cart.jsp" style="color:#0D6C5F;font-family: Josefin Sans">Cart</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="" style="color:#0D6C5F;font-family: Josefin Sans">Profile</a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="aboutus.jsp" style="color:#0D6C5F;font-family: Josefin Sans">About Us</a>
                    </li>
                  

                </ul>
               
            </div>
                
                <div class="search-bar">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input type="text" placeholder="Search Product" class="search-bar-input">
                 </div>
                 
                <img src="image/kaku.jpg" class="user-pic">
        </div>
    </nav>



    <main>

        <header class="page-header">
            <div class="container">
                <div class="row">

                    <div class="col-lg-10 col-12 mx-auto">
                        <h1 class="text-white">About us</h1>

                        <strong class="text-white">welcomes to our green Super Market</strong>
                    </div>

                </div>
            </div>

            <div class="overlay"></div>
        </header>


        <div class="container-xxl py-5">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6">
                        <div class="row g-3">
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-100 wow zoomIn" data-wow-delay="0.1s"
                                    src="image/kaku.jpg">
                            </div>
                            <div class="col-6 text-start">
                                <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.3s" src="image/kaku.jpg"
                                    style="margin-top: 25%;">
                            </div>
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.5s"
                                    src="image/kaku.jpg">
                            </div>
                            <div class="col-6 text-end">
                                <img class="img-fluid rounded w-100 wow zoomIn" data-wow-delay="0.7s"
                                    src="image/kaku.jpg">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <h1 class="mb-4">The leading green supermarket</h1>
                        <p class="mb-4">Welcome to [Your Company Name]! We're not just an e-commerce platform; 
                        				we're a passionate team dedicated to elevating your [product/service] experience. 
                       					Born out of a shared love for [industry/niche] in [year], [Your Company Name] has been on a mission to [your mission]. 
                        				Our curated collection reflects our commitment to quality, style, and your satisfaction. 
                        				Join us and discover a seamless shopping experience tailored just for you.</p>
                        <p class="mb-4">In [year], [Your Company Name] embarked on a journey to redefine [industry/niche]. 
                        				From our humble beginnings, we've evolved into a hub for [products/services] enthusiasts. 
                       					At [Your Company Name], innovation meets reliability, and we're here to make your [product/service] journey memorable. 
                      					Explore our world, where every purchase tells a story, and you're at the center of it all.</p>
                        <div class="row g-4 mb-4">
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center border-start border-5 border-warning px-3">
                                    <h1 class="flex-shrink-0 display-5 text-warning mb-0" data-toggle="counter-up">15
                                    </h1>
                                    <div class="ps-4">
                                        <p class="mb-0">Years of</p>
                                        <h6 class="text-uppercase mb-0">Experience</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="d-flex align-items-center border-start border-5 border-warning px-3">
                                    <h1 class="flex-shrink-0 display-5 text-warning mb-0" data-toggle="counter-up">20
                                    </h1>
                                    <div class="ps-4">
                                        <p class="mb-0">Popular</p>
                                        <h6 class="text-uppercase mb-0">MASTER PRODUCT</h6>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


         <div class="container-xxl pt-5 pb-3">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5 class="section-title ff-secondary text-center text-warning fw-normal">Team Members</h5>
                    <h1 class="mb-5">Our manager team in green super market</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <div class="rounded-circle overflow-hidden m-4">
                                <img class="img-fluid" src="image/kaku.jpg" alt="">
                            </div>
                            <h5 class="mb-4">Chef Beverly Ramsburg
                            </h5>
                            <small>Executive Chef</small>

                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <div class="rounded-circle overflow-hidden m-4">
                                <img class="img-fluid" src="image/kaku.jpg" alt="">
                            </div>
                            <h5 class="mb-4">
                                Chef Andres Cantre</h5>
                            <small>Head Chef</small>

                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <div class="rounded-circle overflow-hidden m-4">
                                <img class="img-fluid" src="image/kaku.jpg" alt="">
                            </div>
                            <h5 class="mb-4">Chef Gabriel Liccketto</h5>
                            <small>Deputy Chef</small>

                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <div class="rounded-circle overflow-hidden m-4">
                                <img class="img-fluid" src="image/kaku.jpg" alt="">
                            </div>
                            <h5 class="mb-4">Chef Phillip Krenzer</h5>
                            <small>Station Chef</small>

                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <div class="rounded-circle overflow-hidden m-4">
                                <img class="img-fluid" src="image/kaku.jpg" alt="">
                            </div>
                            <h5 class="mb-4">Chef Phillip Krenzer</h5>
                            <small>Station Chef</small>

                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="team-item text-center rounded overflow-hidden">
                            <div class="rounded-circle overflow-hidden m-4">
                                <img class="img-fluid" src="image/kaku.jpg" alt="">
                            </div>
                            <h5 class="mb-4">Chef Phillip Krenzer</h5>
                            <small>Station Chef</small>

                        </div>
                    </div>
                    
                    
                </div>
            </div>
        </div>>        
        
        

        <div class="container">
            <div class="card-heading p-3">
                <p class="fs-6 px-4 my-4">
                    We always strive to provide a very high-quality service with responsibility

                    <br class="d-none d-lg-block">
                    Call now and get the service you need.
                </p>
                
                 <div class="d-lg-block">
                    <h2 class="fs-4">Call Now - +94 81 020 0340
                    </h2>

                </div>
                
                 <div class="d-lg-block">
                    <h2 class="fs-4">Our mail - greensuperMarket@gmail.com
                    </h2>

                </div>
                

                <hr class='mb-3'>

            </div>
        </div>

    </main>


   
    </body>
</html>
