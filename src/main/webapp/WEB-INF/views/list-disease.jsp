<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Disease List</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Disease Id</th>
					<th>Disease Name</th>
					<th>Medicine</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="disease" items="${alldisease}">
					<tr>
						<td>${disease.id}</td>
						<td>${disease.diseaseName}</td>
						<td>${disease.medicine}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>