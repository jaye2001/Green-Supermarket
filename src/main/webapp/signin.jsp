<%-- 
    Document   : signin
    Created on : 27 Nov 2023, 22:39:17
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign In and Sign Up Form  </title>
        <link rel="stylesheet" href="css/signin.css">
        <script src="https://kit.fontawesome.com/c881caef42.js" crossorigin="anonymous"></script>
    </head>
    <body style="background-image:url(signup.jpg)">
    <div class="container">
        <div class="form-box">
           <h1 id="title">Sign Up</h1> 
           
           <form action="Login" method="get">
            <div class="input-group">
                <div class="input-field" id="nameFieald">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" placeholder="Name" name="name">
                </div>
                <div class="input-field">
                    <i class="fa-solid fa-envelope"></i>
                    <input type="email" placeholder="Email" name="email">
                </div>
                <div class="input-field">
                    <i class="fa-solid fa-lock"></i>
                    <input type="password" placeholder="Password" name="Password">
                </div>
                <p>Lost password <a href="#">Click Here!</a></p>
            </div>
            <div class="btn-field">
                <button type="submit" id= "signupBtn">Sign up</button>
                <button type="submit" id= "signinBtn" class="disable">Login</button>
            </div>
           </form>
        </div>

    </div>
    <script>
        let signupBtn = document.getElementById("signupBtn");
        let signinBtn = document.getElementById("signinBtn");
        let nameFieald = document.getElementById("nameFieald");
        let title = document.getElementById("title");

        signinBtn.onclick = function(){
            nameFieald.style.maxHeight = "0";
            title.innerHTML="Login";
            signupBtn.classList.add("disable");
            signinBtn.classList.remove("disable");
        }

        signupBtn.onclick = function(){
            nameFieald.style.maxHeight = "60px";
            title.innerHTML="Sign Up";
            signupBtn.classList.remove("disable");
            signinBtn.classList.add("disable");
        }
    </script>
    </body>
</html>
