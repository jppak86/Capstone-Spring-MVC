<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/template/pi_header.jsp"%>

<div class="container-fluid bg-secondary mb-5">
	<div id="p-header"
		class="d-flex flex-column align-items-center justify-content-center"
		style="min-height: 300px">
		<h1 class="font-weight-semi-bold text-uppercase mb-3">Product
			Inventory</h1>
		<div class="d-inline-flex">
			
		</div>
	</div>
</div>




<div>

	<div class="container">
	<div id="wrapper">
	<div id="header">
		<h2>All Inventory list</h2>
	</div>
</div>

		<table class="table table-hover">
			<tr>
				<th>ID</th>
				<th>IMG</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Action</th>
				<th></th>

			</tr>

			<!-- loop over and print our customers -->
			<c:forEach var="topProduct" items="${topProducts}">

				<c:url var="updateLink" value="/admin/update">
					<c:param name="productId" value="${topProduct.id}" />
				</c:url>

				<c:url var="deleteLink" value="/admin/delete">
					<c:param name="productId" value="${topProduct.id}" />
				</c:url>

				<tr>
					<td>${topProduct.id}</td>
					<td><img id="thumbnail" src="${topProduct.img}" alt="..."></td>
					<td>${topProduct.productName}</td>
					<td>${topProduct.price}USD</td>

					<td>
						<!-- display the update link --> <a href="${updateLink}"
						class="btn btn-success">Update</a>
					</td>
					<td><a href="${deleteLink}"
						onclick="if (!(confirm('Are you sure you wnat to delete this product?')))
								return false"
						class="btn btn-success">Delete</a></td>

				</tr>

			</c:forEach>

		</table>

		<a href="<c:url value="/admin/addProduct" />" class="btn btn-success">
			Add Product </a>

	</div>

</div>





<%@include file="/WEB-INF/view/template/footer.jsp"%>