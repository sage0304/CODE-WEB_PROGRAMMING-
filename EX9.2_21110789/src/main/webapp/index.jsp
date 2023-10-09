<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Murach's Java Servlets and JSP</title>
	<link rel="stylesheet" href="main.css" type="text/css" />
</head>
<body>
	<div class="survey">
	<h1>CD list</h1>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<table>
		<tr>
			<th>Description</th>
			<th class="right">Price</th>
			<th>&nbsp;</th>
		</tr>
		<c:forEach var="product" items="${products}">
			<tr>
				<td><c:out value='${product.description}' /></td>
				<td class="right">${product.priceCurrencyFormat}</td>
				<td><form action="cart" method="post">
						<input type="hidden" name="productCode" value="<c:out value='${product.code}'/>"> 
						<div class="btn-box">
							<input type="submit" value="Add To Cart" id="submit">
						</div>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>