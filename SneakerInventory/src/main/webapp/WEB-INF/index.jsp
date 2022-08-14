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
	<jsp:include page="navbar.jsp"></jsp:include>
	<main class="container-fluid">
		<h1>Shoe Inventory</h1>
		<form action="getSneaker.do" method="GET">
			ShoeStyle: <input class="form-control" type="text" name="style" /> <input
				class="btn btn-primary" type="submit" value="Show Sneaker" />
		</form>
<form action="getId.do" method="GET">
			ShoeID: <input class="form-control" type="text" name="style" /> <input
				class="btn btn-primary" type="submit" value="Show Sneaker" />
		</form>
		<c:choose>
			<c:when test="${not empty shoes }">
				<table class="table table-striped table-hover">
					<thead class="table-dark">
						<tr>
							<th>Id</th>
							<th>Style</th>
							<th>Gender</th>
							
						</tr>
					</thead>
					<tbody>
						<c:forEach var="shoes" items="${shoes }">
							<tr>
								<td>${shoes.id}</td>
								<td>${shoes.style }</td>
								<td>${shoes.gender }</td>
	
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:when>
			<c:otherwise>
				<h3>No shoes found</h3>
			</c:otherwise>
		</c:choose>
	</main>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>