<%@page import="classes.Backtopin"%>
<%@page import="classes.Existingerr" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Green Supermarket</title>
<link rel="icon" type="image/x-icon" href="images/png/Asset1.png">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body style="background-color: #FAFAF6;">

	<div class="container">
		<div class="container text-center" style="background-color: #C0DBEA; width: auto; margin: 50px; align-items: center; border-radius: 10px;">
			<h1 class=" text-center" style="padding-top: 20px;">FORGET PASSWORD</h1>
			
			<% 	Existingerr Existingerr = (Existingerr) request.getAttribute("Existingerr");
					if (Existingerr != null){
						String x = Existingerr.getPage();
					%>
                		error error <%= Existingerr.getEmail() %>
                		
                		<%} %>
						
			<p style="margin-top: 50px;">Before changes happen let us confirm its you</p>
			<form action="ForgetpswrdServlet" method="post" style="padding-bottom: 30px; margin-top: 50px;">
				<div class="row align-items-center" style="margin-left: 50px; margin-right: 50px;">
					<div class="col-2"><label class="col-form-label text-center fw-bolder" style="margin-right: 20px;">Email</label></div>
					<div class="col-8"> <input class="form-control" id="email" aria-label="default input example" type="email" name="email" placeholder="Example@gmail.com"></div>
					<div class="col-2"> <input class="btn btn-primary" id="emailsubm" type="submit" value="submit"> </div>
				</div>
			</form>
			<% Backtopin backtopin = (Backtopin) request.getAttribute("backtopin"); 
				
				if (backtopin != null){
					
					boolean access = backtopin.getSend();
					if (access == true){
						String email = backtopin.getEmail(); %>
				
				<form action="PinvalidateServlet" id="pinent" method="post" style="padding-bottom: 30px;">
				<div class="row align-items-center" style="margin-left: 380px; margin-right: 380px;">
					<div class="col-2"><input class="form-control" id="pin1" aria-label="default input example" type="text" name="pin1" style="text-align: center;" maxlength="1" oninput="pinent()"></div>
					<div class="col-2"><input class="form-control" id="pin2" aria-label="default input example" type="text" name="pin2" style="text-align: center;" maxlength="1" oninput="pinent()"></div>
					<div class="col-2"><input class="form-control" id="pin3" aria-label="default input example" type="text" name="pin3" style="text-align: center;" maxlength="1" oninput="pinent()"></div>
					<div class="col-2"><input class="form-control" id="pin4" aria-label="default input example" type="text" name="pin4" style="text-align: center;" maxlength="1" oninput="pinent()"></div>
					<div class="col-2"><input class="form-control" id="pin5" aria-label="default input example" type="text" name="pin5" style="text-align: center;" maxlength="1" oninput="pinent()"></div>
					<div class="col-2"><input class="form-control" id="pin6" aria-label="default input example" type="text" name="pin6" style="text-align: center;" maxlength="1" oninput="pinent()"></div>
				</div>
			</form>
				
				
				<script >
				
					function emailset(){
						document.getElementById("email").value = '<%= email %>';
						document.getElementById("emailsubm").disabled = true;
						document.getElementById("email").disabled = true;
					}
				
					window.onload = emailset;
				</script>		
						
				<% 
					}
				}
			
			%>
			
		</div>
		       
	</div>
	
	<script>
	
		function pinent() {
			
		if (document.getElementById("pin1").value !== "" && document.getElementById("pin2").value !== "" 
			&& document.getElementById("pin3").value !== ""  &&  document.getElementById("pin4").value !== ""
			&& document.getElementById("pin5").value !== ""  && document.getElementById("pin6").value !== "" )
			{
					document.getElementById("pinent").submit();
			}
		}
	</script>
	
</body>
</html>



 