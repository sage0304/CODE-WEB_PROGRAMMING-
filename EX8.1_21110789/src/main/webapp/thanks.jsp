<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Murach's Java Servlets and JSP</title> 
	<link rel="stylesheet" href="main.css" type="text/css"/>
	<link rel="icon" href="Image/doraemonicon.jpeg" type="image/x-icon" />
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
	<label>Hearing from:</label>
	<span>${user.heardFrom}</span><br>
	<label>Announcement:</label>
	<span>${user.ann}</span><br>
	<label>Contact by:</label>
	<span>${user.contact}</span><br>

	
	<label><strong>Current Date:</strong></label> 
    <span>${requestScope.currentDate}</span><br><br>
    
    <label><strong>First User:</strong></label><br>
    <label>First Name: </label>
    <span>${users[0].firstName}</span><br>
    <label>Last Name: </label>
    <span>${users[0].lastName}</span><br>
    <label>Email: </label>
    <span>${users[0].email}</span><br>
    <label>Date of birth: </label>
    <span>${users[0].dateofBirth}</span><br><br>

    
    <label><strong>Second User:</strong></label><br>
    <label>First Name: </label>
    <span>${users[1].firstName}</span><br>
    <label>Last Name: </label>
    <span>${users[1].lastName}</span><br>
    <label>Email: </label>
    <span>${users[1].email}</span><br>
    <label>Date of birth: </label>
    <span>${users[1].dateofBirth}</span><br><br>
    
    <label><strong>Customer Service Email:</strong></label> 
    <span>${initParam.custServEmail}</span><br>
    
    	    <p>To enter another email address, click on the Back 
		button in your browser or the Return button shown
		below.</p>
		
	<form action="" method="post">
		<input type="hidden" name="action" value="join">
		<div class="btn-box">
			<input type="submit" value="Return" id="return">
		</div>
	</form>
	</div>
</body>
</html>