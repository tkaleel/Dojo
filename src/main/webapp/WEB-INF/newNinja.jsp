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
<title>New Ninja</title>
</head>
<body>
	<div class="container mt-5">
		<h1>Add a Ninja</h1>
		<form:form action="/ninjas/add" method="post" modelAttribute="ninja"
			class="form-control">
			<div>
				<form:label path="firstName" class="form-label">First Name</form:label>
				<form:input path="firstName" type="text" class="form-control" />
				<form:errors path="firstName" class="text-danger" />
			</div>
			<div>
				<form:label path="lastName" class="form-label">Last Name</form:label>
				<form:input path="lastName" type="text" class="form-control" />
				<form:errors path="lastName" class="text-danger" />
			</div>
			<div>
				<form:label path="age" class="form-label">Age</form:label>
				<form:input path="age" type="number" class="form-control" />
				<form:errors path="age" class="text-danger" />
			</div>
			<div>
				<form:label path="dojo" class="form-label">Dojo</form:label>
				<form:select path="dojo" class="form-control">
					<c:forEach var="oneDojo" items="${dojos }">
						<form:option value="${oneDojo.id }">${oneDojo.name} </form:option>
					</c:forEach>
				</form:select>
				<form:errors path="dojo" class="text-danger" />

			</div>
			<button class="btn btn-primary">Add a Ninja</button>
		</form:form>

	</div>
</body>
</html>