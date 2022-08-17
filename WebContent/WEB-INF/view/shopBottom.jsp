<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="/WEB-INF/view/template/header.jsp" %>

  <div class="container-fluid bg-secondary mb-5">
    <div id="p-header" class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Spurs Shop</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="http://localhost:8080/Shop/product/home">Home</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Shop-Bottom</p>
        </div>
    </div>
</div>



  <div class="cardContainer">
  <c:forEach var="tempProduct" items="${bottomProducts}">
    <div class="card" style="width: 18rem;">
      <img src="${tempProduct.img}" class="card-img-top" alt="...">
      <div class="card-body">
        <p class="card-title">${tempProduct.productName}</p>
        <p class="card-text">price: ${tempProduct.price}</p>
        <a href="#" class="btn btn-primary">Add to Bag</a>
      </div>
    </div>
    </c:forEach>
    
    </div> 
					
					
<%@include file="/WEB-INF/view/template/footer.jsp" %>	



