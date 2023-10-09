<%@ include file="/includes/header.html" %>
<div class="second-page">
	<p><i>${message}</i></p>
	<h1>Thanks for participating in our survey</h1>
	
	<p>Here is the information that you entered: </p>
	
	<label>First Name: </label>
	<span>${user.firstName}</span><br>
	<label>Last Name:</label>
	<span>${user.lastName}</span><br>
	<label>Email:</label>
	<span>${user.email}</span><br>
	<label>Date of birth:</label>
	<span>${user.dateofBirth}</span>
	<br>
	<label>Hearing from:</label>
	<span><%= request.getAttribute("heard") %></span>
	<br>
	<label>Announcement:</label>
	<span><%= request.getAttribute("ann") %></span>
	<br>
	<label>Contact by:</label>
	<span><%= request.getAttribute("con") %></span>
	<br>
	<p>To enter another email address, click on the Back 
		button in your browser or the Return button shown
		below.</p>
		
	<form action="" method="post">
		<input type="hidden" name="action" value="join">
		<div class="btn-box">
			<input type="submit" value="Return" id="return">
		</div>
	</form>
<%@ include file="/includes/footer.jsp" %>