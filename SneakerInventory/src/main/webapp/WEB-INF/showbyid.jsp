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
	<jsp:include page="bootstraphead.jsp" />
	<h1>Shoe Details</h1>
	<jsp:include page="navbar.jsp"></jsp:include>
	<link rel="stylesheet" href="CSS/style.css">
	<div>
		<table class="table table-hover table-md thead-dark tbody-grey table-striped"></table>


			<table class="table table-striped table-hover">
				<thead >
					<tr>
						<th>Id</th>
						<th>Style</th>
						<th>Gender</th>
						<th>Size</th>
						<th>Price</th>
						<th>Brand</th>
						<th>Description</th>
						<th>Delete</th>
						<th>Update</th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${shoes.id}</td>
						<td>${shoes.style }</td>
						<td>${shoes.gender }</td>
						<td>${shoes.size }</td>
						<td>${shoes.price }</td>
						<td>${shoes.brand }</td>
						<td>${shoes.description }</td>
						<td><form action="deleted.do">
								<input type="hidden" name="id" value="${shoes.id }" />
								<button class="btn btn-danger" type="submit">Delete</button>
							</form></td>
						<td><form action="updatedShoe.do">
								<input type="hidden" name="id" value="${shoes.id }" />
								<button class="btn btn-warning" type="submit">Update</button>
							</form></td>
					</tr>
				</tbody>
			</table>
			</div>
			<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>