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
	<div class="container">
		<div class="form-container">
			<div class="title">
				<h1>Edit The Cake!</h1>
			</div>
			
				<form:form action="/cakes/edit/form/${cake.id}" modelAttribute="cake" class="cake-form">
						<h3 class="cake">
							<form:label for="name" path="name" class="name-label">Cake Name:</form:label>
							<form:input type="text" path="name" class="name-input" value="${cake.name}"/>
						</h3>
						<form:errors path="name" />
						
						<h3 class="description">
							<form:label for="description" path="description" class="description-label">Description:</form:label>
							<form:textarea type="text-area" path="description" class="description-textarea" value="${cake.description}"/>
							<br>
						</h3>
						<form:errors path="description" />
						<p>
							<button class="make-cake-btn" type="submit" value="Make A Cake" ><strong>Edit</strong></button>
						</p>
				</form:form>
				<form action="/cakes/${cake.id}/delete" method="post">
					<input type="hidden" name="_method" value="delete">
					<input type="submit" class="make-cake-btn" value="delete">
					
				</form>
					<a class="cancel-btn" href="/home"><strong>cancel</strong></a>
						
		</div>
	</div>
</body>
</html>