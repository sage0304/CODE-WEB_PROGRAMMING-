<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="main.css" type="text/css" />
</head>
<body>
	<div class="survey">
	<h1>Download registration</h1>

	<p>To register for our downloads, enter your name and email address
		below. Then, click on the Submit button.</p>

	<form action="download" method="post">
		<input type="hidden" name="action" value="registerUser"> <label
			class="pad_top1">Email:</label> 
			<input type="email" name="email" value="${user.email}" class="pad_top"><br> 
			<label class="pad_top1">First Name:</label> 
			<input type="text" name="firstName" value="${user.firstName}" class="pad_top"><br>
			<label class="pad_top1">Last Name:</label> 
			<input type="text" name="lastName" value="${user.lastName}" class="pad_top"><br> 

		<div class="btn-box">
			<input type="submit" value="Register" id="register">
		</div>
	</form>
	</div>
</body>

</html>
