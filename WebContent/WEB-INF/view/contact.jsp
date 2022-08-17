<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">
<head>
<title>Contact Form 09</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/home.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/contactStyle.css">


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
								aria-current="page" href="http://localhost:8080/Shop/login">Login</a></li>
						</c:if>
						<c:if test="${theUser.id != null}">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="http://localhost:8080/Shop/login">Logout</a></li>
						</c:if>
						<c:if test="${theUser.id == null}">
							<li class="nav-item"><a class="nav-link"
								href="<c:url value="/admin"/>">Admin</a></li>
						</c:if>
						<li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/Shop/cart/checkout/${theUser.id}">Checkout</a></li>
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
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5"></div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-10 col-md-12">
					<div class="wrapper">
						<div class="row justify-content-center">
							<div class="col-lg-8 mb-5">
								<div class="row">
									<div class="col-md-4">
										<div class="dbox w-100 text-center">
											<div
												class="icon d-flex align-items-center justify-content-center">
												<span class="fa fa-map-marker"></span>
											</div>
											<div class="text">
												<p>
													<span>Address:</span> 198 West 21th Street, Suite 721 New
													York NY 10016
												</p>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="dbox w-100 text-center">
											<div
												class="icon d-flex align-items-center justify-content-center">
												<span class="fa fa-phone"></span>
											</div>
											<div class="text">
												<p>
													<span>Phone:</span> <a href="tel://1234567920">+ 1235
														2355 98</a>
												</p>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="dbox w-100 text-center">
											<div
												class="icon d-flex align-items-center justify-content-center">
												<span class="fa fa-paper-plane"></span>
											</div>
											<div class="text">
												<p>
													<span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-8">
								<div class="contact-wrap">
									<h3 class="mb-4 text-center">Get in touch with us</h3>
									<div id="form-message-warning" class="mb-4 w-100 text-center"></div>
									<div id="form-message-success" class="mb-4 w-100 text-center">
										Your message was sent, thank you!</div>
									<form method="POST" id="contactForm" name="contactForm"
										class="contactForm">
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<input type="text" class="form-control" name="name"
														id="name" placeholder="Name">
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<input type="email" class="form-control" name="email"
														id="email" placeholder="Email">
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<input type="text" class="form-control" name="subject"
														id="subject" placeholder="Subject">
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<textarea name="message" class="form-control" id="message"
														cols="30" rows="8" placeholder="Message"></textarea>
												</div>
											</div>
											<div class="col-md-12">
												<div class="form-group">
													<input type="submit" value="Send Message"
														class="btn btn-primary">
													<div class="submitting"></div>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
</body>
</html>


