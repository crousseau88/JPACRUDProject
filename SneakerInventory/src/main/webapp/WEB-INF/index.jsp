<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sneaker Inventory Tracking</title>
<jsp:include page="bootstraphead.jsp" />
</head>
<body>
<link rel="stylesheet" href="CSS/style.css">
	<jsp:include page="navbar.jsp"></jsp:include>
	<main class="container-fluid">
		<h1>SNEAKER C.R.U.D</h1>
		<form action="getSneaker.do" method="GET">
			<h4>ShoeStyle:</h4> <input class="form-control" type="text" name="style" /> <input
				class="btn btn-primary" type="submit" value="Search by Style" />
		</form>
<form action="getId.do" method="GET">
			<h4>ShoeID:</h4> <input class="form-control" type="number" name="id" /> <input
				class="btn btn-primary" type="submit" value="Search by ID" />
		</form> <br>
		
		
		<form action="addShoe.do" method="GET">
				<input class="btn btn-success" type="submit" value="AddShoe" />
		</form>
		<br>
		<form action="showInventory.do" method="GET">
				<input class="btn btn-warning" type="submit" value="View All Inventory" />
		</form>
		
	</main>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>