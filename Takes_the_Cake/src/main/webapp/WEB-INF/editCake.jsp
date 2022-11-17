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
<title>Edit Your Cake</title>
<link rel="stylesheet" type="text/css" href="/css/makeaCake.css">
</head>
<body>
<div class="cake-form-container">
	<div>
		<h1>Edit Cake</h1>
	</div>
	
	<div class="form-container">
		<form:form action="/edit-a-cake" modelAttribute="editCake" class="cake-form">
			<input type="hidden" name="_method" value="put"/>
			
			<p>
				<form:errors path="name" />
				<form:label for="name" path="name">Name:</form:label>
				<form:input type="text" path="name" />
			</p>
			<p>
				<form:errors path="description" />
				<form:label for="description" path="description">Description:</form:label>
				<form:input type="text" path="description" class="cake-description" />
			</p>
			<p>
				<form:errors path="user" />
				<form:input type="hidden" path="user" value="${user.id}" />
			</p>
			
			<input type="submit" value="Submit Edit" />
		</form:form>
		
		<a href="/home">Cancel</a>
		
		
	</div>
</div>
</body>
</html>