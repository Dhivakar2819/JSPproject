<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Pet</title>
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
<div id="root" align="center">
		<div id="form" align="center">
			<form:form action="" method="post" modelAttribute="getpetid" >
				<table><tr>
				<td>
					<label for="petType">Pet Type</label>
					
						<form:input path="petType" readonly="true"/>
					</td>
				
				<td>
					<label for="petName">Pet Name</label>
					
						<form:input path="petName" readonly="true"/></td></tr>
					</table>
			</form:form>
		</div>
	<div id="vaccinelist" align="center">
		<table align="center">
			<thead>
				<tr align="center">
					<th>Update Vaccine date</th>
					<th>Delete Vaccine Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="vdate" items="${vaccinelist}">
					<tr>
						<td>${vdate.vaccineDate}</td>
						<td><a href="/vaccinedate/updateformvaccinedate?id=${vdate.petId}&vid=${vdate.vaccineId}">Update</a></td>
						<td><a href="/vaccinedate/deletevaccinedate?id=${vdate.petId}&vid=${vdate.vaccineId}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/vaccinedate/addformvaccinedate">Add vaccine Date</a>
		<a href="/vaccine/vaccinelist">Vaccine Id Details</a>
	</div></div>
</body>
</html>