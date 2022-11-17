<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/makeACake.css">
<title>Make A Cake</title>
</head>
<body>
	<div class="container">
		<div class="form-container">
			<div class="title">
				<h1>Add A Cake!</h1>
			</div>
			<form:form action="/make-a-cake" modelAttribute="newCake" class="cake-form">
				<h3>
					<form:errors path="name" />
					<form:label for="name" path="name" class="name-label">Cake Name:</form:label>
					<br>
					<form:input type="text" path="name" class="name-input"/>
				</h3>
				<h3>
					<form:errors path="description" />
					<form:label for="description" path="description" class="description-label">Description:</form:label>
					<br>
					<form:input type="textarea" path="description" class="description-input" />
				</h3>
				<p>
					<form:errors path="user" />
					<form:input type="hidden" path="user" value="${user.id}" />
				</p>
				<p>
					<button type="submit" value="Make A Cake" /></button>
				</p>
			</form:form>
			<a href="/home">Cancel</a>
		</div>
	</div>
</body>
</html>