<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>Murach's Java Servlets and JSP</title>
	<link rel="stylesheet" href="main.css" type="text/css" />
	<link rel="icon" href="Image/doraemonicon.jpeg" type="image/x-icon" />
</head>

<body>
	<div class="survey">
		<img src="Image/Murach_image-450x450.jpg" width="100" height="100"><br>
		<h1>Survey</h1>
		<p>If you have a moment, we'd appreciate it if you would fill out
			this survey.</p>
			
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<c:if test="${message != null}">
				<p><i>${message}</i></p>
			</c:if>

		<h2>Your information:</h2>
		<form action="survey" method="post">
			<div class="text-form">
				<input type="hidden" name="action" value="add"> 
				<label><b>First Name:</b></label>  
				<input type="text" name="firstName" class="pad-top"><br> 
				<label><b>Last Name:</b></label> 
				<input type="text" name="lastName" class="pad-top"><br> 
				<label><b>Email:</b></label> 
				<input type="email" name="email" class="pad-top"><br> 
				<label><b>Date of birth:</b></label> 
				<input type="text" name="dateofbirth" class="pad-top"><br>

			</div>

			<h2>How did you hear about us?</h2>
			<div class="radio-form">
				<input type="radio" name="heardFrom" value="Search engine">Search engine 
				<input type="radio" name="heardFrom" value="Word of mouth">Word of mouth 
				<input type="radio" name="heardFrom" value="Social Media">Social Media 
				<input type="radio" name="heardFrom" value="Other">Other
			</div>

			<h2>Would you like to receive announcements about new CDs and special offers</h2>
			<div class="checkbox-form">
				<input type="checkbox" name="ann" checked>YES, I'd like that.<br> 
				<!--<input type="checkbox" name="ann" value="NO, please do not send me anything.">
				NO, please do not send me anything.<br>-->
			</div>

			<p>Please contact me by: 
				<select name="contact" class="pad-top">
					<option value="Email or postal mail" selected>Email or postal mail</option>
					<option value="Email">Email</option>
					<option value="Phone number">Phone number</option>
				</select>
			</p>
			<!--<label>&nbsp;</label> -->
			<div class="btn-box">
				<input type="submit" value="Submit" id="submit">
			</div>
		</form>
	</div>


</body>

</html>