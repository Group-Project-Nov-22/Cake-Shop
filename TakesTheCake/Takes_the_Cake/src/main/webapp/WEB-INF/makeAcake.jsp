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
<title>Insert title here</title>
</head>
<body>
	
	
	<h1>Cooking By The Book</h1>
		<form:form action="/make-a-cake" modelAttribute="newCake" class="">
			<p>
				<form:errors path="name"/>
				<form:label for="name" path="name">Name:</form:label>
				<form:input type="text" path="name"/>
			</p>
			<p>
				<form:errors path="description"/>
				<form:label for="description" path="description">Description:</form:label>
				<form:input type="text" path="description"/>
			</p>
			<p>
				<form:errors path="user"/>
				<form:input type="hidden" path="user" value="${user.id}"/>
			</p>
			<p>
				<input type="submit" value="Make A Cake"/>
			</p>
		</form:form>
		<a href="/home">Cancel</a>
</body>
</html>