<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Admin</title>
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
<style>
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
body {
  /* background-image: url("https://img.freepik.com/premium-photo/group-pets-posing-around-border-collie-dog-cat-ferret-rabbit-bird-fish-rodent_191971-22249.jpg?w=826" ); */
  background-image: url("https://img.freepik.com/free-vector/cute-pets-illustration_53876-112522.jpg?w=2000"); 
  background-height: 786px;
  background-width: 1366px;
	background-attachment: fixed;
  background-size: cover;
}
table,th, td {
  table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

}
th {
  background-color: #04AA6D;
  color: white;
}
td{
	backgoung-colour: #c4f5dc;
}
</style>
</head>
<body>
<div id="root" align="center">
		<div id="form">
			<form:form action="updateadmindetain" method="post" modelAttribute="updateadmin">
				<div>
					<label for="adminName">Name</label>
					<div>
						<form:input path="adminName" 
						title="Name can't be empty"
						pattern="^[A-Za-z]\\w{3,20}$" required="true" placeholder="Enter admin name"/>
					</div>
					<form:errors path="adminName" cssClass="text-danger" />
				</div>
				<div>
					<label for="adminPassword">Password</label>
					<div>
						<form:input path="adminPassword" 
						title='password atleast have letter, one number, one special character and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true" placeholder="Password "/>
					</div>
					<form:errors path="adminPassword" cssClass="text-danger" />
				</div>
				<br>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>