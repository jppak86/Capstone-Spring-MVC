<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home page</title>


<link
	href="//db.onlinewebfonts.com/c/1c52a84494455ed8eb83f9ced04de9fa?family=Spurs"
	rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css" />
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
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
				href="http://localhost:8080/Shop/home2/${theUser.id}">Tottenham
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
					<c:if test="${theUser.id != null}">
						<h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">UserName:
							${theUser.email}</h5>
					</c:if>
					<button type="button" class="btn-close btn-close-white"
						data-bs-dismiss="offcanvas" aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
					<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page"
							href="http://localhost:8080/Shop/home2/${theUser.id}">Home</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page"
							href="http://localhost:8080/rest-api/api/customers">B2B</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="http://localhost:8686/registration">Create
								Account</a></li>
						<c:if test="${theUser.id == null}">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="http://localhost:8080/Shop/login">Login As User</a>
							</li>
						</c:if>
						<c:if test="${theUser.id != null}">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="http://localhost:8080/Shop/login">Logout</a></li>
						</c:if>
						<!-- <li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/Shop/admin">Admin</a></li> -->
						<c:if test="${theUser.id != null}">
						<li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/Shop/cart/checkout/${theUser.id}">Checkout</a></li>
						</c:if>
						
						<li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/Shop/cart/${theUser.id}">Cart</a></li>
						
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Shop </a>
							<ul class="dropdown-menu dropdown-menu-dark">
								<li><a class="dropdown-item"
									href="http://localhost:8080/Shop/product/top/${theUser.id}">Products</a></li>

								<li>
									<hr class="dropdown-divider">
								</li>

							</ul></li>
						
						<li class="nav-item"><a class="nav-link active"
							aria-current="page"
							href="http://localhost:8080/Shop/user/contact/${theUser.id}">Contact</a></li>
						
					</ul>

				</div>
			</div>
		</div>
	</nav>