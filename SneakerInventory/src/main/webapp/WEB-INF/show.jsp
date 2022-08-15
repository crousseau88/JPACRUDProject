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
<link rel="stylesheet" href="CSS/style.css">
</head>
<jsp:include page="bootstraphead.jsp" />
<main class="container-fluid">
<body>
   <jsp:include page="navbar.jsp"></jsp:include>
<h1>Shoe Details </h1>
 
    <div>
        <table class="table table-hover table-md thead-dark tbody-grey table-striped">
         
          <thead>
            <tr>
<%--               delete.do?id=${snkrs.id }
	<input type="hidden" name="id" value="${snkrs.id }"/>
 --%>        
 		      <th scope="col">ID</th>
              <th scope="col">Style</th>
              <th scope="col">Gender</th>
              <th scope="col">Size</th>
              <th scope="col">Price</th>  
              <th scope="col">Brand</th>                           
              <th scope="col">Description</th>
              <th scope="col">Delete</th>
              <th scope="col">Update</th>
            </tr>
          </thead>
        
          <tbody>
        <c:forEach var="snkrs" items="${shoes }">
            <tr>
              <th>${snkrs.id}</th>
              <td>${snkrs.style}</td>
              <td>${snkrs.gender}</td>
              <td>${snkrs.size}</td>
              <td>${snkrs.price}</td>
              <td>${snkrs.brand}</td>
              <td>${snkrs.description}</td>
              
              <td><form action ="deleted.do"><input type="hidden" name="id" value="${snkrs.id }"/>
              <button class="btn btn-danger" type="submit">Delete</button></form></td>
              
              <td><form action ="updatedShoe.do"><input type="hidden" name="id" value="${snkrs.id }"/>
              <button class="btn btn-warning" type="submit">Update</button></form></td>
              
            </tr>
        </c:forEach>
          </tbody>
        
        </table>
    </div>
    <jsp:include page="bootstrapFoot.jsp" />
    </main>
</body>
</html>