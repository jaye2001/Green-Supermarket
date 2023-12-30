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
        <title>LOGIN</title>
        <link rel="icon" type="image/x-icon" href="images/png/Asset1.png">
        <link rel="stylesheet" href="css/signin.css">
        <script src="https://kit.fontawesome.com/c881caef42.js" crossorigin="anonymous"></script>
    </head>
    <body style="background-image:url(signup.jpg)">
    <style>
.errors-msg {
	color: #ff0000;
	font-size: 12px;
	display: none;
}
</style>
    <div class="container">
        <div class="form-box">
           <h1 id="title">Login</h1> 
           
           <form id="form_id" action="LoginServlet" method="post" >
            <div class="input-group">
            	
      			<label class="errors-msg" id="phterr">*Photo exceed maximum  size limit (5mb)</label>
                <div class="input-field" id="userpht" style="display: none;">
                    <i class="fa-solid fa-user"></i>
                    <input type="file" class="form-control" id="inputGroupFile02" name="photo" onblur="checkphtsize()">
                </div>
                <div class="input-field" id="nameFiealdFirst" style="display: none;">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" placeholder="First Name" name="Fname">
                </div>
                <div class="input-field" id="nameFiealdSecond" style="display: none;">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" placeholder="Last Name" name="Lname">
                </div>
                <div class="input-field" id="birth" style="display: none;">
                    <i class="fa-solid fa-calendar-days"></i>
                    <input type="date" placeholder="Birthdate" name="Birthdate">
                </div>
                
                <label class="errors-msg" id="phterr">*Mobile number exceed maximum <strong>size limit</strong>(15 digit)</label>
                <div class="input-field" id="mbnum" style="display: none;">
                    <i class="fa-solid fa-phone"></i>
                    <input type="text" placeholder="Mobile Number" name="MbNum">
                </div>
                <div class="input-field" id="addre" style="display: none;">
                    <i class="fa-solid fa-location-dot"></i>
                    <input type="text" placeholder="Address" name="address">
                </div>
               
                <div class="input-field">
                    <i class="fa-solid fa-envelope"></i>
                    <input type="email" placeholder="Email" name="email">
                </div>
                
                <label class="errors-msg" id="pswderr">*</label>
                <div class="input-field" id="paswrd">
                    <i class="fa-solid fa-lock"></i>
                    <input type="password" id="Pswd" placeholder="Password" name="password" onblur="paswrdchk()" oninput="paswrdchk()" onformchange="paswrdchk()" maxlength="12">
                </div>
                <p id="forg">Lost password <a href="forgetpassword.jsp">Click Here!</a></p>
                <button type="submit" id="SubmitBtn" style="width: 48%; align-items: center; flex-basis: 48%; background: #0329; color: #fff; height: 40px; border-radius: 20px; border: 0; outline: 0; cursor: pointer; transition: background 1s; margin-top: 20px;">Submit</button>
            </div>
            
            <div class="btn-field" style="margin-top: 25px">
                <button type="button" id= "signupBtn" class="disable" onclick="signup()">Sign up</button>
                <button type="button" id= "signinBtn" onclick="signin()">Login</button>
            </div>
           </form>
        </div>

    </div>
    <script>
        let signupBtn = document.getElementById("signupBtn");
        let signinBtn = document.getElementById("signinBtn");
        let nameFieald = document.getElementById("nameFiealdFirst");
        let nameFieald2 = document.getElementById("nameFiealdSecond");
        let birth = document.getElementById("birth");
        let mbnum = document.getElementById("mbnum");
      
        let address = document.getElementById("addre");
        let title = document.getElementById("title");

        function signin(){
            nameFieald.style.display = "none";
            nameFieald2.style.display = "none";
            birth.style.display = "none";
            mbnum.style.display = "none";
            address.style.display = "none";
            document.getElementById("forg").style.display = "flex";
            document.getElementById("userpht").style.display = "none";
            title.innerHTML="Login";
            signupBtn.classList.add("disable");
            signinBtn.classList.remove("disable");
            document.getElementById("form_id").action = "LoginServlet";
            document.getElementById("form_id").enctype="";
        }

        function signup(){
            nameFieald.style.maxHeight = "60px";
            nameFieald2.style.maxHeight = "60px";
            nameFieald.style.display = "flex";
            nameFieald2.style.display = "flex";
            birth.style.maxHeight = "60px";
            mbnum.style.maxHeight = "60px";
            address.style.maxHeight = "60px";
            birth.style.display = "flex";
            mbnum.style.display = "flex";
            address.style.display = "flex";
            document.getElementById("forg").style.display = "none";
            document.getElementById("userpht").style.display = "flex";
            title.innerHTML="Sign Up";
            signupBtn.classList.remove("disable");
            signinBtn.classList.add("disable");
            document.getElementById("form_id").action = "SignupServlet";
            document.getElementById("form_id").enctype="multipart/form-data";
        }
        
        function checkphtsize(){
        	const fileSizebyte = document.getElementById('inputGroupFile02').files[0].size;
        	let fileSizemb = fileSizebyte / (1024 ** 2);
        	
        	if(fileSizemb > 5){
        		document.getElementById("phterr").style.display = "flex";
        		document.getElementById("userpht").style.backgroundColor = "#FF7F7F";
        		document.getElementById("SubmitBtn").disabled = true;
        		
        	
        	}
        	else {
        		document.getElementById("phterr").style.display = "none";
        		document.getElementById("userpht").style.backgroundColor = "#eaeaea";
        		document.getElementById("SubmitBtn").disabled = false;
        	}
        }
      
        function paswrdchk() {
            var pasword = document.getElementById("Pswd").value;
            var hasWhitespace = /\s/.test(pasword);

            if (hasWhitespace) {
                document.getElementById("pswderr").style.display = "flex";
                document.getElementById("paswrd").style.backgroundColor = "#FF7F7F";
                document.getElementById("SubmitBtn").disabled = true;
                document.getElementById("pswderr").textContent = "*White spaces are not allowed";
            } else {
            	
                document.getElementById("pswderr").style.display = "none";
                document.getElementById("paswrd").style.backgroundColor = "#eaeaea";
                document.getElementById("SubmitBtn").disabled = false;
                
                
				if(pasword.length < 8) {
            		
            		document.getElementById("pswderr").style.display = "flex";
                    document.getElementById("paswrd").style.backgroundColor = "#FF7F7F";
                    document.getElementById("SubmitBtn").disabled = true;
                    document.getElementById("pswderr").textContent = "*Password must be at least 8 charcters long";
            		
            	}
				
				else {
					document.getElementById("pswderr").style.display = "none";
	                document.getElementById("paswrd").style.backgroundColor = "#eaeaea";
	                document.getElementById("SubmitBtn").disabled = false;
				}
                
            }
        }
        	   
    </script>
    </body>
</html>
