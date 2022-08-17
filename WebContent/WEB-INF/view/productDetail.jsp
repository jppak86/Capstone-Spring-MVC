<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="/WEB-INF/view/template/header.jsp"%>

<section class="py-5">
	<div class="container px-4 px-lg-5 my-5">
		<div class="row gx-4 gx-lg-5 align-items-center">
			<div class="col-md-6">
				<img class="card-img-top mb-5 mb-md-0" src="${topProduct.img}"
					alt="..." />
			</div>
			<div class="col-md-6">
				<div class="small mb-1">SKU: ${topProduct.id}</div>
				<h1 class="display-5 fw-bolder">${topProduct.productName}</h1>
				<div class="fs-5 mb-5">

					<span>${topProduct.price} USD</span>
				</div>
				<p class="lead">${topProduct.description}</p>

				<div class="d-flex">
					
					<a href="<c:url value="/cart/buy/${topProduct.id}/${theUser.id}"/>"
						class="btn btn-primary">Add to Cart</a>
					
				</div>

			</div>
		</div>
	</div>

</section>


<%@include file="/WEB-INF/view/template/footer.jsp"%>


