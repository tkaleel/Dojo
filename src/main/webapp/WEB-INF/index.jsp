<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Dash</title>
</head>
<body>
<div class="container mt-5">
	<a href="/dojos/add"> Add a Dojo</a>
	<a href="/ninjas/add">Add a Ninja</a>
	<div>
		<table class="table table-striped">
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
				<th>Dojo</th>
			</tr>
			<c:forEach var="ninja" items="${ninjas }">
			<tr>
				<td>${ninja.id }</td>
				<td>${ninja.firstName }</td>
				<td>${ninja.lastName }</td>
				<td>${ninja.age }</td>
				<td><a href="/dojos/${ninja.dojo.id }">${ninja.dojo.name }</a></td>
				
				
			</tr>
			</c:forEach>
						
		</table>
	</div>

</div>
</body>
</html>