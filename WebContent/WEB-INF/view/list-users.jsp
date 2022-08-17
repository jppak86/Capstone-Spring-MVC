<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
<title>List Users</title>

<!-- reference our style sheet -->
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
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>
	<nav class="navbar navbar-dark bg-dark fixed-top">
		<div class="container-fluid">
			<img
				src="https://seeklogo.com/images/T/tottenham-hotspur-logo-867FE9A18B-seeklogo.com.png"
				alt=""> <a class="navbar-brand"
				href="#">Tottenham Hotspur
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
					<h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">userName: ADMIN</h5>
					
					<button type="button" class="btn-close btn-close-white"
						data-bs-dismiss="offcanvas" aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
					<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
						
						<li class="nav-item"><a class="nav-link active"
							aria-current="page"
							href="http://localhost:8080/rest-api/api/customers">B2B</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page"
							href="http://localhost:8080/Shop/user/createAccount">Create
								Account</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="http://localhost:8686/login">Login as User</a></li>
						<li class="nav-item"><a class="nav-link"
							href="http://localhost:8080/Shop/admin">Admin</a></li>
						<!-- <li class="nav-item"><a class="nav-link"
							href="http://localhost:8686/registration">Checkout</a></li>
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
							</ul></li> -->
					</ul>
					
				</div>
			</div>
		</div>
	</nav>


	<div id="wrapper">
		<div id="header">
			<h2>User list</h2>
		</div>
	</div>

	<div id="container">

		<div id="content">

			<input type="button" value="Add user"
				onclick="window.location.href='createAccount'; return false;"
				class="add-button" />



			<!--  add our html table here -->

			<table class="table table-hover">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Password</th>
					<th>Action</th>

				</tr>

				<!-- loop over and print our customers -->
				<c:forEach var="tempUser" items="${users}">

					<c:url var="updateLink" value="/user/update">
						<c:param name="userId" value="${tempUser.id}" />
					</c:url>

					<c:url var="deleteLink" value="/user/delete">
						<c:param name="userId" value="${tempUser.id}" />
					</c:url>

					<tr>
						<td>${tempUser.firstName}</td>
						<td>${tempUser.lastName}</td>
						<td>${tempUser.email}</td>
						<td>${tempUser.password}</td>

						<td>
							<!-- display the update link --> <a href="${updateLink}" class="btn btn-success">Update</a>

							<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you wnat to delete this customer?')))
							return false" class="btn btn-success">Delete</a>
						</td>

					</tr>

				</c:forEach>

			</table>

		</div>

	</div>

	<section id="lab_social_icon_footer">
		<div class="container">
			<div class="text-center center-block">
				<a href="https://www.facebook.com/TottenhamHotspur/"><i
					id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a> <a
					href="https://twitter.com/SpursOfficial"><i id="social-tw"
					class="fa fa-twitter-square fa-3x social"></i></a> <a href="mailto:#"><i
					id="social-ig" class="fa fa-envelope-square fa-3x social"></i></a>
			</div>
		</div>
	</section>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>



</body>

</html>









