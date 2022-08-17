<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="/WEB-INF/view/template/header.jsp"%>

<div class="container-fluid bg-secondary mb-5">
	<div id="p-header"
		class="d-flex flex-column align-items-center justify-content-center"
		style="min-height: 300px">
		<h1 class="font-weight-semi-bold text-uppercase mb-3">Add Product
			Page</h1>
		<div class="d-inline-flex">
			<p class="m-0">
				<a href="http://localhost:8080/Shop/product/home">Home</a>
			</p>
			<p class="m-0 px-2">-</p>
			<p class="m-0">Add-Page</p>
		</div>
	</div>
</div>

<section id="services">
	<div class="container-fluid">
		<div class="col-lg-8 col-lg-offset-2 text-center">
			<p>Please fill out the below information to add a product.</p>
			<hr class="primary">
		</div>
	</div>
	<div class="container col-md-6 col-md-offset-3">
		<form:form action="saveTop" modelAttribute="product" method="POST" >
		<form:hidden path="id"/>
			<div class="form-group">
			
			
				<label for="category">Category</label>
				<label class="checkbox-inline">
					<form:radiobutton path="productCategory" id="category" value="top" />Top
				</label>
				<label class="checkbox-inline">
					<form:radiobutton path="productCategory" id="category" value="bottom" />Bottom
				</label>
				<label class="checkbox-inline">
					<form:radiobutton path="productCategory" id="category" value="shoes" />Shoes
				</label>
			</div>
			
			
			<div class="form-group">
				<label for="name">Product Name</label>
				<form:input path="productName" id="name" Class="form-control" />
			</div>
			
			<div class="form-group">
				<label for="description">Description</label>
				<form:textarea path="description" id="description" Class="form-control" />
			</div>
			
			<div class="form-group">
				<label for="price">Price</label>
				<form:textarea path="price" id="price" Class="form-control" />
			</div>
			
			
			<div class="form-group">
				<label for="img">Image URL</label>
				<form:textarea path="img" id="img" Class="form-control" />
			</div>
			
			
			<div class="col-lg-8 col-lg-offset-2 text-center">
				<input type="submit" value="submit" class="btn btn-primary">
				<a href= "<c:url value="/admin/productInventory" />" class="btn btn-primary">Cancel</a>
			</div>
		
		</form:form>
	
	</div>
</section>

<%@include file="/WEB-INF/view/template/footer.jsp"%>