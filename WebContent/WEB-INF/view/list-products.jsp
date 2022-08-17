<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Customers</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
		  

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Top clothing lists</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
		
		
			<!--  add our html table here -->
		
			<table>
				<tr>
					<th>Product Name</th>
					<th>Price</th>
					<th>Action</th>
					
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempProduct" items="${products}">
				
				<c:url var="updateLink" value="/product/update">
						<c:param name="productId" value="${tempProduct.id}" />
					</c:url>
				
					<tr>
						<td> ${tempProduct.productName} </td>
						<td> ${tempProduct.price} </td>
						
						<td>
							<!-- display the update link -->
							<a href="${updateLink}">Update</a>
						</td>
						
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	

</body>

</html>









