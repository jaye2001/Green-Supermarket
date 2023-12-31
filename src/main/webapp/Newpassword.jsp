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
			<h1 class=" text-center" style="padding-top: 20px;">CHANGE PASSWORD</h1>
			<form action="ChangepasswordServlet" method="post">
				<input type="password" name="newpassword">
				<input type="submit">
			</form>
		</div>
	</div>
</body>
</html>