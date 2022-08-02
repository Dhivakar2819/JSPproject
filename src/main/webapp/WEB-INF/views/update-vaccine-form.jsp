<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Vaccine</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="updatevaccines" method="post" modelAttribute="updatevaccine">
				<div>
					<label for="vaccine_id">Vaccine Id</label>
					<div>
						<form:input path="vaccine_id" readonly="true"
						 />
					</div>
				</div>
				<div>
					<label for="vaccineName">Vaccine Name</label>
					<div>
						<form:input path="vaccineName" />
					</div>
				</div>
				<div>
					<form:button>Update New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>