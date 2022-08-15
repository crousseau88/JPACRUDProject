<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE SHOE</title>
</head>
<jsp:include page="bootstraphead.jsp" />
<jsp:include page="navbar.jsp"></jsp:include>
<link rel="stylesheet" href="CSS/style.css">
<body>
 <div>
        <h3>Update shoe:</h3>
        <form action="updatedSuccessful.do" method="GET">
            <label for="style"><h4>Style:</h4></label> <input type="text" name="style" value="${shoe.style }"><br>
            <label for="gender"><h4>Gender:</h4></label> <input type="text" name="gender" value="${shoe.gender }"><br>
            <label for=size><h4>Size:</h4></label> <input type="text" name="size"value="${shoe.size }"><br>
            <label for="price"><h4>Price:</h4></label> <input type="text" name="price" value="${shoe.price }"><br>
            <label for="brand"><h4>Brand:</h4></label> <input type="text" name="brand" value="${shoe.brand }"><br>
            <label for="description"><h4>Description:</h4></label> <input type="text" name="description" value="${shoe.description }"><br>
           <input type="hidden" name="id" value="${shoe.id }"/>
            <input class="btn btn-primary" type="submit" value="Update Shoe">
        </form>
    </div>   
    <jsp:include page="bootstrapFoot.jsp" />
</body>
</html>