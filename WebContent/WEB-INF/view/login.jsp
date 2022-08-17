<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!Doctype html>
<html lang="en">

<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link type="text/css"
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet" />

<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/loginStyle.css" />

</head>
<body class="img js-fullheight"
	style="background-image: url(${pageContext.request.contextPath}/resources/images/login-bg.jpg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section"></h2>


				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
						<h3 class="mb-4 text-center">Have an account?</h3>

						<form:form action="login/home" modelAttribute="loginForm"
							class="signin-form" method='POST'>
							<div class="form-group">
								<form:input type="text" id="email" path="email"
									class="form-control" placeholder="Enter Email ID" />
							</div>
							<div class="form-group">
								<form:input id="password-field" type="password" path="password"
									class="form-control" placeholder="Enter Password" />
								<span toggle="#password-field"
									class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>
							<div class="form-group">
								<input type="submit" value="Sign-in" class="btn btn-primary">

							</div>

							<div class="form-group d-md-flex">
								<div class="w-50">
									<label class="checkbox-wrap checkbox-primary">Remember
										Me <input type="checkbox" checked> <span
										class="checkmark"></span>
									</label>
								</div>
							</div>


							<div class="form-group">
								<span>New user? <a
									href="http://localhost:8686/registration">Register here</a></span><br>
								<span>Want to login as Admin? <a
									href="http://localhost:8686/login">Login as Admin here</a></span>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>

