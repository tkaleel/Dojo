<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Create Dojo</title>
</head>
<body>
	<div class="container mt-5">
		<h1>Add a Dojo</h1>
		<form:form action="/dojos/add" method="post" modelAttribute="dojo"
			class="form-control">
			<div>
				<form:label path="name" class="form-label">Dojo Name</form:label>
				<form:input path="name" type="text" class="form-control" />
				<form:errors path="name" class="text-danger" />
			</div>
			<button class="btn btn-primary">Add a Dojo</button>
		</form:form>
	</div>

</body>
</html>