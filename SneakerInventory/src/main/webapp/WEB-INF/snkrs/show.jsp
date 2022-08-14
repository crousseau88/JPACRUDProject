<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SHOE DETAILS</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyles.css">
</head>
<body>
<h1>Shoe Details </h1>
    
    <div>
        <table class="table table-hover table-md thead-dark tbody-grey table-striped">
         
          <thead>
            <tr>
              
              <th scope="col">ID</th>
              <th scope="col">Style</th>
              <th scope="col">Gender</th>
              <th scope="col">Size</th>
              <th scope="col">Price</th>  
              <th scope="col">Brand</th>                           
              <th scope="col">Description</th>
              
            </tr>
          </thead>
        
        <c:forEach var="snkrs" items="${shoes }">
          <tbody>
            <tr>
              <th>${snkrs.id}</th>
              <td>${snkrs.style}</td>
              <td>${snkrs.gender}</td>
              <td>${snkrs.size}</td>
              <td>${snkrs.price}</td>
              <td>${snkrs.brand}</td>
              <td>${snkrs.description}</td>
              
            </tr>
          </tbody>
        </c:forEach>
        
        </table>
    </div>
</body>
</html>