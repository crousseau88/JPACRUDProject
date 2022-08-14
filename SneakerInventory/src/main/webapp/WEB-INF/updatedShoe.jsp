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
<body>
 <div>
        <h3>Update shoe:</h3>
        <form action="updatedSuccessful.do" method="GET">
            <label for="style">Style:</label> <input type="text" name="style" value="${shoe.style }"><br>
            <label for="gender">Gender:</label> <input type="text" name="gender" value="${shoe.gender }"><br>
            <label for=size>Size:</label> <input type="text" name="size"value="${shoe.size }"><br>
            <label for="price">Price:</label> <input type="text" name="price" value="${shoe.price }"><br>
            <label for="brand">Brand:</label> <input type="text" name="brand" value="${shoe.brand }"><br>
            <label for="description">Description:</label> <input type="text" name="description" value="${shoe.description }"><br>
           <input type="hidden" name="id" value="${shoe.id }"/>
            <input type="submit" value="Updated Shoe">
        </form>
    </div>   
    <jsp:include page="bootstrapFoot.jsp" />
</body>
</html>