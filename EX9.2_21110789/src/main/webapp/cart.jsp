<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Murach's Java Servlets and JSP</title>
	<link rel="stylesheet" href="main.css" type="text/css" />
</head>
<body>
	<div class="survey">
	<h1>Your cart</h1>

	<table>
		<tr>
			<th>Quantity</th>
			<th>Description</th>
			<th>Price</th>
			<th>Amount</th>
			<th></th>
		</tr>

		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<c:forEach var="item" items="${cart.items}">
			<tr>
				<td>
					<form action="" method="post">
						<input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>"> 
						<input type="text" name="quantity" value="<c:out value='${item.quantity}'/>" id="quantity">
						<div class="btn-box-update">
							<input type="submit" value="Update" id="update">
						</div>
					</form>
				</td>
				<td><c:out value='${item.product.description}' /></td>
				<td>${item.product.priceCurrencyFormat}</td>
				<td>${item.totalCurrencyFormat}</td>
				<td>
					<form action="" method="post">
						<input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>"> 
						<input type="hidden" name="quantity" value="0"> 
						<div class="btn-box">
							<input type="submit" value="Remove Item" id="submit">
						</div>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>

	<p>
		<b>To change the quantity</b>, enter the new quantity and click on the
		Update button.
	</p>

	<form action="" method="post">
		<input type="hidden" name="action" value="shop"> 
		<div class="btn-box-continue">
			<input type="submit" value="Continue Shopping" id="continue">
		</div>
	</form>

	<form action="" method="post">
		<input type="hidden" name="action" value="checkout"> 
		<div class="btn-box">
			<input type="submit" value="Checkout" id="submit">
		</div>
	</form>
	</div>
</body>
</html>