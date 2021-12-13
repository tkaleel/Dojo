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
<title>Dojo</title>
</head>
<body>
<div class="container mt-5">
<h1>${dojo.name}</h1>
<h3>Ninjas attending this Dojo</h2>
<ul>
	<c:forEach var="ninja" items="${dojo.ninjas }">
	<li>${ninja.firstName } ${ninja.lastName }, ${ninja.age }</li>
	</c:forEach>
</ul>
</div>
</body>
</html>