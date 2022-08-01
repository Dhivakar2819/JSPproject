<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Breed List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Breed Id</th>
					<th>Breed Type</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="breed" items="${allbreed}">
					<tr>
						<td>${breed.id}</td>
						<td>${breed.breedType}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>