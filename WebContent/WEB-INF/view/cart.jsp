<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<link
	href="//db.onlinewebfonts.com/c/1c52a84494455ed8eb83f9ced04de9fa?family=Spurs"
	rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/cart.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

</head>
<body>

	<nav class="navbar navbar-dark bg-dark fixed-top">
		<div class="container-fluid">
			<img
				src="https://seeklogo.com/images/T/tottenham-hotspur-logo-867FE9A18B-seeklogo.com.png"
				alt=""> <a class="navbar-brand"
				href="http://localhost:8080/Shop/home2/${user.id}">Tottenham
				Hotspur F.C. Shop</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar"
				aria-controls="offcanvasDarkNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1"
				id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
				<div class="offcanvas-header">
					<h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Menu</h5>
					<h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">UserName:
						${user.email}</h5>

					<button type="button" class="btn-close btn-close-white"
						data-bs-dismiss="offcanvas" aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
					<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page"
							href="http://localhost:8080/Shop/home2/${user.id}">Home</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page"
							href="http://localhost:8080/rest-api/api/customers">B2B</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="http://localhost:8686/registration">Create
								Account</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="http://localhost:8080/Shop/login">Login</a></li>
						<li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/Shop/cart/checkout/${user.id}">CHECKOUT</a></li>
						<li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/Shop/cart/${user.id}">Cart</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Shop </a>
							<ul class="dropdown-menu dropdown-menu-dark">
								<li><a class="dropdown-item"
									href="http://localhost:8080/Shop/product/top/${user.id}">Products</a></li>

								<li>
									<hr class="dropdown-divider">
								</li>

							</ul></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page"
							href="http://localhost:8080/Shop/user/contact/${user.id}">Contact</a></li>
					</ul>

				</div>
			</div>
		</div>
	</nav>


	<div class="container2">
		<div class="container-fluid bg-secondary mb-5">
			<div id="p-header"
				class="d-flex flex-column align-items-center justify-content-center"
				style="min-height: 300px">
				<h1 class="font-weight-semi-bold text-uppercase mb-3">Cart</h1>
				<div class="d-inline-flex">
					<p class="m-0">
						<a href="http://localhost:8080/Shop/home2/${user.id}">Home</a>
					</p>
					<p class="m-0 px-2">-</p>
					<p class="m-0">Cart</p>
				</div>
			</div>
		</div>
	</div>

	<div class="cardContainer">
		<div>
			<h2>Shopping Cart</h2>
		</div>
		<c:forEach var="it" items="${order}">


			<c:set var="total" value="${total + it.top.price * it.quantity }"></c:set>
			<c:set var="user" value="${it.user}"></c:set>
			<c:set var="pd" value="${it.top}"></c:set>

			<div class="card mb-3" style="max-width: 1000px;">

				<div class="row g-0">

					<div class="col-md-4">

						<a
							href="http://localhost:8080/Shop/productDetail/${pd.id}/${user.id}">
							<img src="${it.top.img}" class="img-fluid rounded-start"
							alt="...">
						</a>
					</div>
					<div class="col-md-8">
						<div class="card-body">
							<p class="card-text">SKU:${it.top.id}</p>
							<h5 class="card-title">${it.top.productName}</h5>
							<p class="card-text">price:${it.top.price }</p>
							<p class="card-text">Quantity:${it.quantity}</p>
							
							<a
								href="${pageContext.request.contextPath }/cart/remove/${it.top.id }/${it.user.id}"
								onclick="if (!(confirm('Are you sure you want to delete this item?')))
        	 return false"
								class="btn btn-outline-danger btn-sm">Delete</a>

							<p class="card-text">
								<small class="text-muted">Last updated 3 mins ago</small>
							</p>
						</div>
					</div>

				</div>


			</div>

		</c:forEach>

		<div class="card w-75">
			<div class="card-body">
				<h5 class="card-title">Subtotal: ${total} USD</h5>
				<p class="card-text"></p>
				<c:if test="${user.id != null}">
				<a href="<c:url value="/cart/checkout/${userId}" />"
					class="btn btn-success"> Check Out </a>
				</c:if>
					
					<br> <a
					href="${pageContext.request.contextPath }/product/top/${userId}"
					class="btn btn-outline-secondary btn-sm">Continue Shopping</a>
			</div>
		</div>



	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>

</body>
</html>