<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@include file="/WEB-INF/view/template/home_header.jsp" %>
  <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div  class="carousel-item active">
        <a href="http://localhost:8080/Shop/product/top/${theUser.id}">
        <img src="https://cdn.dynamicyield.com/api/8767370/images/1a55de2e7d9bf__spurs_away_excl_desktopbanner.jpg" id="img1" class="d-block w-100" alt="...">
        </a>
        
      </div>
      <div id="container" class="carousel-item">
        <a href="http://localhost:8686/registration">
        <img src="https://cdn.vox-cdn.com/thumbor/5rpQoAVqIQy1QYRXoM0cAVr8kGA=/0x0:5651x3767/920x613/filters:focal(2236x2495:3140x3399):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/70904694/1240623832.0.jpg" id="img2" class="d-block w-100" alt="...">
        </a>
        <div class="centered">Create Account</div>
      </div>
      <div id="container" class="carousel-item">
        <a href="http://localhost:8080/Shop/user/contact/${theUser.id }">
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
  
  <%-- <h2>UserName: ${theUser.email} is loggedin now</h2> --%>

  <div id="tableContainer">
    <h1>Upcoming Match Scedule</h1>
    <br>
    <p>2022/23 Premier League Home Fixtures On Sale</p>

    <table class="table table-hover">
      <thead>
        <tr>
          <th scope="col">Date</th>
          <th scope="col">Location</th>
          <th scope="col">Opposite Team</th>
         
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">08-04-2022</th>
          <td>London</td>
          <td>vs Chealsea</td>
          
        </tr>
        <tr>
          <th scope="row">08-11-2022</th>
          <td>Liverpool</td>
          <td>vs Liverpool</td>
          
        </tr>
        <tr>
          <th scope="row">08-18-2022</th>
          <td>Manchester</td>
          <td>vs Manchester City</td>
          
        </tr>
        <tr>
          <th scope="row">08-25-2022</th>
          <td>London/td>
          <td>vs Chealsea</td>
          
        </tr>
        <tr>
          <th scope="row">09-01-2022</th>
          <td>London</td>
          <td>vs Arsenal</td>
          
        </tr>
        <tr>
          <th scope="row">09-08-2022</th>
          <td >London</td>
          <td>vs West Ham</td>
        </tr>
      </tbody>
    </table>
  </div>
<%@include file="/WEB-INF/view/template/footer.jsp" %>
 
