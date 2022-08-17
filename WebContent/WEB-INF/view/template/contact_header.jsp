<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home page</title>



<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/contact.css" />
<link
	href="//db.onlinewebfonts.com/c/1c52a84494455ed8eb83f9ced04de9fa?family=Spurs"
	rel="stylesheet" type="text/css" />

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
				href="http://localhost:8080/Shop/product/home">Tottenham Hotspur
				F.C. Shop</a> </a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar"
				aria-controls="offcanvasDarkNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1"
				id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
				<div class="offcanvas-header">
					<h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Menu</h5>
					<button type="button" class="btn-close btn-close-white"
						data-bs-dismiss="offcanvas" aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
					<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page"
							href="http://localhost:8080/Shop/product/home">Home</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page"
							href="http://localhost:8080/rest-api/api/customers">B2B</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="http://localhost:8686/registration">Create
								Account</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="http://localhost:8686/login">Login</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/Shop/customer/list">Customers</a></li>
						<li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/Shop/user/checkout">CHECKOUT</a></li>
						<li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/Shop/cart/list">Cart</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Shop </a>
							<ul class="dropdown-menu dropdown-menu-dark">
								<li><a class="dropdown-item"
									href="http://localhost:8080/Shop/product/top">Top</a></li>
								<li><a class="dropdown-item"
									href="http://localhost:8080/Shop/product/bottom">Bottom</a></li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li><a class="dropdown-item" href="#">Footwear</a></li>
							</ul></li>
					</ul>
					<form class="d-flex" role="search">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-success" type="submit">Search</button>
					</form>
				</div>
			</div>
		</div>
	</nav>