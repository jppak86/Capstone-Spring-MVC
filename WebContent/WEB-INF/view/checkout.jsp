<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Check Out</title>
<link
	href="//db.onlinewebfonts.com/c/1c52a84494455ed8eb83f9ced04de9fa?family=Spurs"
	rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/checkOut.css" />
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
				href="http://localhost:8080/Shop/home2/${theUser.id}">Tottenham Hotspur
				F.C. Shop</a>
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
					<h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">UserName: ${theUser.email}</h5>
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
							aria-current="page" href="http://localhost:8080/Shop/login">Login</a>
						</li>
						</c:if>
						<c:if test="${theUser.id != null}">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="http://localhost:8080/Shop/login">Logout</a></li>
						</c:if>
						<%-- <li class="nav-item"><a class="nav-link"
							href="<c:url value="/admin"/>">Admin</a></li> --%>
						<li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/Shop/cart/checkout/${theUser.id}">CHECKOUT</a></li>
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
							aria-current="page" href="http://localhost:8080/Shop/user/contact/${theUser.id}">Contact</a></li>
					</ul>
					
				</div>
			</div>
		</div>
	</nav>

	<div class="container-fluid bg-secondary mb-5">
		<div id="p-header"
			class="d-flex flex-column align-items-center justify-content-center"
			style="min-height: 300px">
			<h1 class="font-weight-semi-bold text-uppercase mb-3">CHECKOUT</h1>
			<div class="d-inline-flex">
				<p class="m-0">
					<a href="http://localhost:8080/Shop/home2/${theUser.id}">Home</a>
				</p>
				<p class="m-0 px-2">-</p>
				<p class="m-0">CHECKOUT</p>
			</div>
		</div>
	</div>

	<div class="container-fluid pt-5">
		<div class="row px-xl-5">
			<div class="col-lg-8">
				<div class="mb-4">
					<h4 class="font-weight-semi-bold mb-4">Billing Address</h4>
					<div class="row">
						<div class="col-md-6 form-group">
							<label>First Name</label> <input class="form-control" type="text"
								placeholder="Jayden">
						</div>
						<div class="col-md-6 form-group">
							<label>Last Name</label> <input class="form-control" type="text"
								placeholder="Pak">
						</div>
						<div class="col-md-6 form-group">
							<label>E-mail</label> <input class="form-control" type="text"
								placeholder="example@email.com">
						</div>
						<div class="col-md-6 form-group">
							<label>Mobile No</label> <input class="form-control" type="text"
								placeholder="+123 456 789">
						</div>
						<div class="col-md-6 form-group">
							<label>Address Line 1</label> <input class="form-control"
								type="text" placeholder="123 Street">
						</div>
						<div class="col-md-6 form-group">
							<label>Address Line 2</label> <input class="form-control"
								type="text" placeholder="123 Street">
						</div>
						<div class="col-md-6 form-group">
							<label>Country</label> <select class="custom-select">
								<option selected>United States</option>
								<option>South Korea</option>
								<option>France</option>
								<option>Germany</option>
								<option>Spain</option>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label>City</label> <input class="form-control" type="text"
								placeholder="New York">
						</div>
						<div class="col-md-6 form-group">
							<label>State</label> <input class="form-control" type="text"
								placeholder="New York">
						</div>
						<div class="col-md-6 form-group">
							<label>ZIP Code</label> <input class="form-control" type="text"
								placeholder="123">
						</div>
						<div class="col-md-12 form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="newaccount"> <label class="custom-control-label"
									for="newaccount">Create an account</label>
							</div>
						</div>
						<div class="col-md-12 form-group">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input" id="shipto">
								<label class="custom-control-label" for="shipto"
									data-toggle="collapse" data-target="#shipping-address">Ship
									to different address</label>
							</div>
						</div>
					</div>
				</div>
				<div class="collapse mb-4" id="shipping-address">
					<h4 class="font-weight-semi-bold mb-4">Shipping Address</h4>
					<div class="row">
						<div class="col-md-6 form-group">
							<label>First Name</label> <input class="form-control" type="text"
								placeholder="John">
						</div>
						<div class="col-md-6 form-group">
							<label>Last Name</label> <input class="form-control" type="text"
								placeholder="Doe">
						</div>
						<div class="col-md-6 form-group">
							<label>E-mail</label> <input class="form-control" type="text"
								placeholder="example@email.com">
						</div>
						<div class="col-md-6 form-group">
							<label>Mobile No</label> <input class="form-control" type="text"
								placeholder="+123 456 789">
						</div>
						<div class="col-md-6 form-group">
							<label>Address Line 1</label> <input class="form-control"
								type="text" placeholder="123 Street">
						</div>
						<div class="col-md-6 form-group">
							<label>Address Line 2</label> <input class="form-control"
								type="text" placeholder="123 Street">
						</div>
						<div class="col-md-6 form-group">
							<label>Country</label> <select class="custom-select">
								<option selected>United States</option>
								<option>Afghanistan</option>
								<option>Albania</option>
								<option>Algeria</option>
							</select>
						</div>
						<div class="col-md-6 form-group">
							<label>City</label> <input class="form-control" type="text"
								placeholder="New York">
						</div>
						<div class="col-md-6 form-group">
							<label>State</label> <input class="form-control" type="text"
								placeholder="New York">
						</div>
						<div class="col-md-6 form-group">
							<label>ZIP Code</label> <input class="form-control" type="text"
								placeholder="123">
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4">

				<div class="card border-secondary mb-5">

					<div class="card-header bg-secondary border-0">
						<h4 class="font-weight-semi-bold m-0">Order Total</h4>
					</div>
					<div class="card-body">
						<h5 class="font-weight-medium mb-3">Products</h5>
						<c:forEach var="cart" items="${cart}">
							<c:set var="total"
								value="${total + cart.top.price * cart.quantity }"></c:set>
							<c:set var="user"
								value="${cart.user}"></c:set>
							<c:set var="pd"
								value="${cart.top}"></c:set>

							<div class="d-flex justify-content-between">
								<p>Product_name:${cart.top.productName }</p>
								<p>${cart.top.price}</p>
							</div>
						</c:forEach>
						<hr class="mt-0">
						<div class="d-flex justify-content-between mb-3 pt-1">
							<h6 class="font-weight-medium">Subtotal</h6>
							<h6 class="font-weight-medium">${total}</h6>
						</div>
						<div class="d-flex justify-content-between">
							<h6 class="font-weight-medium">Shipping</h6>
							<h6 class="font-weight-medium">$10</h6>
							<h5 class="font-weight-bold">Total</h5>
							<h5 class="font-weight-bold">${total + 10}USD</h5>
						</div>

					</div>
					<a
					href="http://localhost:8080/Shop/cart/${theUser.id}"
					class="btn btn-outline-primary btn-sm">Go Back to Cart</a><br>
					<a
					href="${pageContext.request.contextPath }/product/top/${user.id}"
					class="btn btn-outline-primary btn-sm">Continue Shopping</a>

				</div>
				
				<div class="card border-secondary mb-5">
					<div class="card-header bg-secondary border-0">
						<h4 class="font-weight-semi-bold m-0">Payment</h4>
					</div>
					<div class="card-body">
						<div class="form-group">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" name="payment"
									id="paypal"> <label class="custom-control-label"
									for="paypal">Paypal</label>
							</div>
						</div>
						<div class="form-group">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" name="payment"
									id="directcheck"> <label class="custom-control-label"
									for="directcheck">Direct Check</label>
							</div>
						</div>
						<div class="">
							<div class="custom-control custom-radio">
								<input type="radio" class="custom-control-input" name="payment"
									id="banktransfer"> <label class="custom-control-label"
									for="banktransfer">Bank Transfer</label>
							</div>
						</div>
					</div>
					<div class="card-footer border-secondary bg-transparent">
						
					<a href="<c:url value="/cart/thanks/${user.id}"/>" class="btn btn-success"> Place Order</a>
						
					</div>
				</div>


			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
</body>
</html>