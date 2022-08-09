<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Breed List</title>
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
  background-image: url("https://img.freepik.com/free-vector/cute-pets-illustration_53876-112522.jpg?w=2000"); 
  background-height: 786px;
  background-width: 1366px;
	background-attachment: fixed;
  background-size: cover;
}
table             { 
  border-spacing: 1; 
  border-collapse: collapse; 
  background:white;
  border-radius:6px;
  overflow:hidden;
  max-width:1000px; 
  width:100%;
  margin:0 auto;
  position:relative;
  front-size:15px;
  padding:15px;
  }
  th {
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>
	<div id="table root" align ="center">
		<table>
			<thead>
				<tr>
					<th>Breed Id</th>
					<th>Breed Type</th>
					<th>Update</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="breed" items="${allbreeds}">
					<tr align="center">
						<td>${breed.id}</td>
						<td>${breed.breedType}</td>
						<td><a href="/breed/updatebreed?brid=${breed.id}">Update</a></td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div><a href="/breed/addbreed"><button>Add</button></a></div>
	</div>
</body>
</html>