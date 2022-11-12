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
<title>Login and Registration</title>
</head>
<body>
	<h1>Takes The Cake</h1>
	
	<div>
		<h2>Register</h2>
		<form:form action="/register" modelAttribute="newUser">
			<p>
				<form:errors path="name"/>
				<form:label for="name" path="name">Name:</form:label>
				<form:input type="text" path="name"/>
			</p>
			<p>
				<form:errors path="email"/>
				<form:label for="email" path="email">Email:</form:label>
				<form:input type="text" path="email"/>
			</p>
			<p>
				<form:errors path="password"/>
				<form:label for="password" path="password">Password:</form:label>
				<form:input type="text" path="password"/>
			</p>
			<p>
				<form:errors path="confirm"/>
				<form:label for="confirm" path="confirm">Confirm Password:</form:label>
				<form:input type="text" path="confirm"/>
			</p>
			<p>
				<input type="submit" value="Register"/>
			</p>
		</form:form>
	</div>
	
	<div>
		<h2>Login</h2>
		<form:form action="/login" modelAttribute="newLogin">
			<p>
				<form:errors path="email"/>
				<form:label for="email" path="email">Email:</form:label>
				<form:input type="text" path="email"/>
			</p>
			
			<p>
				<form:errors path="password"/>
				<form:label for="password" path="password">Password:</form:label>
				<form:input type="text" path="password"/>
			</p>
			
			<p>
				<input type="submit" value="Login"/>
			</p>
		</form:form>
	</div>
</body>
</html>