<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD SHOE</title>
</head>
<jsp:include page="bootstraphead.jsp" />
<jsp:include page="navbar.jsp"></jsp:include>
<body>
 <div>
        <h3>Add a new shoe:</h3>
        <form action="addSuccessful.do" method="GET">
            <label for="style">Style:</label> <input type="text" name="style"><br>
            <label for="gender">Gender:</label> <input type="text" name="gender"><br>
            <label for=size>Size:</label> <input type="number" name="size"><br>
            <label for="price">Price:</label> <input type="number" name="price"><br>
            <label for="brand">Brand:</label> <input type="text" name="brand"><br>
            <label for="description">Description:</label> <input type="text" name="description"><br>
            <input type="submit" value="Add Shoe">
        </form>
    </div>   
    <jsp:include page="bootstrapFoot.jsp" />
</body>
</html>