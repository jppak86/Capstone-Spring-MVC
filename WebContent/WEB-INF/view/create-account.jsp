<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="/WEB-INF/view/template/header.jsp"%>

  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div  class="carousel-item active">
        <a href="http://localhost:8080/Shop/product/top">
        <img src="https://cdn.dynamicyield.com/api/8767370/images/1a55de2e7d9bf__spurs_away_excl_desktopbanner.jpg" id="img1" class="d-block w-100" alt="...">
        </a>
        
      </div>
      <div id="container" class="carousel-item">
        <a href="../Pages/ticket.html">
        <img src="https://cdn.vox-cdn.com/thumbor/5rpQoAVqIQy1QYRXoM0cAVr8kGA=/0x0:5651x3767/920x613/filters:focal(2236x2495:3140x3399):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/70904694/1240623832.0.jpg" id="img2" class="d-block w-100" alt="...">
        </a>
        <div class="centered">Ticketing</div>
      </div>
      <div id="container" class="carousel-item">
        <a href="../Pages/Contact.html">
        <img src="https://img.evbuc.com/https%3A%2F%2Fcdn.evbuc.com%2Fimages%2F238605139%2F265949675783%2F1%2Foriginal.20220301-102716?w=800&auto=format%2Ccompress&q=75&sharp=10&rect=0%2C119%2C1028%2C514&s=eaaee4397e3c3a54c26919a029c68e37" id="img3" class="d-block w-100" alt="...">
        </a>
        <div class="centered">Contact Us</div>
      </div>
      
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

  <div >
		<h3>Create Account</h3>
	
		<form:form action="saveUser" modelAttribute="user" method="POST">
		
		<form:hidden path="id" />
		
			
			
			<table class="table table-bordered">
				<tbody>
					<tr>
						<td><label>First Name:</label></td>
						<td><form:input class="form-control" path="firstName" /></td>
					</tr>
				
					<tr>
						<td><label>Last Name:</label></td>
						<td><form:input class="form-control" path="lastName"  /></td>
					</tr>

					<tr>
						<td><label>Password:</label></td>
						<td><form:input class="form-control" path="password" /></td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input class="form-control" path="email" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input class="form-control" type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/user/list">Back to List</a>
		</p>
	
	</div>

  <%@include file="/WEB-INF/view/template/footer.jsp"%>