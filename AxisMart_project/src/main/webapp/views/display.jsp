<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>display page</title>
</head>
<body>

	<jsp:include page="navbar.jsp"></jsp:include>


	<h1>display page</h1>
	<table class="table table-bordered" , style="text-align: center;">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Name</th>
				<th scope="col">Price</th>
				<th scope="col">Quantity</th>
				<th scope="col">category</th>
				<th scope="col">Action</th>

			</tr>
		</thead>
		<tbody>


			<c:forEach var="p" items="${product}">
				<tr>

					<td scope="row">${p.pid}</td>
					<td>${p.name}</td>
					<td>${p.price}</td>
					<td>${p.quantity}</td>
					<td>${p.category}</td>
					<td><a href="view-product?pid=${p.pid}"class="btn btn-warning" >Update</a> &nbsp; <a
						href="delete-product?pid=${p.pid}" class="btn btn-danger" onclick="alert('product deleted')">Delete</a></td>

				</tr>
			</c:forEach>

		</tbody>
	</table>
</body>
</html>