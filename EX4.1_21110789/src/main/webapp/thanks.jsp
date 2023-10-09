<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Murach's Java Servlets and JSP</title> 
	<link rel="stylesheet" href="main.css" type="text/css"/>
</head>

<body>
	<div class="second-page">
	<h1>Thanks for participating in our survey</h1>
	
	<p>Here is the information that you entered: </p>
	
	<label>First Name: </label>
	<span>${user.firstName}</span><br>
	<label>Last Name:</label>
	<span>${user.lastName}</span><br>
	<label>Email:</label>
	<span>${user.email}</span><br>
	<label>Date of birth:</label>
	<span>${user.dateofBirth}</span><br>
	<p>To enter another email address, click on the Back 
		button in your browser or the Return button shown
		below.</p>
		
	<form action="" method="get">
		<input type="hidden" name="action" value="join">
		<div class="btn-box">
			<input type="submit" value="Return" id="return">
		</div>
	</form>
	</div>
</body>
</html>