<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/template/admin_header.jsp"%>

<div class="container-fluid bg-secondary mb-5">
	<div id="p-header"
		class="d-flex flex-column align-items-center justify-content-center"
		style="min-height: 300px">
		<h1 class="font-weight-semi-bold text-uppercase mb-3">Administrator
			Page</h1>
		<div class="d-inline-flex">
			
		</div>
	</div>
</div>

<section id="services">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 text-center">

				<p>Hello! This is an administrator page.</p>
				<hr class="primary">
				<br>
				<h3>
					<a href="<c:url value="/admin/productInventory" />"
						class="btn btn-lg btn-success"> Product Inventory </a> 
					<a href="${pageContext.request.contextPath}/user/list" class="btn btn-lg btn-success">User
						List</a>

				</h3>
				<p>Here you can view, check and modify the product inventory and User list!</p>
			</div>
		</div>
	</div>
</section>

<%@include file="/WEB-INF/view/template/footer.jsp"%>