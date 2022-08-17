<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form:form action="registration" modelAttribute="user"  method="POST" id="signup-form" class="signup-form">
                        <div class="form-group">
							<form:input type="text" class="form-input" id="firstName"
								path="firstName" placeholder="Your First Name" required
								autofocus="autofocus" />
						</div>
						<div class="form-group">
							<form:input type="text" class="form-input" id="lastName"
								path="lastName" placeholder="Your Last Name" required
								autofocus="autofocus" />
						</div>
						<div class="form-group">
							<form:input type="email" class="form-input" id="email"
								path="email" required autofocus="autofocus"
								placeholder="Your Email" />
						</div>
						<div class="form-group">
							<form:input type="text" class="form-input" id="password"
								path="password" required autofocus="autofocus"
								placeholder="Password" /> <span toggle="#password"
								class="zmdi zmdi-eye field-icon toggle-password"></span>
						</div>

						<div class="form-group">
							<input type="submit" name="submit" id="submit"
								class="form-submit" value="Sign up" />
						</div>
					</form:form>
					<p class="loginhere">
						Have already an account ? <a href="<c:url value="/login" />"
							class="loginhere-link">Login here</a>
					</p>
				</div>
			</div>
		</section>

    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

    <!-- JS -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main2.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>